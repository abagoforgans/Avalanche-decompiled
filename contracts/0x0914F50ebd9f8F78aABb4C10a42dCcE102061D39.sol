contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_992b0eeb(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require 0 < ('cd', 36).length
    require 0 < ('cd', 68).length
    require 0 < ('cd', 4).length
    mem[132] = msg.sender
    mem[164] = address(('cd', 68)[0])
    mem[196] = ('cd', 4)[0]
    mem[96] = 100
    mem[64] = 228
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(('cd', 68)[0]), Mask(224, 32, ('cd', 4)[0]) >> 32
    mem[352 len 4] = Mask(32, 64, ('cd', 4)[0]) >> 64
    call address(('cd', 36)[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, ('cd', 4)[0]) << 480, mem[324 len 4]
    if not return_data.size:
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx + 1 < ('cd', 36).length
            require idx < ('cd', 36).length
            require idx + 1 < ('cd', 4).length
            require idx < ('cd', 68).length
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                if idx >= ('cd', 36).length - 2:
                    _144 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_144 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_144 + 36] = 0
                    mem[_144 + 68] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_144 + 100] = msg.sender
                    mem[_144 + 132] = 128
                    mem[_144 + 164] = mem[_144]
                    s = 0
                    while s < mem[_144]:
                        mem[_144 + s + 196] = mem[_144 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_144] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], msg.sender, 128, mem[_144 + 164 len mem[_144] + 32]
                    else:
                        mem[floor32(mem[_144]) + _144 + 196] = mem[floor32(mem[_144]) + _144 + -(mem[_144] % 32) + 228 len mem[_144] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], msg.sender, 128, mem[_144], mem[_144 + 196 len floor32(mem[_144]) + 32]
                else:
                    require idx + 1 < ('cd', 68).length
                    _148 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_148 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_148 + 36] = 0
                    mem[_148 + 68] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_148 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_148 + 132] = 128
                    mem[_148 + 164] = mem[_148]
                    s = 0
                    while s < mem[_148]:
                        mem[_148 + s + 196] = mem[_148 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_148] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_148 + 164 len mem[_148] + 32]
                    else:
                        mem[floor32(mem[_148]) + _148 + 196] = mem[floor32(mem[_148]) + _148 + -(mem[_148] % 32) + 228 len mem[_148] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_148], mem[_148 + 196 len floor32(mem[_148]) + 32]
            else:
                if idx >= ('cd', 36).length - 2:
                    _145 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_145 + 36] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_145 + 68] = 0
                    mem[_145 + 100] = msg.sender
                    mem[_145 + 132] = 128
                    mem[_145 + 164] = mem[_145]
                    s = 0
                    while s < mem[_145]:
                        mem[_145 + s + 196] = mem[_145 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_145] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, msg.sender, 128, mem[_145 + 164 len mem[_145] + 32]
                    else:
                        mem[floor32(mem[_145]) + _145 + 196] = mem[floor32(mem[_145]) + _145 + -(mem[_145] % 32) + 228 len mem[_145] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, msg.sender, 128, mem[_145], mem[_145 + 196 len floor32(mem[_145]) + 32]
                else:
                    require idx + 1 < ('cd', 68).length
                    _152 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_152 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_152 + 36] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_152 + 68] = 0
                    mem[_152 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_152 + 132] = 128
                    mem[_152 + 164] = mem[_152]
                    s = 0
                    while s < mem[_152]:
                        mem[_152 + s + 196] = mem[_152 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_152] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_152 + 164 len mem[_152] + 32]
                    else:
                        mem[floor32(mem[_152]) + _152 + 196] = mem[floor32(mem[_152]) + _152 + -(mem[_152] % 32) + 228 len mem[_152] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_152], mem[_152 + 196 len floor32(mem[_152]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(return_data.size) + 229
        mem[228] = return_data.size
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx + 1 < ('cd', 36).length
            require idx < ('cd', 36).length
            require idx + 1 < ('cd', 4).length
            require idx < ('cd', 68).length
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                if idx >= ('cd', 36).length - 2:
                    _146 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_146 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_146 + 36] = 0
                    mem[_146 + 68] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_146 + 100] = msg.sender
                    mem[_146 + 132] = 128
                    mem[_146 + 164] = mem[_146]
                    s = 0
                    while s < mem[_146]:
                        mem[_146 + s + 196] = mem[_146 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_146] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], msg.sender, 128, mem[_146 + 164 len mem[_146] + 32]
                    else:
                        mem[floor32(mem[_146]) + _146 + 196] = mem[floor32(mem[_146]) + _146 + -(mem[_146] % 32) + 228 len mem[_146] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], msg.sender, 128, mem[_146], mem[_146 + 196 len floor32(mem[_146]) + 32]
                else:
                    require idx + 1 < ('cd', 68).length
                    _156 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_156 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_156 + 36] = 0
                    mem[_156 + 68] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_156 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_156 + 132] = 128
                    mem[_156 + 164] = mem[_156]
                    s = 0
                    while s < mem[_156]:
                        mem[_156 + s + 196] = mem[_156 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_156] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_156 + 164 len mem[_156] + 32]
                    else:
                        mem[floor32(mem[_156]) + _156 + 196] = mem[floor32(mem[_156]) + _156 + -(mem[_156] % 32) + 228 len mem[_156] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx + 1) + cd[4] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_156], mem[_156 + 196 len floor32(mem[_156]) + 32]
            else:
                if idx >= ('cd', 36).length - 2:
                    _147 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_147 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_147 + 36] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_147 + 68] = 0
                    mem[_147 + 100] = msg.sender
                    mem[_147 + 132] = 128
                    mem[_147 + 164] = mem[_147]
                    s = 0
                    while s < mem[_147]:
                        mem[_147 + s + 196] = mem[_147 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_147] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, msg.sender, 128, mem[_147 + 164 len mem[_147] + 32]
                    else:
                        mem[floor32(mem[_147]) + _147 + 196] = mem[floor32(mem[_147]) + _147 + -(mem[_147] % 32) + 228 len mem[_147] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, msg.sender, 128, mem[_147], mem[_147 + 196 len floor32(mem[_147]) + 32]
                else:
                    require idx + 1 < ('cd', 68).length
                    _160 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_160 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_160 + 36] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[_160 + 68] = 0
                    mem[_160 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_160 + 132] = 128
                    mem[_160 + 164] = mem[_160]
                    s = 0
                    while s < mem[_160]:
                        mem[_160 + s + 196] = mem[_160 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_160] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_160 + 164 len mem[_160] + 32]
                    else:
                        mem[floor32(mem[_160]) + _160 + 196] = mem[floor32(mem[_160]) + _160 + -(mem[_160] % 32) + 228 len mem[_160] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[((32 * idx + 1) + cd[4] + 36)], 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_160], mem[_160 + 196 len floor32(mem[_160]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_7cdab176(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require 0 < arg2.length
    require 0 < arg3.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * arg2.length) + 172 len 20]
    mem[(32 * arg2.length) + (32 * arg3.length) + 260] = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 100
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 292
    mem[(32 * arg2.length) + (32 * arg3.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[(32 * arg2.length) + (32 * arg3.length) + 292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, mem[(32 * arg2.length) + (32 * arg3.length) + 228], Mask(224, 32, arg1) >> 32
    mem[(32 * arg2.length) + (32 * arg3.length) + 416 len 4] = uint32(arg1)
    call mem[140 len 20].mem[(32 * arg2.length) + (32 * arg3.length) + 256 len 4] with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[(32 * arg2.length) + (32 * arg3.length) + 388 len 4]
    if not return_data.size:
        idx = 0
        s = 0
        s = 0
        s = arg1
        while idx < arg3.length:
            require idx + 1 < mem[96]
            require idx < mem[96]
            require idx < mem[(32 * arg2.length) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if s <= 0:
                revert with 0, 
                            32,
                            42,
                            0x59556e695377617042616c616e6365723a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[mem[64] + 110 len 22]
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg2.length) + 128]
                    _716 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if idx >= mem[(32 * arg2.length) + 128] - 1:
                        _744 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_744 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_744 + 68] = 0
                        mem[_744 + 100] = msg.sender
                        mem[_744 + 132] = 128
                        mem[_744 + 164] = mem[_744]
                        t = 0
                        while t < mem[_744]:
                            mem[_744 + t + 196] = mem[_744 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_744] % 32:
                            require ext_code.size(address(_716))
                            call address(_716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_744 + 164 len mem[_744] + 32]
                        else:
                            mem[floor32(mem[_744]) + _744 + 196] = mem[floor32(mem[_744]) + _744 + -(mem[_744] % 32) + 228 len mem[_744] % 32]
                            require ext_code.size(address(_716))
                            call address(_716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_744], mem[_744 + 196 len floor32(mem[_744]) + 32]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _732 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _752 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_752 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_752 + 68] = 0
                        mem[_752 + 100] = address(_732)
                        mem[_752 + 132] = 128
                        mem[_752 + 164] = mem[_752]
                        t = 0
                        while t < mem[_752]:
                            mem[_752 + t + 196] = mem[_752 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_752] % 32:
                            require ext_code.size(address(_716))
                            call address(_716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_732), 128, mem[_752 + 164 len mem[_752] + 32]
                        else:
                            mem[floor32(mem[_752]) + _752 + 196] = mem[floor32(mem[_752]) + _752 + -(mem[_752] % 32) + 228 len mem[_752] % 32]
                            require ext_code.size(address(_716))
                            call address(_716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_732), 128, mem[_752], mem[_752 + 196 len floor32(mem[_752]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg2.length) + 128]
                _733 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx >= mem[(32 * arg2.length) + 128] - 1:
                    _775 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_775 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_775 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_775 + 68] = 0
                    mem[_775 + 100] = msg.sender
                    mem[_775 + 132] = 128
                    mem[_775 + 164] = mem[_775]
                    t = 0
                    while t < mem[_775]:
                        mem[_775 + t + 196] = mem[_775 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_775] % 32:
                        require ext_code.size(address(_733))
                        call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_775 + 164 len mem[_775] + 32]
                    else:
                        mem[floor32(mem[_775]) + _775 + 196] = mem[floor32(mem[_775]) + _775 + -(mem[_775] % 32) + 228 len mem[_775] % 32]
                        require ext_code.size(address(_733))
                        call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_775], mem[_775 + 196 len floor32(mem[_775]) + 32]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _756 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _789 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_789 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_789 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_789 + 68] = 0
                    mem[_789 + 100] = address(_756)
                    mem[_789 + 132] = 128
                    mem[_789 + 164] = mem[_789]
                    t = 0
                    while t < mem[_789]:
                        mem[_789 + t + 196] = mem[_789 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_789] % 32:
                        require ext_code.size(address(_733))
                        call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_756), 128, mem[_789 + 164 len mem[_789] + 32]
                    else:
                        mem[floor32(mem[_789]) + _789 + 196] = mem[floor32(mem[_789]) + _789 + -(mem[_789] % 32) + 228 len mem[_789] % 32]
                        require ext_code.size(address(_733))
                        call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_756), 128, mem[_789], mem[_789 + 196 len floor32(mem[_789]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                require idx < mem[(32 * arg2.length) + 128]
                _718 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx >= mem[(32 * arg2.length) + 128] - 1:
                    _746 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_746 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_746 + 36] = 0
                    mem[_746 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_746 + 100] = msg.sender
                    mem[_746 + 132] = 128
                    mem[_746 + 164] = mem[_746]
                    t = 0
                    while t < mem[_746]:
                        mem[_746 + t + 196] = mem[_746 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_746] % 32:
                        require ext_code.size(address(_718))
                        call address(_718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_746 + 164 len mem[_746] + 32]
                    else:
                        mem[floor32(mem[_746]) + _746 + 196] = mem[floor32(mem[_746]) + _746 + -(mem[_746] % 32) + 228 len mem[_746] % 32]
                        require ext_code.size(address(_718))
                        call address(_718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_746], mem[_746 + 196 len floor32(mem[_746]) + 32]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _735 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _757 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_757 + 36] = 0
                    mem[_757 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_757 + 100] = address(_735)
                    mem[_757 + 132] = 128
                    mem[_757 + 164] = mem[_757]
                    t = 0
                    while t < mem[_757]:
                        mem[_757 + t + 196] = mem[_757 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_757] % 32:
                        require ext_code.size(address(_718))
                        call address(_718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_735), 128, mem[_757 + 164 len mem[_757] + 32]
                    else:
                        mem[floor32(mem[_757]) + _757 + 196] = mem[floor32(mem[_757]) + _757 + -(mem[_757] % 32) + 228 len mem[_757] % 32]
                        require ext_code.size(address(_718))
                        call address(_718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_735), 128, mem[_757], mem[_757 + 196 len floor32(mem[_757]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            require idx < mem[(32 * arg2.length) + 128]
            _736 = mem[(32 * idx) + (32 * arg2.length) + 160]
            if idx >= mem[(32 * arg2.length) + 128] - 1:
                _779 = mem[64]
                mem[64] = mem[64] + 32
                mem[_779 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_779 + 36] = 0
                mem[_779 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_779 + 100] = msg.sender
                mem[_779 + 132] = 128
                mem[_779 + 164] = mem[_779]
                t = 0
                while t < mem[_779]:
                    mem[_779 + t + 196] = mem[_779 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_779] % 32:
                    require ext_code.size(address(_736))
                    call address(_736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_779 + 164 len mem[_779] + 32]
                else:
                    mem[floor32(mem[_779]) + _779 + 196] = mem[floor32(mem[_779]) + _779 + -(mem[_779] % 32) + 228 len mem[_779] % 32]
                    require ext_code.size(address(_736))
                    call address(_736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_779], mem[_779 + 196 len floor32(mem[_779]) + 32]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _761 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _794 = mem[64]
                mem[64] = mem[64] + 32
                mem[_794 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_794 + 36] = 0
                mem[_794 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_794 + 100] = address(_761)
                mem[_794 + 132] = 128
                mem[_794 + 164] = mem[_794]
                t = 0
                while t < mem[_794]:
                    mem[_794 + t + 196] = mem[_794 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_794] % 32:
                    require ext_code.size(address(_736))
                    call address(_736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_761), 128, mem[_794 + 164 len mem[_794] + 32]
                else:
                    mem[floor32(mem[_794]) + _794 + 196] = mem[floor32(mem[_794]) + _794 + -(mem[_794] % 32) + 228 len mem[_794] % 32]
                    require ext_code.size(address(_736))
                    call address(_736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_761), 128, mem[_794], mem[_794 + 196 len floor32(mem[_794]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            continue 
    else:
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 293
        mem[(32 * arg2.length) + (32 * arg3.length) + 292] = return_data.size
        mem[(32 * arg2.length) + (32 * arg3.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 0
        s = 0
        s = arg1
        while idx < arg3.length:
            require idx + 1 < mem[96]
            require idx < mem[96]
            require idx < mem[(32 * arg2.length) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if s <= 0:
                revert with 0, 
                            32,
                            42,
                            0x59556e695377617042616c616e6365723a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[mem[64] + 110 len 22]
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    require idx < mem[(32 * arg2.length) + 128]
                    _720 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if idx >= mem[(32 * arg2.length) + 128] - 1:
                        _748 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_748 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_748 + 68] = 0
                        mem[_748 + 100] = msg.sender
                        mem[_748 + 132] = 128
                        mem[_748 + 164] = mem[_748]
                        t = 0
                        while t < mem[_748]:
                            mem[_748 + t + 196] = mem[_748 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_748] % 32:
                            require ext_code.size(address(_720))
                            call address(_720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_748 + 164 len mem[_748] + 32]
                        else:
                            mem[floor32(mem[_748]) + _748 + 196] = mem[floor32(mem[_748]) + _748 + -(mem[_748] % 32) + 228 len mem[_748] % 32]
                            require ext_code.size(address(_720))
                            call address(_720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_748], mem[_748 + 196 len floor32(mem[_748]) + 32]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _738 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _762 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_762 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_762 + 68] = 0
                        mem[_762 + 100] = address(_738)
                        mem[_762 + 132] = 128
                        mem[_762 + 164] = mem[_762]
                        t = 0
                        while t < mem[_762]:
                            mem[_762 + t + 196] = mem[_762 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_762] % 32:
                            require ext_code.size(address(_720))
                            call address(_720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_738), 128, mem[_762 + 164 len mem[_762] + 32]
                        else:
                            mem[floor32(mem[_762]) + _762 + 196] = mem[floor32(mem[_762]) + _762 + -(mem[_762] % 32) + 228 len mem[_762] % 32]
                            require ext_code.size(address(_720))
                            call address(_720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_738), 128, mem[_762], mem[_762 + 196 len floor32(mem[_762]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                require idx < mem[(32 * arg2.length) + 128]
                _739 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx >= mem[(32 * arg2.length) + 128] - 1:
                    _783 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_783 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_783 + 68] = 0
                    mem[_783 + 100] = msg.sender
                    mem[_783 + 132] = 128
                    mem[_783 + 164] = mem[_783]
                    t = 0
                    while t < mem[_783]:
                        mem[_783 + t + 196] = mem[_783 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_783] % 32:
                        require ext_code.size(address(_739))
                        call address(_739).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_783 + 164 len mem[_783] + 32]
                    else:
                        mem[floor32(mem[_783]) + _783 + 196] = mem[floor32(mem[_783]) + _783 + -(mem[_783] % 32) + 228 len mem[_783] % 32]
                        require ext_code.size(address(_739))
                        call address(_739).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, msg.sender, 128, mem[_783], mem[_783 + 196 len floor32(mem[_783]) + 32]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _766 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _799 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_799 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_799 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_799 + 68] = 0
                    mem[_799 + 100] = address(_766)
                    mem[_799 + 132] = 128
                    mem[_799 + 164] = mem[_799]
                    t = 0
                    while t < mem[_799]:
                        mem[_799 + t + 196] = mem[_799 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_799] % 32:
                        require ext_code.size(address(_739))
                        call address(_739).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_766), 128, mem[_799 + 164 len mem[_799] + 32]
                    else:
                        mem[floor32(mem[_799]) + _799 + 196] = mem[floor32(mem[_799]) + _799 + -(mem[_799] % 32) + 228 len mem[_799] % 32]
                        require ext_code.size(address(_739))
                        call address(_739).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_766), 128, mem[_799], mem[_799 + 196 len floor32(mem[_799]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 32, 39, 0xfe556e695377617042616c616e6365723a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 107 len 25]
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                require idx < mem[(32 * arg2.length) + 128]
                _722 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx >= mem[(32 * arg2.length) + 128] - 1:
                    _750 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_750 + 36] = 0
                    mem[_750 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_750 + 100] = msg.sender
                    mem[_750 + 132] = 128
                    mem[_750 + 164] = mem[_750]
                    t = 0
                    while t < mem[_750]:
                        mem[_750 + t + 196] = mem[_750 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_750] % 32:
                        require ext_code.size(address(_722))
                        call address(_722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_750 + 164 len mem[_750] + 32]
                    else:
                        mem[floor32(mem[_750]) + _750 + 196] = mem[floor32(mem[_750]) + _750 + -(mem[_750] % 32) + 228 len mem[_750] % 32]
                        require ext_code.size(address(_722))
                        call address(_722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_750], mem[_750 + 196 len floor32(mem[_750]) + 32]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _741 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _767 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_767 + 36] = 0
                    mem[_767 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_767 + 100] = address(_741)
                    mem[_767 + 132] = 128
                    mem[_767 + 164] = mem[_767]
                    t = 0
                    while t < mem[_767]:
                        mem[_767 + t + 196] = mem[_767 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_767] % 32:
                        require ext_code.size(address(_722))
                        call address(_722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_741), 128, mem[_767 + 164 len mem[_767] + 32]
                    else:
                        mem[floor32(mem[_767]) + _767 + 196] = mem[floor32(mem[_767]) + _767 + -(mem[_767] % 32) + 228 len mem[_767] % 32]
                        require ext_code.size(address(_722))
                        call address(_722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_741), 128, mem[_767], mem[_767 + 196 len floor32(mem[_767]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            require idx < mem[(32 * arg2.length) + 128]
            _742 = mem[(32 * idx) + (32 * arg2.length) + 160]
            if idx >= mem[(32 * arg2.length) + 128] - 1:
                _787 = mem[64]
                mem[64] = mem[64] + 32
                mem[_787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_787 + 36] = 0
                mem[_787 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_787 + 100] = msg.sender
                mem[_787 + 132] = 128
                mem[_787 + 164] = mem[_787]
                t = 0
                while t < mem[_787]:
                    mem[_787 + t + 196] = mem[_787 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_787] % 32:
                    require ext_code.size(address(_742))
                    call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_787 + 164 len mem[_787] + 32]
                else:
                    mem[floor32(mem[_787]) + _787 + 196] = mem[floor32(mem[_787]) + _787 + -(mem[_787] % 32) + 228 len mem[_787] % 32]
                    require ext_code.size(address(_742))
                    call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), msg.sender, 128, mem[_787], mem[_787 + 196 len floor32(mem[_787]) + 32]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _771 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _804 = mem[64]
                mem[64] = mem[64] + 32
                mem[_804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_804 + 36] = 0
                mem[_804 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_804 + 100] = address(_771)
                mem[_804 + 132] = 128
                mem[_804 + 164] = mem[_804]
                t = 0
                while t < mem[_804]:
                    mem[_804 + t + 196] = mem[_804 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_804] % 32:
                    require ext_code.size(address(_742))
                    call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_771), 128, mem[_804 + 164 len mem[_804] + 32]
                else:
                    mem[floor32(mem[_804]) + _804 + 196] = mem[floor32(mem[_804]) + _804 + -(mem[_804] % 32) + 228 len mem[_804] % 32]
                    require ext_code.size(address(_742))
                    call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_771), 128, mem[_804], mem[_804 + 196 len floor32(mem[_804]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            continue 
    return s
}



}
