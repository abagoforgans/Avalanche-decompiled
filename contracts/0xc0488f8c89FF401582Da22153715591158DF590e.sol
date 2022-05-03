contract main {




// =====================  Runtime code  =====================


#
#  - sub_22b0adfa(?)
#  - sub_2c6ea668(?)
#  - sub_b8bec783(?)
#  - sub_c485f8d0(?)
#
function _fallback() payable {
    revert
}

function sub_d07cbf8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(arg1):
        return 1
    mem[132] = 0, mem[132 len 28]
    staticcall address(arg1).mem[132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            mem[168] = 0, mem[168 len 28]
            staticcall address(arg1).mem[168 len 4] with:
                    gas gas_remaining wei
            if not ext_call.success:
                return 1
    else:
        if not ext_call.success:
            mem[ceil32(return_data.size) + 169] = 0, mem[ceil32(return_data.size) + 169 len 28]
            staticcall address(arg1).mem[ceil32(return_data.size) + 169 len 4] with:
                    gas gas_remaining wei
            if not ext_call.success:
                return 1
    return 0
}

function sub_6132b7d9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_50] == mem[_50 + 12 len 20]
            require ext_code.size(mem[_50 + 12 len 20])
            if mem[_50 + 12 len 20] != 0x10908c875d865c66f271f5d3949848971c9595c9:
                staticcall mem[_50 + 12 len 20].allPairsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _62 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_62] == mem[_62]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_62]
            else:
                staticcall mem[_50 + 12 len 20].allPoolsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_63] == mem[_63]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_63]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[7518 len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_51] == mem[_51 + 12 len 20]
            require ext_code.size(mem[_51 + 12 len 20])
            if mem[_51 + 12 len 20] != 0x10908c875d865c66f271f5d3949848971c9595c9:
                staticcall mem[_51 + 12 len 20].allPairsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == mem[_64]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_64]
            else:
                staticcall mem[_51 + 12 len 20].allPoolsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == mem[_65]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_65]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
