contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function aggregate(address[] arg1, address[] arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1.length and arg2.length > -1 / arg1.length:
        revert with 0, 17
    if arg1.length * arg2.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length * arg2.length
    mem[64] = (32 * arg1.length * arg2.length) + 128
    if not arg1.length * arg2.length:
        idx = 0
        while idx < arg1.length:
            s = 0
            t = 0
            while s < arg2.length:
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                _62 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                _63 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_62 + 68 len arg3.length] = arg3[all]
                mem[arg3.length + _62 + 68] = 0
                mem[_63 + 32] = Mask(32, 224, sha3(arg3[all])) or mem[_63 + 36 len 28]
                staticcall cd[((32 * s) + arg2 + 36)].mem[_63 + 32 len 4] with:
                        gas 16000 wei
                       args mem[_63 + 36 len mem[_63] - 4]
                if 1 != ext_call.success:
                    if t == -1:
                        revert with 0, 17
                    if t >= mem[96]:
                        revert with 0, 50
                    mem[(32 * t) + 128] = 0
                else:
                    if 32 != return_data.size:
                        if t == -1:
                            revert with 0, 17
                        if t >= mem[96]:
                            revert with 0, 50
                        mem[(32 * t) + 128] = 0
                    else:
                        mem[0] = ext_call.return_data[0]
                        if t == -1:
                            revert with 0, 17
                        if t >= mem[96]:
                            revert with 0, 50
                        mem[(32 * t) + 128] = ext_call.return_data[0]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length * arg2.length] = call.data[calldata.size len 32 * arg1.length * arg2.length]
        idx = 0
        while idx < arg1.length:
            s = 0
            t = 0
            while s < arg2.length:
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                _64 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                _65 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_64 + 68 len arg3.length] = arg3[all]
                mem[arg3.length + _64 + 68] = 0
                mem[_65 + 32] = Mask(32, 224, sha3(arg3[all])) or mem[_65 + 36 len 28]
                staticcall cd[((32 * s) + arg2 + 36)].mem[_65 + 32 len 4] with:
                        gas 16000 wei
                       args mem[_65 + 36 len mem[_65] - 4]
                if 1 != ext_call.success:
                    if t == -1:
                        revert with 0, 17
                    if t >= mem[96]:
                        revert with 0, 50
                    mem[(32 * t) + 128] = 0
                else:
                    if 32 != return_data.size:
                        if t == -1:
                            revert with 0, 17
                        if t >= mem[96]:
                            revert with 0, 50
                        mem[(32 * t) + 128] = 0
                    else:
                        mem[0] = ext_call.return_data[0]
                        if t == -1:
                            revert with 0, 17
                        if t >= mem[96]:
                            revert with 0, 50
                        mem[(32 * t) + 128] = ext_call.return_data[0]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
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
