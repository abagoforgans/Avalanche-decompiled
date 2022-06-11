contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a4a8ff53(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 2 * ('cd', 4).length <= test266151307()
    mem[96] = 2 * ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 128
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _115 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_115 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_115 + 36 len 28]
            s = 0
            while s < mem[_115]:
                mem[s + _115 + 36] = mem[_115 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_115]) <= mem[_115]:
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_115] + _115 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if mem[96] <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require mem[96] >= 64
                            require mem[128] == mem[146 len 14]
                            _284 = mem[160]
                            require mem[160] == mem[178 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[146 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _284)
                else:
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_222] = return_data.size
                    mem[_222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if return_data.size <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require return_data.size >= 64
                            require mem[_222 + 32] == mem[_222 + 50 len 14]
                            _285 = mem[_222 + 64]
                            require mem[_222 + 64] == mem[_222 + 82 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[_222 + 50 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _285)
            else:
                mem[_115 + mem[_115] + 36] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_115] + _115 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if mem[96] <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require mem[96] >= 64
                            require mem[128] == mem[146 len 14]
                            _288 = mem[160]
                            require mem[160] == mem[178 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[146 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _288)
                else:
                    _226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_226] = return_data.size
                    mem[_226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if return_data.size <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require return_data.size >= 64
                            require mem[_226 + 32] == mem[_226 + 50 len 14]
                            _289 = mem[_226 + 64]
                            require mem[_226 + 64] == mem[_226 + 82 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[_226 + 50 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _289)
            idx = idx + 1
            continue 
    else:
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _119 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_119 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_119 + 36 len 28]
            s = 0
            while s < mem[_119]:
                mem[s + _119 + 36] = mem[_119 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_119]) <= mem[_119]:
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if mem[96] <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require mem[96] >= 64
                            require mem[128] == mem[146 len 14]
                            _286 = mem[160]
                            require mem[160] == mem[178 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[146 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _286)
                else:
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_224] = return_data.size
                    mem[_224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if return_data.size <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require return_data.size >= 64
                            require mem[_224 + 32] == mem[_224 + 50 len 14]
                            _287 = mem[_224 + 64]
                            require mem[_224 + 64] == mem[_224 + 82 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[_224 + 50 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _287)
            else:
                mem[_119 + mem[_119] + 36] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if mem[96] <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require mem[96] >= 64
                            require mem[128] == mem[146 len 14]
                            _290 = mem[160]
                            require mem[160] == mem[178 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[146 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _290)
                else:
                    _227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_227] = return_data.size
                    mem[_227 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require 2 * idx < mem[96]
                        mem[(64 * idx) + 128] = 0
                        require (2 * idx) + 1 < mem[96]
                        mem[(32 * (2 * idx) + 1) + 128] = 0
                    else:
                        if return_data.size <= 0:
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = 0
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                        else:
                            require return_data.size >= 64
                            require mem[_227 + 32] == mem[_227 + 50 len 14]
                            _291 = mem[_227 + 64]
                            require mem[_227 + 64] == mem[_227 + 82 len 14]
                            require 2 * idx < mem[96]
                            mem[(64 * idx) + 128] = mem[_227 + 50 len 14]
                            require (2 * idx) + 1 < mem[96]
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _291)
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
