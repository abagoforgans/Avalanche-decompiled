contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
address tokenAddress;
address pangolinRouterAddress;
uint256 nonce;
mapping of uint8 stor5;
uint256 balance;
uint256 fees;
address sub_0385ebfeAddress;
address wavaxAddress;
address sporeAddress;
array of address path;

function sub_0385ebfe(?) {
    return sub_0385ebfeAddress
}

function wavax() {
    return wavaxAddress
}

function pangolinRouter() {
    return pangolinRouterAddress
}

function owner() {
    return owner
}

function processedNonces(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function fees() {
    return fees
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1]
}

function nonce() {
    return nonce
}

function balance() {
    return balance
}

function spore() {
    return sporeAddress
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
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

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fees = arg1
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

function mint(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if stor5[arg3]:
        revert with 0, 'transfer already processed'
    stor5[arg3] = 1
    if balance < arg2:
        revert with 'NH{q', 17
    balance -= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x9cfa33fa: msg.sender, address(arg1), arg2, block.timestamp, arg3, 0
    emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3, 0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < fees:
        revert with 0, 'Fees too low'
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg1:
        if balance > -1:
            revert with 'NH{q', 17
        emit 0x9cfa33fa: msg.sender, msg.sender, 0, block.timestamp, nonce, 0
        emit 0x0: msg.sender, msg.sender, 0, block.timestamp, nonce, 0
    else:
        if arg1 and 94 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if 94 * arg1 / arg1 != 94:
            revert with 0, 'SafeMath: multiplication overflow'
        if balance > -(94 * arg1 / 100) - 1:
            revert with 'NH{q', 17
        balance += 94 * arg1 / 100
        emit 0x9cfa33fa: msg.sender, msg.sender, 94 * arg1 / 100, block.timestamp, nonce, 0
        emit 0x0: msg.sender, msg.sender, 94 * arg1 / 100, block.timestamp, nonce, 0
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
}

function sub_187f29b2(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if stor5[arg3]:
        revert with 0, 'transfer already processed'
    if arg4 >= 100:
        revert with 0, 'percentage >= 100'
    stor5[arg3] = 1
    if balance < arg2:
        revert with 'NH{q', 17
    balance -= arg2
    if 100 < arg4:
        revert with 'NH{q', 17
    if not arg2:
        if not arg2:
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9cfa33fa: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_0385ebfeAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -1001:
                revert with 'NH{q', 17
            if block.timestamp + 1000 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 420
            while idx < path.length:
                mem[t] = path[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(arg1), block.timestamp + 1000, path.length, mem[(2 * ceil32(return_data.size)) + 420 len 32 * path.length]
        else:
            if arg2 and arg4 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * arg4 / arg2 != arg4:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9cfa33fa: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_0385ebfeAddress, arg2 * arg4 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -1001:
                revert with 'NH{q', 17
            if block.timestamp + 1000 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 420
            while idx < path.length:
                mem[t] = path[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2 * arg4 / 100, 0, 160, address(arg1), block.timestamp + 1000, path.length, mem[(2 * ceil32(return_data.size)) + 420 len 32 * path.length]
    else:
        if arg2 and -arg4 + 100 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if (100 * arg2) - (arg4 * arg2) / arg2 != -arg4 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), (100 * arg2) - (arg4 * arg2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9cfa33fa: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_0385ebfeAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -1001:
                revert with 'NH{q', 17
            if block.timestamp + 1000 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 420
            while idx < path.length:
                mem[t] = path[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(arg1), block.timestamp + 1000, path.length, mem[(2 * ceil32(return_data.size)) + 420 len 32 * path.length]
        else:
            if arg2 and arg4 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * arg4 / arg2 != arg4:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), (100 * arg2) - (arg4 * arg2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9cfa33fa: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3, arg4
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_0385ebfeAddress, arg2 * arg4 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -1001:
                revert with 'NH{q', 17
            if block.timestamp + 1000 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 420
            while idx < path.length:
                mem[t] = path[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2 * arg4 / 100, 0, 160, address(arg1), block.timestamp + 1000, path.length, mem[(2 * ceil32(return_data.size)) + 420 len 32 * path.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
