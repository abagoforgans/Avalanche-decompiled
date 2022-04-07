contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendValue(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.value <= 0:
        revert with 0, 'Invalid value'
    if arg1.length <= 0:
        revert with 0, 'Invalid recivers'
    require arg1.length
    idx = 0
    while idx < arg1.length:
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
