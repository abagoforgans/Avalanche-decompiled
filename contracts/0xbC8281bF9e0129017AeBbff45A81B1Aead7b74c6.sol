contract main {




// =====================  Runtime code  =====================


address owner;
uint8 contractStatus; offset 160
address stor1;
address sub_dae6bd1dAddress;
address sub_b9c55241Address;
address sub_8898009dAddress;
address factoryAddress;

function sub_8898009d(?) {
    return sub_8898009dAddress
}

function owner() {
    return owner
}

function getFactoryAddress() {
    return factoryAddress
}

function sub_b9c55241(?) {
    if contractStatus:
        revert with 0, 'Contract Paused'
    return sub_b9c55241Address
}

function getContractStatus() {
    return contractStatus
}

function sub_dae6bd1d(?) {
    return sub_dae6bd1dAddress
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

function sub_32495ce1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_8898009dAddress = address(arg1)
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function swap(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if contractStatus:
        revert with 0, 'Contract Paused'
    if not arg1:
        revert with 0, 'Invalid A token address.'
    if not arg2:
        revert with 0, 'Invalid B token address.'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg3:
        revert with 0, 'Insufficient balance of A token.'
    if arg3 <= 0:
        revert with 0, 'Invalid amount'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg3
    call arg1.0x23b872dd with:
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
    mem[(4 * ceil32(return_data.size)) + 128] = arg1
    if arg1 == sub_8898009dAddress:
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        if arg3 and 999 > -1 / arg3:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 999 * arg3 / 1000
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 999 * arg3 / 1000, 0, 160, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    else:
        if arg2 == sub_8898009dAddress:
            mem[(4 * ceil32(return_data.size)) + 160] = arg2
            if arg3 and 999 > -1 / arg3:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 999 * arg3 / 1000
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 999 * arg3 / 1000, 0, 160, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        else:
            mem[(4 * ceil32(return_data.size)) + 160] = sub_8898009dAddress
            mem[(4 * ceil32(return_data.size)) + 192] = arg2
            if arg3 and 999 > -1 / arg3:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = 999 * arg3 / 1000
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 999 * arg3 / 1000, 0, 160, msg.sender, block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 < 999 * arg3 / 1000:
        revert with 'NH{q', 17
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_dae6bd1dAddress, arg3 - (999 * arg3 / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
