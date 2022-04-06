contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_71817e08(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 1 > !('cd', 4).length:
        revert with 0, 17
    if ('cd', 4).length + 1 > test266151307():
        revert with 0, 65
    if ('cd', 4).length + 1:
        mem[128 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    if ('cd', 4).length >= ('cd', 4).length + 1:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + 128] = block.number
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length + 1:
            revert with 0, 50
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length + 1, data=mem[128 len 32 * ('cd', 4).length + 1])
}

function sub_30d48443(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if 1 > !('cd', 36).length:
        revert with 0, 17
    if ('cd', 36).length + 1 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length + 1
    mem[64] = (32 * ('cd', 36).length + 1) + 128
    if not ('cd', 36).length + 1:
        if ('cd', 36).length >= ('cd', 36).length + 1:
            revert with 0, 50
        mem[(32 * ('cd', 36).length) + 128] = block.number
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_34]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        if ('cd', 36).length >= ('cd', 36).length + 1:
            revert with 0, 50
        mem[(32 * ('cd', 36).length) + 128] = block.number
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_35]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
