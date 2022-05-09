contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_a1c617f5(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if 0xba5ed00007eec3e9e84e485c830472af7d47e18b != msg.sender:
        revert with 0, 'asd'
    mem[100] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 4).length <= 0:
        revert with 0, 'error'
    if ('cd', 4).length > 256:
        revert with 0, 'error'
    if cd[68] <= 0:
        revert with 0, 'error'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 100] = address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 132] = cd[68]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), cd[68]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[68]
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if idx == ('cd', 4).length - 1:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _91 = mem[_90]
            require mem[_90] == mem[_90 + 18 len 14]
            _93 = mem[_90 + 32]
            require mem[_90 + 32] == mem[_90 + 50 len 14]
            require mem[_90 + 64] == mem[_90 + 92 len 4]
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                if 997 * s and mem[_90 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if mem[_90 + 50 len 14] and 1000 > -1 / mem[_90 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_90 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if not (1000 * mem[_90 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                    _101 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_101 + 36] = 997 * s * Mask(112, 0, _91) / (1000 * Mask(112, 0, _93)) + (997 * s)
                    mem[_101 + 68] = 0
                    mem[_101 + 100] = this.address
                    mem[_101 + 132] = 128
                    mem[_101 + 164] = mem[_101]
                    t = 0
                    while t < mem[_101]:
                        mem[_101 + t + 196] = mem[_101 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_101]) > mem[_101]:
                        mem[_101 + mem[_101] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _91) / (1000 * Mask(112, 0, _93)) + (997 * s), 0, address(this.address), 128, mem[_101], mem[_101 + 196 len ceil32(mem[_101])]
                else:
                    _102 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_102 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_102 + 36] = 0
                    mem[_102 + 68] = 997 * s * Mask(112, 0, _91) / (1000 * Mask(112, 0, _93)) + (997 * s)
                    mem[_102 + 100] = this.address
                    mem[_102 + 132] = 128
                    mem[_102 + 164] = mem[_102]
                    t = 0
                    while t < mem[_102]:
                        mem[_102 + t + 196] = mem[_102 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_102]) > mem[_102]:
                        mem[_102 + mem[_102] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, _91) / (1000 * Mask(112, 0, _93)) + (997 * s), address(this.address), 128, mem[_102], mem[_102 + 196 len ceil32(mem[_102])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _91) / (1000 * Mask(112, 0, _93)) + (997 * s)
                continue 
            if 997 * s and mem[_90 + 50 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if mem[_90 + 18 len 14] and 1000 > -1 / mem[_90 + 18 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_90 + 18 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if not (1000 * mem[_90 + 18 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                _103 = mem[64]
                mem[64] = mem[64] + 32
                mem[_103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_103 + 36] = 997 * s * Mask(112, 0, _93) / (1000 * Mask(112, 0, _91)) + (997 * s)
                mem[_103 + 68] = 0
                mem[_103 + 100] = this.address
                mem[_103 + 132] = 128
                mem[_103 + 164] = mem[_103]
                t = 0
                while t < mem[_103]:
                    mem[_103 + t + 196] = mem[_103 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_103]) > mem[_103]:
                    mem[_103 + mem[_103] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, _93) / (1000 * Mask(112, 0, _91)) + (997 * s), 0, address(this.address), 128, mem[_103], mem[_103 + 196 len ceil32(mem[_103])]
            else:
                _104 = mem[64]
                mem[64] = mem[64] + 32
                mem[_104 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_104 + 36] = 0
                mem[_104 + 68] = 997 * s * Mask(112, 0, _93) / (1000 * Mask(112, 0, _91)) + (997 * s)
                mem[_104 + 100] = this.address
                mem[_104 + 132] = 128
                mem[_104 + 164] = mem[_104]
                t = 0
                while t < mem[_104]:
                    mem[_104 + t + 196] = mem[_104 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_104]) > mem[_104]:
                    mem[_104 + mem[_104] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, _93) / (1000 * Mask(112, 0, _91)) + (997 * s), address(this.address), 128, mem[_104], mem[_104 + 196 len ceil32(mem[_104])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _93) / (1000 * Mask(112, 0, _91)) + (997 * s)
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _98 = mem[_97]
        require mem[_97] == mem[_97 + 18 len 14]
        _99 = mem[_97 + 32]
        require mem[_97 + 32] == mem[_97 + 50 len 14]
        require mem[_97 + 64] == mem[_97 + 92 len 4]
        if s and 997 > -1 / s:
            revert with 'NH{q', 17
        if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
            if 997 * s and mem[_97 + 18 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if mem[_97 + 50 len 14] and 1000 > -1 / mem[_97 + 50 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_97 + 50 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if not (1000 * mem[_97 + 50 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                _113 = mem[64]
                mem[64] = mem[64] + 32
                mem[_113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_113 + 36] = 997 * s * Mask(112, 0, _98) / (1000 * Mask(112, 0, _99)) + (997 * s)
                mem[_113 + 68] = 0
                mem[_113 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_113 + 132] = 128
                mem[_113 + 164] = mem[_113]
                t = 0
                while t < mem[_113]:
                    mem[_113 + t + 196] = mem[_113 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_113]) > mem[_113]:
                    mem[_113 + mem[_113] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, _98) / (1000 * Mask(112, 0, _99)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_113], mem[_113 + 196 len ceil32(mem[_113])]
            else:
                _114 = mem[64]
                mem[64] = mem[64] + 32
                mem[_114 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_114 + 36] = 0
                mem[_114 + 68] = 997 * s * Mask(112, 0, _98) / (1000 * Mask(112, 0, _99)) + (997 * s)
                mem[_114 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_114 + 132] = 128
                mem[_114 + 164] = mem[_114]
                t = 0
                while t < mem[_114]:
                    mem[_114 + t + 196] = mem[_114 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_114]) > mem[_114]:
                    mem[_114 + mem[_114] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, _98) / (1000 * Mask(112, 0, _99)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_114], mem[_114 + 196 len ceil32(mem[_114])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _98) / (1000 * Mask(112, 0, _99)) + (997 * s)
            continue 
        if 997 * s and mem[_97 + 50 len 14] > -1 / 997 * s:
            revert with 'NH{q', 17
        if mem[_97 + 18 len 14] and 1000 > -1 / mem[_97 + 18 len 14]:
            revert with 'NH{q', 17
        if 1000 * mem[_97 + 18 len 14] > (-997 * s) - 1:
            revert with 'NH{q', 17
        if not (1000 * mem[_97 + 18 len 14]) + (997 * s):
            revert with 'NH{q', 18
        if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
            _115 = mem[64]
            mem[64] = mem[64] + 32
            mem[_115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_115 + 36] = 997 * s * Mask(112, 0, _99) / (1000 * Mask(112, 0, _98)) + (997 * s)
            mem[_115 + 68] = 0
            mem[_115 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_115 + 132] = 128
            mem[_115 + 164] = mem[_115]
            t = 0
            while t < mem[_115]:
                mem[_115 + t + 196] = mem[_115 + t + 32]
                t = t + 32
                continue 
            if ceil32(mem[_115]) > mem[_115]:
                mem[_115 + mem[_115] + 196] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * s * Mask(112, 0, _99) / (1000 * Mask(112, 0, _98)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_115], mem[_115 + 196 len ceil32(mem[_115])]
        else:
            _116 = mem[64]
            mem[64] = mem[64] + 32
            mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_116 + 36] = 0
            mem[_116 + 68] = 997 * s * Mask(112, 0, _99) / (1000 * Mask(112, 0, _98)) + (997 * s)
            mem[_116 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_116 + 132] = 128
            mem[_116 + 164] = mem[_116]
            t = 0
            while t < mem[_116]:
                mem[_116 + t + 196] = mem[_116 + t + 32]
                t = t + 32
                continue 
            if ceil32(mem[_116]) > mem[_116]:
                mem[_116 + mem[_116] + 196] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * s * Mask(112, 0, _99) / (1000 * Mask(112, 0, _98)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_116], mem[_116 + 196 len ceil32(mem[_116])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 997 * s * Mask(112, 0, _99) / (1000 * Mask(112, 0, _98)) + (997 * s)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_85] == mem[_85]
    if mem[_85] <= ext_call.return_data[0]:
        revert with 0, 'no'
}



}
