contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getLpInfo(address[][] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 3 * arg1.length > test266151307():
        revert with 0, 65
    mem[96] = 3 * arg1.length
    mem[64] = (32 * 3 * arg1.length) + 128
    if not 3 * arg1.length:
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 0 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 1 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 2 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)])
            _224 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_224 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_224 + 36 len 28]
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)].mem[_224 + 32 len 4] with:
                    gas 16000 wei
                   args mem[_224 + 36 len mem[_224] - 4]
            if 1 != ext_call.success:
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = ext_call.return_data[0]
            mem[_224 + 72] = address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            mem[_224 + 36] = 36
            mem[64] = _224 + 104
            mem[_224 + 68] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)].0x70a08231 with:
                    gas 16000 wei
                   args 0 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64, 0
            if 1 != ext_call.success:
                if s + 1 == -1:
                    revert with 0, 17
                if s + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * s + 1) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s + 1 == -1:
                        revert with 0, 17
                    if s + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 1) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s + 1 == -1:
                        revert with 0, 17
                    if s + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 1) + 128] = ext_call.return_data[0]
            mem[_224 + 140] = address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            mem[_224 + 104] = 36
            mem[64] = _224 + 172
            mem[_224 + 136] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)].0x70a08231 with:
                    gas 16000 wei
                   args 0 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64, 0
            if 1 != ext_call.success:
                if s + 2 == -1:
                    revert with 0, 17
                if s + 2 >= mem[96]:
                    revert with 0, 50
                mem[(32 * s + 2) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s + 2 == -1:
                        revert with 0, 17
                    if s + 2 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 2) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s + 2 == -1:
                        revert with 0, 17
                    if s + 2 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 2) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 3
            continue 
    else:
        mem[128 len 32 * 3 * arg1.length] = call.data[calldata.size len 32 * 3 * arg1.length]
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 0 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 1 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if 2 >= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)])
            _226 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_226 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_226 + 36 len 28]
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)].mem[_226 + 32 len 4] with:
                    gas 16000 wei
                   args mem[_226 + 36 len mem[_226] - 4]
            if 1 != ext_call.success:
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = ext_call.return_data[0]
            mem[_226 + 72] = address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            mem[_226 + 36] = 36
            mem[64] = _226 + 104
            mem[_226 + 68] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 100)].0x70a08231 with:
                    gas 16000 wei
                   args 0 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64, 0
            if 1 != ext_call.success:
                if s + 1 == -1:
                    revert with 0, 17
                if s + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * s + 1) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s + 1 == -1:
                        revert with 0, 17
                    if s + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 1) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s + 1 == -1:
                        revert with 0, 17
                    if s + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 1) + 128] = ext_call.return_data[0]
            mem[_226 + 140] = address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)])
            mem[_226 + 104] = 36
            mem[64] = _226 + 172
            mem[_226 + 136] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64
            staticcall cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 132)].0x70a08231 with:
                    gas 16000 wei
                   args 0 or address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)]) << 64, 0
            if 1 != ext_call.success:
                if s + 2 == -1:
                    revert with 0, 17
                if s + 2 >= mem[96]:
                    revert with 0, 50
                mem[(32 * s + 2) + 128] = 0
            else:
                if 32 != return_data.size:
                    if s + 2 == -1:
                        revert with 0, 17
                    if s + 2 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 2) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if s + 2 == -1:
                        revert with 0, 17
                    if s + 2 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s + 2) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 3
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
