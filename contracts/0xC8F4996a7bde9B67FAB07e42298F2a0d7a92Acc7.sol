contract main {




// =====================  Runtime code  =====================


#
#  - sub_afed13ff(?)
#
array of struct stor3;
array of address stor4;
uint256 stor5;
array of struct stor6;

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'nothing to withdraw'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xa05849b8c0bfb1ac5041caa3375c97fc010be425, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _116 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_116 + 36] = 0
                        mem[_116 + 68] = stor6[idx]
                        mem[_116 + 100] = msg.sender
                        mem[_116 + 132] = 128
                        mem[_116 + 164] = mem[_116]
                        s = 0
                        while s < mem[_116]:
                            mem[s + _116 + 196] = mem[s + _116 + 32]
                            s = s + 32
                            continue 
                        if not mem[_116] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116 + 164 len mem[_116] + 32]
                        else:
                            mem[floor32(mem[_116]) + _116 + 196] = mem[floor32(mem[_116]) + _116 + -(mem[_116] % 32) + 228 len mem[_116] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_116], mem[_116 + 196 len floor32(mem[_116]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _127 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_127 + 36] = 0
                        mem[_127 + 68] = stor6[idx]
                        mem[_127 + 100] = stor3[idx].field_256
                        mem[_127 + 132] = 128
                        mem[_127 + 164] = mem[_127]
                        s = 0
                        while s < mem[_127]:
                            mem[s + _127 + 196] = mem[s + _127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_127] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_127]) + _127 + 196] = mem[floor32(mem[_127]) + _127 + -(mem[_127] % 32) + 228 len mem[_127] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_127]) + _127 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _119 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + 36] = stor6[idx]
                        mem[_119 + 68] = 0
                        mem[_119 + 100] = msg.sender
                        mem[_119 + 132] = 128
                        mem[_119 + 164] = mem[_119]
                        s = 0
                        while s < mem[_119]:
                            mem[s + _119 + 196] = mem[s + _119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_119] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_119] + _119 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_119]) + _119 + 196] = mem[floor32(mem[_119]) + _119 + -(mem[_119] % 32) + 228 len mem[_119] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_119]) + _119 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _129 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = stor6[idx]
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = stor3[idx].field_256
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[s + _129 + 196] = mem[s + _129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_129] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_129] + _129 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_129]) + _129 + 196] = mem[floor32(mem[_129]) + _129 + -(mem[_129] % 32) + 228 len mem[_129] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_129]) + _129 + -mem[64] + 224]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _166 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_166 + 36] = 0
                        mem[_166 + 68] = stor6[idx]
                        mem[_166 + 100] = msg.sender
                        mem[_166 + 132] = 128
                        mem[_166 + 164] = mem[_166]
                        s = 0
                        while s < mem[_166]:
                            mem[s + _166 + 196] = mem[s + _166 + 32]
                            s = s + 32
                            continue 
                        if not mem[_166] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166 + 164 len mem[_166] + 32]
                        else:
                            mem[floor32(mem[_166]) + _166 + 196] = mem[floor32(mem[_166]) + _166 + -(mem[_166] % 32) + 228 len mem[_166] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_166], mem[_166 + 196 len floor32(mem[_166]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _179 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_179 + 36] = 0
                        mem[_179 + 68] = stor6[idx]
                        mem[_179 + 100] = stor3[idx].field_256
                        mem[_179 + 132] = 128
                        mem[_179 + 164] = mem[_179]
                        s = 0
                        while s < mem[_179]:
                            mem[s + _179 + 196] = mem[s + _179 + 32]
                            s = s + 32
                            continue 
                        if not mem[_179] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179 + 164 len mem[_179] + 32]
                        else:
                            mem[floor32(mem[_179]) + _179 + 196] = mem[floor32(mem[_179]) + _179 + -(mem[_179] % 32) + 228 len mem[_179] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], stor3[idx].field_256, 128, mem[_179], mem[_179 + 196 len floor32(mem[_179]) + 32]
                else:
                    if idx >= stor3.length - 1:
                        _169 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_169 + 36] = stor6[idx]
                        mem[_169 + 68] = 0
                        mem[_169 + 100] = msg.sender
                        mem[_169 + 132] = 128
                        mem[_169 + 164] = mem[_169]
                        s = 0
                        while s < mem[_169]:
                            mem[s + _169 + 196] = mem[s + _169 + 32]
                            s = s + 32
                            continue 
                        if not mem[_169] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169 + 164 len mem[_169] + 32]
                        else:
                            mem[floor32(mem[_169]) + _169 + 196] = mem[floor32(mem[_169]) + _169 + -(mem[_169] % 32) + 228 len mem[_169] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, address(msg.sender), 128, mem[_169], mem[_169 + 196 len floor32(mem[_169]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _181 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_181 + 36] = stor6[idx]
                        mem[_181 + 68] = 0
                        mem[_181 + 100] = stor3[idx].field_256
                        mem[_181 + 132] = 128
                        mem[_181 + 164] = mem[_181]
                        s = 0
                        while s < mem[_181]:
                            mem[s + _181 + 196] = mem[s + _181 + 32]
                            s = s + 32
                            continue 
                        if not mem[_181] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181 + 164 len mem[_181] + 32]
                        else:
                            mem[floor32(mem[_181]) + _181 + 196] = mem[floor32(mem[_181]) + _181 + -(mem[_181] % 32) + 228 len mem[_181] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_181], mem[_181 + 196 len floor32(mem[_181]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
    else:
        idx = 1
        s = stor5
        while idx < stor3.length:
            require idx - 1 < stor4.length
            if idx != 1:
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _122 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_122 + 36] = 0
                        mem[_122 + 68] = stor6[idx]
                        mem[_122 + 100] = msg.sender
                        mem[_122 + 132] = 128
                        mem[_122 + 164] = mem[_122]
                        s = 0
                        while s < mem[_122]:
                            mem[s + _122 + 196] = mem[s + _122 + 32]
                            s = s + 32
                            continue 
                        if not mem[_122] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_122] + _122 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_122]) + _122 + 196] = mem[floor32(mem[_122]) + _122 + -(mem[_122] % 32) + 228 len mem[_122] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_122]) + _122 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _131 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_131 + 36] = 0
                        mem[_131 + 68] = stor6[idx]
                        mem[_131 + 100] = stor3[idx].field_256
                        mem[_131 + 132] = 128
                        mem[_131 + 164] = mem[_131]
                        s = 0
                        while s < mem[_131]:
                            mem[s + _131 + 196] = mem[s + _131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_131] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_131] + _131 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_131]) + _131 + 196] = mem[floor32(mem[_131]) + _131 + -(mem[_131] % 32) + 228 len mem[_131] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_131]) + _131 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _125 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = stor6[idx]
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = msg.sender
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[s + _125 + 196] = mem[s + _125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_125] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_125] + _125 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_125]) + _125 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _133 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_133 + 36] = stor6[idx]
                        mem[_133 + 68] = 0
                        mem[_133 + 100] = stor3[idx].field_256
                        mem[_133 + 132] = 128
                        mem[_133 + 164] = mem[_133]
                        s = 0
                        while s < mem[_133]:
                            mem[s + _133 + 196] = mem[s + _133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_133] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133 + 164 len mem[_133] + 32]
                        else:
                            mem[floor32(mem[_133]) + _133 + 196] = mem[floor32(mem[_133]) + _133 + -(mem[_133] % 32) + 228 len mem[_133] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args stor6[idx], 0, stor3[idx].field_256, 128, mem[_133], mem[_133 + 196 len floor32(mem[_133]) + 32]
            else:
                require 1 < stor6.length
                mem[mem[64] + 4] = stor3[idx].field_0
                mem[mem[64] + 36] = stor6
                require ext_code.size(stor4[idx])
                call stor4[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args stor3[idx].field_0, stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx + 1 < stor6.length
                mem[0] = 6
                if stor4[idx] == address(ext_call.return_data[0]):
                    if idx >= stor3.length - 1:
                        _174 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_174 + 36] = 0
                        mem[_174 + 68] = stor6[idx]
                        mem[_174 + 100] = msg.sender
                        mem[_174 + 132] = 128
                        mem[_174 + 164] = mem[_174]
                        s = 0
                        while s < mem[_174]:
                            mem[s + _174 + 196] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if not mem[_174] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174 + 164 len mem[_174] + 32]
                        else:
                            mem[floor32(mem[_174]) + _174 + 196] = mem[floor32(mem[_174]) + _174 + -(mem[_174] % 32) + 228 len mem[_174] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, stor6[idx], address(msg.sender), 128, mem[_174], mem[_174 + 196 len floor32(mem[_174]) + 32]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_183 + 36] = 0
                        mem[_183 + 68] = stor6[idx]
                        mem[_183 + 100] = stor3[idx].field_256
                        mem[_183 + 132] = 128
                        mem[_183 + 164] = mem[_183]
                        s = 0
                        while s < mem[_183]:
                            mem[s + _183 + 196] = mem[s + _183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_183] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_183] + _183 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_183]) + _183 + 196] = mem[floor32(mem[_183]) + _183 + -(mem[_183] % 32) + 228 len mem[_183] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_183]) + _183 + -mem[64] + 224]
                else:
                    if idx >= stor3.length - 1:
                        _177 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_177 + 36] = stor6[idx]
                        mem[_177 + 68] = 0
                        mem[_177 + 100] = msg.sender
                        mem[_177 + 132] = 128
                        mem[_177 + 164] = mem[_177]
                        s = 0
                        while s < mem[_177]:
                            mem[s + _177 + 196] = mem[s + _177 + 32]
                            s = s + 32
                            continue 
                        if not mem[_177] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_177]) + _177 + 196] = mem[floor32(mem[_177]) + _177 + -(mem[_177] % 32) + 228 len mem[_177] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_177]) + _177 + -mem[64] + 224]
                    else:
                        require idx + 1 < stor3.length
                        mem[0] = 3
                        _185 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_185 + 36] = stor6[idx]
                        mem[_185 + 68] = 0
                        mem[_185 + 100] = stor3[idx].field_256
                        mem[_185 + 132] = 128
                        mem[_185 + 164] = mem[_185]
                        s = 0
                        while s < mem[_185]:
                            mem[s + _185 + 196] = mem[s + _185 + 32]
                            s = s + 32
                            continue 
                        if not mem[_185] % 32:
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_185] + _185 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_185]) + _185 + 196] = mem[floor32(mem[_185]) + _185 + -(mem[_185] % 32) + 228 len mem[_185] % 32]
                            require ext_code.size(stor3[idx].field_0)
                            call stor3[idx].field_0.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_185]) + _185 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor6[idx]
            continue 
}



}
