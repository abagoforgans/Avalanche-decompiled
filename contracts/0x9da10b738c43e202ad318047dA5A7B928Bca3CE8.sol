contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getBalances(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _42 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _49 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 196] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require ext_code.size(address(_42))
            staticcall address(_42).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_49)
            mem[(64 * arg1.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _47 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _52 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 196] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require ext_code.size(address(_47))
            staticcall address(_47).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_52)
            mem[(64 * arg1.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[(64 * arg1.length) + (32 * arg2.length) + 224 len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + 32], 
}



}
