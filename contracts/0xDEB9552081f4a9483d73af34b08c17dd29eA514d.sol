contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_170ee90c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if not arg3:
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = idx
            else:
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_28] == mem[_28 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = idx
            else:
                _29 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_29] == mem[_29 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
