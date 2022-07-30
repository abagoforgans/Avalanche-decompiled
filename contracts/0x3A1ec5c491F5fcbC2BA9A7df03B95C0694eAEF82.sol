contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_63eef93d(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _14 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_12)
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _14
        require ext_code.size(arg1)
        call arg1.lock(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_12), _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
