contract main {




// =====================  Runtime code  =====================


address managerAddress;
address _contractAddress;
mapping of uint256 rewards;
mapping of uint256 stor3;
array of uint256 deposits;

function manager() {
    return managerAddress
}

function deposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < deposits.length
    return deposits[arg1]
}

function _contract() {
    return _contractAddress
}

function rewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function _fallback() payable {
    revert
}

function sub_c34a9100(?) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'You are not allowed to do that.'
    _contractAddress = arg1
}

function changeManager(address arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'You are not allowed to do that.'
    managerAddress = arg1
}

function deposit() payable {
    if managerAddress != msg.sender:
        revert with 0, 'You are not allowed to do that.'
    rewards[block.timestamp] = msg.value
    deposits.length++
    deposits[deposits.length] = block.timestamp
}

function rewardsOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < deposits.length:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] >= deposits[idx]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = arg1
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require idx < deposits.length
        mem[0] = deposits[idx]
        mem[32] = 2
        idx = idx + 1
        s = s + (rewards[stor4[idx]] * ext_call.return_data[0] / ext_call.return_data[0])
        continue 
    return s
}

function claim() {
    idx = 0
    s = 0
    while idx < deposits.length:
        mem[0] = msg.sender
        mem[32] = 3
        if stor3[address(msg.sender)] >= deposits[idx]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = msg.sender
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require idx < deposits.length
        mem[0] = deposits[idx]
        mem[32] = 2
        idx = idx + 1
        s = s + (rewards[stor4[idx]] * ext_call.return_data[0] / ext_call.return_data[0])
        continue 
    if s <= 0:
        revert with 0, 'You have nothing to claim'
    idx = 0
    s = 0
    while idx < deposits.length:
        mem[0] = msg.sender
        mem[32] = 3
        if stor3[address(msg.sender)] >= deposits[idx]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = msg.sender
        require ext_code.size(_contractAddress)
        staticcall _contractAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require idx < deposits.length
        mem[0] = deposits[idx]
        mem[32] = 2
        idx = idx + 1
        s = s + (rewards[stor4[idx]] * ext_call.return_data[0] / ext_call.return_data[0])
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(msg.sender)] = block.timestamp
}



}
