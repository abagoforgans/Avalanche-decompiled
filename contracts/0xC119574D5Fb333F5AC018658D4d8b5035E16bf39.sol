contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                39,
                0xfe42616c616e6365436865636b657220646f6573206e6f7420616363657074207061796d656e74,
                mem[203 len 25]
}

function tokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not ext_code.size(arg2):
        return 0
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balances(address[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length * arg2.length <= test266151307()
    if arg1.length * arg2.length:
        mem[128 len 32 * arg1.length * arg2.length] = call.data[calldata.size len 32 * arg1.length * arg2.length]
    idx = 0
    while idx < arg1.length:
        s = 0
        while s < arg2.length:
            if not address(cd[((32 * s) + arg2 + 36)]):
                require s + (idx * arg2.length) < arg1.length * arg2.length
                mem[(32 * s + (idx * arg2.length)) + 128] = 0
            else:
                require idx < arg1.length
                require s < arg2.length
                if not ext_code.size(address(cd[((32 * s) + arg2 + 36)])):
                    require s + (idx * arg2.length) < arg1.length * arg2.length
                    mem[(32 * s + (idx * arg2.length)) + 128] = 0
                else:
                    mem[(32 * arg1.length * arg2.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                    staticcall address(cd[((32 * s) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[(32 * arg1.length * arg2.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require s + (idx * arg2.length) < arg1.length * arg2.length
                    mem[(32 * s + (idx * arg2.length)) + 128] = ext_call.return_data[0]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg1.length * arg2.length) + 128] = 32
    mem[(32 * arg1.length * arg2.length) + 160] = arg1.length * arg2.length
    mem[(32 * arg1.length * arg2.length) + 192 len floor32(arg1.length * arg2.length)] = mem[128 len floor32(arg1.length * arg2.length)]
    return Array(len=arg1.length * arg2.length, data=mem[(32 * arg1.length * arg2.length) + 192 len 32 * arg1.length * arg2.length]), 
}



}
