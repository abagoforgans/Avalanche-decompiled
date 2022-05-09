contract main {




// =====================  Runtime code  =====================


const deposit = 1


address owner;
uint256 tokenSendFee;
uint256 ethSendFee;

function ethSendFee() {
    return ethSendFee
}

function owner() {
    return owner
}

function tokenSendFee() {
    return tokenSendFee
}

function destroy(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function getbalance(address arg1) {
    return eth.balance(arg1)
}

function setEthFee(uint256 arg1) {
    require msg.sender == owner
    ethSendFee = arg1
    return 1
}

function setTokenFee(uint256 arg1) {
    require msg.sender == owner
    tokenSendFee = arg1
    return 1
}

function withdrawEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function bulkSendEth(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] + s
        continue 
    require ethSendFee + (_19 * None) >= _19 * None
    require ethSendFee + (_19 * None) <= msg.value
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if ethSendFee + (_19 * None) < msg.value:
        require ethSendFee + (_19 * None) <= msg.value
        call msg.sender with:
           value msg.value - ethSendFee - (_19 * None) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function bulkSendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    s = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < arg3.length
        require mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
        continue 
    require msg.value >= tokenSendFee
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require _27 * None <= ext_call.return_data[0]
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _45 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _49 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_45)
        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _49
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_45), _49
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    if msg.value > tokenSendFee:
        require tokenSendFee <= msg.value
        call msg.sender with:
           value msg.value - tokenSendFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
