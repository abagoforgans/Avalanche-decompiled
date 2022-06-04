contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
