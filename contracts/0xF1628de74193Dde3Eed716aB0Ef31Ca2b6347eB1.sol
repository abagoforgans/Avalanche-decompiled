contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d597bafb(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require test266151307() >= cd[100]
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require test266151307() >= cd[132]
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require cd[164] == address(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    mem[100] = 128
    mem[228] = ('cd', 36).length
    mem[260 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 260] = 0
    mem[132] = cd[68]
    mem[164] = ceil32(('cd', 36).length) + 160
    mem[ceil32(('cd', 36).length) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + 292
    u = ceil32(('cd', 36).length) + 292
    while idx < ('cd', 100).length:
        mem[u] = t + -ceil32(('cd', 36).length) - 292
        require cd[s] < calldata.size + -cd[100] - 131
        require cd[(cd[100] + cd[s] + 36)] == address(cd[(cd[100] + cd[s] + 36)])
        mem[t] = address(cd[(cd[100] + cd[s] + 36)])
        mem[t + 32] = cd[(cd[100] + cd[s] + 68)]
        require cd[(cd[100] + cd[s] + 100)] < calldata.size + -cd[100] + -cd[s] - 67
        require cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)] <= test266151307()
        require cd[100] + cd[s] + 36 <= calldata.size - cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)]
        mem[t + 64] = 96
        mem[t + 96] = cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)]
        mem[t + 128 len cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)]] = call.data[cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 68 len cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)]]
        mem[cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)] + t + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 100)] + 36)]) + 128
        u = u + 32
        continue 
    mem[196] = ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 192
    mem[ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 292] = ('cd', 132).length
    mem[ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 324 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 324] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x1e86da2a with:
         gas gas_remaining wei
        args 0, mem[128 len 68], ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 192, mem[228 len ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + 64], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + (128 * ('cd', 100).length) + ('cd', 132).length + 324 len ceil32(('cd', 132).length) - ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 196).length
    mem[64] = (32 * ('cd', 196).length) + 128
    if not ('cd', 196).length:
        idx = 0
        while idx < ('cd', 196).length:
            require cd[((32 * idx) + cd[196] + 36)] == address(cd[((32 * idx) + cd[196] + 36)])
            if not address(cd[((32 * idx) + cd[196] + 36)]):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = eth.balance(cd[164])
            else:
                if idx >= ('cd', 196).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[196] + 36)] == address(cd[((32 * idx) + cd[196] + 36)])
                mem[mem[64] + 4] = address(cd[164])
                require ext_code.size(address(cd[((32 * idx) + cd[196] + 36)]))
                staticcall address(cd[((32 * idx) + cd[196] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[164])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _60 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_60]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 196).length] = call.data[calldata.size len 32 * ('cd', 196).length]
        idx = 0
        while idx < ('cd', 196).length:
            require cd[((32 * idx) + cd[196] + 36)] == address(cd[((32 * idx) + cd[196] + 36)])
            if not address(cd[((32 * idx) + cd[196] + 36)]):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = eth.balance(cd[164])
            else:
                if idx >= ('cd', 196).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[196] + 36)] == address(cd[((32 * idx) + cd[196] + 36)])
                mem[mem[64] + 4] = address(cd[164])
                require ext_code.size(address(cd[((32 * idx) + cd[196] + 36)]))
                staticcall address(cd[((32 * idx) + cd[196] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[164])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_61]
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
