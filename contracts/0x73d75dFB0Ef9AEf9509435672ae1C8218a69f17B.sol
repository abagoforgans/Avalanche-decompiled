contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendErc20(address arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require 255 >= arg2.length
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _23 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_21)
        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _23
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_21), _23
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 == bool(ext_call.return_data[0])
        idx = idx + 1
        continue 
    return 1
}

function sendEth(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    require 255 >= arg1.length
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    if msg.value - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) <= 0:
        return 1
    call msg.sender with:
       value msg.value - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    revert
}



}
