contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint8 contractStatus; offset 160
address stor2;
address sub_dae6bd1dAddress;
address sub_b9c55241Address;
address sub_f79d3546Address;
address factoryAddress;

function owner() {
    return owner
}

function getFactoryAddress() {
    return factoryAddress
}

function sub_b9c55241(?) {
    return sub_b9c55241Address
}

function getContractStatus() {
    return contractStatus
}

function sub_dae6bd1d(?) {
    return sub_dae6bd1dAddress
}

function sub_f79d3546(?) {
    return sub_f79d3546Address
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_11f706ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractStatus = uint8(arg1)
    emit 0x71a66a33: msg.sender, uint8(arg1)
}

function setFactoryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    factoryAddress = arg1
}

function setManagerWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_dae6bd1dAddress = arg1
}

function sub_bd2aaf1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_f79d3546Address = address(arg1)
}

function setDexRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_b9c55241Address = arg1
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

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xae7bb419: msg.sender, 0, eth.balance(this.address)
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function isPairExists(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall stor2.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return not not ext_call.return_data[12 len 20]
}

function sub_84474ad8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor2.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), sub_f79d3546Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            staticcall stor2.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_f79d3546Address, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return not not ext_call.return_data[12 len 20]
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0, 'Invalid A token address.'
    if not arg2:
        revert with 0, 'Invalid B token address.'
    if arg3 <= 0:
        revert with 0, 'Invalid amount'
    if arg1 == sub_f79d3546Address:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
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
        staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _71 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _68 + (32 * _71) + 32 <= return_data.size
        idx = _68 + 224
        s = ceil32(return_data.size) + 224
        while idx < _68 + (32 * _71) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _71:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    else:
        if arg2 == sub_f79d3546Address:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
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
            staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _70 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
            _73 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _70 + (32 * _73) + 32 <= return_data.size
            idx = _70 + 224
            s = ceil32(return_data.size) + 224
            while idx < _70 + (32 * _73) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _73:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
        else:
            mem[96] = 3
            mem[128] = arg1
            mem[160] = sub_f79d3546Address
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _69 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
            _72 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _69 + (32 * _72) + 32 <= return_data.size
            idx = _69 + 256
            s = ceil32(return_data.size) + 256
            while idx < _69 + (32 * _72) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 2 >= _72:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if contractStatus:
        revert with 0, 'Contract Paused'
    if not arg1:
        revert with 0, 'Invalid A token address.'
    if not arg2:
        revert with 0, 'Invalid B token address.'
    if arg3 <= 0:
        revert with 0, 'Invalid amount'
    if arg4 < 0:
        revert with 0, 'Invalid slippage.'
    if arg4 > 100:
        revert with 0, 'Invalid slippage.'
    mem[100] = msg.sender
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg3:
        revert with 0, 'Insufficient balance of A token.'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg3
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = stor1
    mem[(2 * ceil32(return_data.size)) + 132] = arg3
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg3
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 == sub_f79d3546Address:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        if arg3 and 999 > -1 / arg3:
            revert with 'NH{q', 17
        if 100 < arg4:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0, 'Invalid A token address.'
        if not arg2:
            revert with 0, 'Invalid B token address.'
        if 999 * arg3 / 1000 <= 0:
            revert with 0, 'Invalid amount'
        if arg1 == sub_f79d3546Address:
            mem[(4 * ceil32(return_data.size)) + 192] = 2
            mem[(4 * ceil32(return_data.size)) + 224] = arg1
            mem[(4 * ceil32(return_data.size)) + 256] = arg2
            mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = 999 * arg3 / 1000
            mem[(4 * ceil32(return_data.size)) + 324] = 64
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 224
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _184 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
            _193 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289
            mem[(6 * ceil32(return_data.size)) + 288] = _193
            require _184 + (32 * _193) + 32 <= return_data.size
            idx = (4 * ceil32(return_data.size)) + _184 + 320
            s = (6 * ceil32(return_data.size)) + 320
            while idx < (4 * ceil32(return_data.size)) + _184 + (32 * _193) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _193:
                revert with 'NH{q', 50
            _346 = mem[(6 * ceil32(return_data.size)) + 352]
            if mem[(6 * ceil32(return_data.size)) + 352] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 352]:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 999 * arg3 / 1000
            mem[mem[64] + 36] = (100 * _346) - (arg4 * _346) / 100
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 999 * arg3 / 1000, (100 * _346) - (arg4 * _346) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 < 999 * arg3 / 1000:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = sub_dae6bd1dAddress
            mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_463] == bool(mem[_463])
        else:
            if arg2 == sub_f79d3546Address:
                mem[(4 * ceil32(return_data.size)) + 192] = 2
                mem[(4 * ceil32(return_data.size)) + 224] = arg1
                mem[(4 * ceil32(return_data.size)) + 256] = arg2
                mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 999 * arg3 / 1000
                mem[(4 * ceil32(return_data.size)) + 324] = 64
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 224
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _186 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                _195 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289
                mem[(6 * ceil32(return_data.size)) + 288] = _195
                require _186 + (32 * _195) + 32 <= return_data.size
                idx = (4 * ceil32(return_data.size)) + _186 + 320
                s = (6 * ceil32(return_data.size)) + 320
                while idx < (4 * ceil32(return_data.size)) + _186 + (32 * _195) + 320:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 1 >= _195:
                    revert with 'NH{q', 50
                _348 = mem[(6 * ceil32(return_data.size)) + 352]
                if mem[(6 * ceil32(return_data.size)) + 352] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 352]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 999 * arg3 / 1000
                mem[mem[64] + 36] = (100 * _348) - (arg4 * _348) / 100
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 999 * arg3 / 1000, (100 * _348) - (arg4 * _348) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 < 999 * arg3 / 1000:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = sub_dae6bd1dAddress
                mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == bool(mem[_465])
            else:
                mem[(4 * ceil32(return_data.size)) + 192] = 3
                mem[(4 * ceil32(return_data.size)) + 224] = arg1
                mem[(4 * ceil32(return_data.size)) + 256] = sub_f79d3546Address
                mem[(4 * ceil32(return_data.size)) + 288] = arg2
                mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 999 * arg3 / 1000
                mem[(4 * ceil32(return_data.size)) + 356] = 64
                mem[(4 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (4 * ceil32(return_data.size)) + 224
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 999 * arg3 / 1000, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _185 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
                _194 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321
                mem[(6 * ceil32(return_data.size)) + 320] = _194
                require _185 + (32 * _194) + 32 <= return_data.size
                idx = (4 * ceil32(return_data.size)) + _185 + 352
                s = (6 * ceil32(return_data.size)) + 352
                while idx < (4 * ceil32(return_data.size)) + _185 + (32 * _194) + 352:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 2 >= _194:
                    revert with 'NH{q', 50
                _347 = mem[(6 * ceil32(return_data.size)) + 416]
                if mem[(6 * ceil32(return_data.size)) + 416] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 416]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 999 * arg3 / 1000
                mem[mem[64] + 36] = (100 * _347) - (arg4 * _347) / 100
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 999 * arg3 / 1000, (100 * _347) - (arg4 * _347) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 < 999 * arg3 / 1000:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = sub_dae6bd1dAddress
                mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_464] == bool(mem[_464])
    else:
        if arg2 == sub_f79d3546Address:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = arg1
            mem[(4 * ceil32(return_data.size)) + 160] = arg2
            if arg3 and 999 > -1 / arg3:
                revert with 'NH{q', 17
            if 100 < arg4:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'Invalid A token address.'
            if not arg2:
                revert with 0, 'Invalid B token address.'
            if 999 * arg3 / 1000 <= 0:
                revert with 0, 'Invalid amount'
            if arg1 == sub_f79d3546Address:
                mem[(4 * ceil32(return_data.size)) + 192] = 2
                mem[(4 * ceil32(return_data.size)) + 224] = arg1
                mem[(4 * ceil32(return_data.size)) + 256] = arg2
                mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 999 * arg3 / 1000
                mem[(4 * ceil32(return_data.size)) + 324] = 64
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 224
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _190 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                _199 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289
                mem[(6 * ceil32(return_data.size)) + 288] = _199
                require _190 + (32 * _199) + 32 <= return_data.size
                idx = (4 * ceil32(return_data.size)) + _190 + 320
                s = (6 * ceil32(return_data.size)) + 320
                while idx < (4 * ceil32(return_data.size)) + _190 + (32 * _199) + 320:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 1 >= _199:
                    revert with 'NH{q', 50
                _352 = mem[(6 * ceil32(return_data.size)) + 352]
                if mem[(6 * ceil32(return_data.size)) + 352] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 352]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 999 * arg3 / 1000
                mem[mem[64] + 36] = (100 * _352) - (arg4 * _352) / 100
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 999 * arg3 / 1000, (100 * _352) - (arg4 * _352) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 < 999 * arg3 / 1000:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = sub_dae6bd1dAddress
                mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_469] == bool(mem[_469])
            else:
                if arg2 == sub_f79d3546Address:
                    mem[(4 * ceil32(return_data.size)) + 192] = 2
                    mem[(4 * ceil32(return_data.size)) + 224] = arg1
                    mem[(4 * ceil32(return_data.size)) + 256] = arg2
                    mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 999 * arg3 / 1000
                    mem[(4 * ceil32(return_data.size)) + 324] = 64
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 224
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _192 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                    _201 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 288]) + 289
                    mem[(6 * ceil32(return_data.size)) + 288] = _201
                    require _192 + (32 * _201) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _192 + 320
                    s = (6 * ceil32(return_data.size)) + 320
                    while idx < (4 * ceil32(return_data.size)) + _192 + (32 * _201) + 320:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _201:
                        revert with 'NH{q', 50
                    _354 = mem[(6 * ceil32(return_data.size)) + 352]
                    if mem[(6 * ceil32(return_data.size)) + 352] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 352]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 999 * arg3 / 1000
                    mem[mem[64] + 36] = (100 * _354) - (arg4 * _354) / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 999 * arg3 / 1000, (100 * _354) - (arg4 * _354) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 < 999 * arg3 / 1000:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = sub_dae6bd1dAddress
                    mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_471] == bool(mem[_471])
                else:
                    mem[(4 * ceil32(return_data.size)) + 192] = 3
                    mem[(4 * ceil32(return_data.size)) + 224] = arg1
                    mem[(4 * ceil32(return_data.size)) + 256] = sub_f79d3546Address
                    mem[(4 * ceil32(return_data.size)) + 288] = arg2
                    mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 999 * arg3 / 1000
                    mem[(4 * ceil32(return_data.size)) + 356] = 64
                    mem[(4 * ceil32(return_data.size)) + 388] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 224
                    t = (4 * ceil32(return_data.size)) + 420
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 999 * arg3 / 1000, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _191 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
                    _200 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321
                    mem[(6 * ceil32(return_data.size)) + 320] = _200
                    require _191 + (32 * _200) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _191 + 352
                    s = (6 * ceil32(return_data.size)) + 352
                    while idx < (4 * ceil32(return_data.size)) + _191 + (32 * _200) + 352:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 2 >= _200:
                        revert with 'NH{q', 50
                    _353 = mem[(6 * ceil32(return_data.size)) + 416]
                    if mem[(6 * ceil32(return_data.size)) + 416] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 416]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 999 * arg3 / 1000
                    mem[mem[64] + 36] = (100 * _353) - (arg4 * _353) / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 999 * arg3 / 1000, (100 * _353) - (arg4 * _353) / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 < 999 * arg3 / 1000:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = sub_dae6bd1dAddress
                    mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_470] == bool(mem[_470])
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 3
            mem[(4 * ceil32(return_data.size)) + 128] = arg1
            mem[(4 * ceil32(return_data.size)) + 160] = sub_f79d3546Address
            mem[(4 * ceil32(return_data.size)) + 192] = arg2
            if arg3 and 999 > -1 / arg3:
                revert with 'NH{q', 17
            if 100 < arg4:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'Invalid A token address.'
            if not arg2:
                revert with 0, 'Invalid B token address.'
            if 999 * arg3 / 1000 <= 0:
                revert with 0, 'Invalid amount'
            if arg1 == sub_f79d3546Address:
                mem[(4 * ceil32(return_data.size)) + 224] = 2
                mem[(4 * ceil32(return_data.size)) + 256] = arg1
                mem[(4 * ceil32(return_data.size)) + 288] = arg2
                mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 999 * arg3 / 1000
                mem[(4 * ceil32(return_data.size)) + 356] = 64
                mem[(4 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _187 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
                _196 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321
                mem[(6 * ceil32(return_data.size)) + 320] = _196
                require _187 + (32 * _196) + 32 <= return_data.size
                idx = (4 * ceil32(return_data.size)) + _187 + 352
                s = (6 * ceil32(return_data.size)) + 352
                while idx < (4 * ceil32(return_data.size)) + _187 + (32 * _196) + 352:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 1 >= _196:
                    revert with 'NH{q', 50
                _349 = mem[(6 * ceil32(return_data.size)) + 384]
                if mem[(6 * ceil32(return_data.size)) + 384] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 384]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 999 * arg3 / 1000
                mem[mem[64] + 36] = (100 * _349) - (arg4 * _349) / 100
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 3
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 999 * arg3 / 1000, (100 * _349) - (arg4 * _349) / 100, Array(len=3, data=mem[mem[64] + 196 len 96]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 < 999 * arg3 / 1000:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = sub_dae6bd1dAddress
                mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_466] == bool(mem[_466])
            else:
                if arg2 == sub_f79d3546Address:
                    mem[(4 * ceil32(return_data.size)) + 224] = 2
                    mem[(4 * ceil32(return_data.size)) + 256] = arg1
                    mem[(4 * ceil32(return_data.size)) + 288] = arg2
                    mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 999 * arg3 / 1000
                    mem[(4 * ceil32(return_data.size)) + 356] = 64
                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (4 * ceil32(return_data.size)) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 999 * arg3 / 1000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _189 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
                    _198 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 320]) + 321
                    mem[(6 * ceil32(return_data.size)) + 320] = _198
                    require _189 + (32 * _198) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _189 + 352
                    s = (6 * ceil32(return_data.size)) + 352
                    while idx < (4 * ceil32(return_data.size)) + _189 + (32 * _198) + 352:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _198:
                        revert with 'NH{q', 50
                    _351 = mem[(6 * ceil32(return_data.size)) + 384]
                    if mem[(6 * ceil32(return_data.size)) + 384] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 384]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 999 * arg3 / 1000
                    mem[mem[64] + 36] = (100 * _351) - (arg4 * _351) / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 999 * arg3 / 1000, (100 * _351) - (arg4 * _351) / 100, Array(len=3, data=mem[mem[64] + 196 len 96]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 < 999 * arg3 / 1000:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = sub_dae6bd1dAddress
                    mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_468] == bool(mem[_468])
                else:
                    mem[(4 * ceil32(return_data.size)) + 224] = 3
                    mem[(4 * ceil32(return_data.size)) + 256] = arg1
                    mem[(4 * ceil32(return_data.size)) + 288] = sub_f79d3546Address
                    mem[(4 * ceil32(return_data.size)) + 320] = arg2
                    mem[(4 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = 999 * arg3 / 1000
                    mem[(4 * ceil32(return_data.size)) + 388] = 64
                    mem[(4 * ceil32(return_data.size)) + 420] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (4 * ceil32(return_data.size)) + 452
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 999 * arg3 / 1000, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 452 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _188 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                    _197 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 352]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 999 * arg3 / 1000) >> 32 + 352]) + 353
                    mem[(6 * ceil32(return_data.size)) + 352] = _197
                    require _188 + (32 * _197) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _188 + 384
                    s = (6 * ceil32(return_data.size)) + 384
                    while idx < (4 * ceil32(return_data.size)) + _188 + (32 * _197) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 2 >= _197:
                        revert with 'NH{q', 50
                    _350 = mem[(6 * ceil32(return_data.size)) + 448]
                    if mem[(6 * ceil32(return_data.size)) + 448] and -arg4 + 100 > -1 / mem[(6 * ceil32(return_data.size)) + 448]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 999 * arg3 / 1000
                    mem[mem[64] + 36] = (100 * _350) - (arg4 * _350) / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 999 * arg3 / 1000, (100 * _350) - (arg4 * _350) / 100, Array(len=3, data=mem[mem[64] + 196 len 96]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 < 999 * arg3 / 1000:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = sub_dae6bd1dAddress
                    mem[mem[64] + 36] = arg3 - (999 * arg3 / 1000)
                    call arg1.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_467] == bool(mem[_467])
}



}
