contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function addWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only_owner'
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] == arg1:
            revert with 0, 'already whitelist'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor1.length++
    stor1[stor1.length] = arg1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'invalid address'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_980ba374(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        t = 1
        u = 1
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_21] == mem[_21 + 18 len 14]
            require mem[_21 + 32] == mem[_21 + 50 len 14]
            require mem[_21 + 64] == mem[_21 + 92 len 4]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[((32 * idx) + cd[4] + 36)]) >= address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if mem[_21 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if u and 10000 * mem[_21 + 50 len 14] > -1 / u:
                    revert with 'NH{q', 17
                if mem[_21 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[_21 + 50 len 14] and s > -1 / 10000 * mem[_21 + 50 len 14]:
                    revert with 'NH{q', 17
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
                if uint32(cd[((32 * idx) + cd[68] + 36)]) and t > -1 / uint32(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 'NH{q', 17
                if uint32(cd[((32 * idx) + cd[68] + 36)]) * t > (-10000 * mem[_21 + 50 len 14] * s) - 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
                if uint32(cd[((32 * idx) + cd[68] + 36)]) and mem[_21 + 18 len 14] > -1 / uint32(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 'NH{q', 17
                if t and uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14] > -1 / t:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                if idx <= 0:
                    idx = idx + 1
                    s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s)
                    t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14]
                    u = 10000 * u * mem[_21 + 50 len 14]
                    continue 
                if 10000 * u * mem[_21 + 50 len 14] < 100000000000000000000000000 * 10^18:
                    idx = idx + 1
                    s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s)
                    t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14]
                    u = 10000 * u * mem[_21 + 50 len 14]
                    continue 
                if t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14] < 100000000000000000000000000 * 10^18:
                    idx = idx + 1
                    s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s)
                    t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14]
                    u = 10000 * u * mem[_21 + 50 len 14]
                    continue 
                if (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s) < 100000000000000000000000000 * 10^18:
                    idx = idx + 1
                    s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s)
                    t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14]
                    u = 10000 * u * mem[_21 + 50 len 14]
                    continue 
                idx = idx + 1
                s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 50 len 14] * s) / 10000 * 10^18
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 18 len 14] / 10000 * 10^18
                u = 10000 * u * mem[_21 + 50 len 14] / 10000 * 10^18
                continue 
            if mem[_21 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if u and 10000 * mem[_21 + 18 len 14] > -1 / u:
                revert with 'NH{q', 17
            if mem[_21 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[_21 + 18 len 14] and s > -1 / 10000 * mem[_21 + 18 len 14]:
                revert with 'NH{q', 17
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
            if uint32(cd[((32 * idx) + cd[68] + 36)]) and t > -1 / uint32(cd[((32 * idx) + cd[68] + 36)]):
                revert with 'NH{q', 17
            if uint32(cd[((32 * idx) + cd[68] + 36)]) * t > (-10000 * mem[_21 + 18 len 14] * s) - 1:
                revert with 'NH{q', 17
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
            if uint32(cd[((32 * idx) + cd[68] + 36)]) and mem[_21 + 50 len 14] > -1 / uint32(cd[((32 * idx) + cd[68] + 36)]):
                revert with 'NH{q', 17
            if t and uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14] > -1 / t:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            if idx <= 0:
                idx = idx + 1
                s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s)
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14]
                u = 10000 * u * mem[_21 + 18 len 14]
                continue 
            if 10000 * u * mem[_21 + 18 len 14] < 100000000000000000000000000 * 10^18:
                idx = idx + 1
                s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s)
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14]
                u = 10000 * u * mem[_21 + 18 len 14]
                continue 
            if t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14] < 100000000000000000000000000 * 10^18:
                idx = idx + 1
                s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s)
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14]
                u = 10000 * u * mem[_21 + 18 len 14]
                continue 
            if (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s) < 100000000000000000000000000 * 10^18:
                idx = idx + 1
                s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s)
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14]
                u = 10000 * u * mem[_21 + 18 len 14]
                continue 
            idx = idx + 1
            s = (uint32(cd[((32 * idx) + cd[68] + 36)]) * t) + (10000 * mem[_21 + 18 len 14] * s) / 10000 * 10^18
            t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * mem[_21 + 50 len 14] / 10000 * 10^18
            u = 10000 * u * mem[_21 + 18 len 14] / 10000 * 10^18
            continue 
        if not s:
            revert with 'NH{q', 18
        if t / s <= u / s:
            revert with 0, 'impossible'
        if u / s and t / s > -1 / u / s:
            revert with 'NH{q', 17
        if u / s * t / s / 2 > -2:
            revert with 'NH{q', 17
        if not (u / s * t / s / 2) + 1:
            revert with 'NH{q', 18
        if (u / s * t / s / 2) + 1 > -(u / s * t / s / (u / s * t / s / 2) + 1) - 1:
            revert with 'NH{q', 17
        v = (u / s * t / s / 2) + (u / s * t / s / (u / s * t / s / 2) + 1) + 1 / 2
        w = (u / s * t / s / 2) + 1
        while v < w:
            if not v:
                revert with 'NH{q', 18
            if v > -(u / s * t / s / v) - 1:
                revert with 'NH{q', 17
            v = v + (u / s * t / s / v) / 2
            w = v
            continue 
        if w < u / s:
            revert with 'NH{q', 17
        if w - (u / s) <= 0:
            revert with 0, 'amountIn error'
        if w - (u / s) > -cd[100] - 1:
            revert with 'NH{q', 17
        if not w - (u / s):
            revert with 'NH{q', 18
        if u / s / w - (u / s) > -2:
            revert with 'NH{q', 17
        if not (u / s / w - (u / s)) + 1:
            revert with 'NH{q', 18
        if t / s / (u / s / w - (u / s)) + 1 < w - (u / s) + cd[100]:
            revert with 0, 'not worth a gas'
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55]
        if mem[_55] >= w - (u / s):
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64] + 4] = address(('cd', 36)[0])
            mem[mem[64] + 36] = w - (u / s)
            require ext_code.size(address(('cd', 4)[0]))
            call address(('cd', 4)[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), w - (u / s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_66] == bool(mem[_66])
            idx = 0
            t = w - (u / s)
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _122 = mem[_121]
                require mem[_121] == mem[_121 + 18 len 14]
                _123 = mem[_121 + 32]
                require mem[_121 + 32] == mem[_121 + 50 len 14]
                require mem[_121 + 64] == mem[_121 + 92 len 4]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
                if t and uint32(cd[((32 * idx) + cd[68] + 36)]) > -1 / t:
                    revert with 'NH{q', 17
                if address(cd[((32 * idx) + cd[4] + 36)]) >= address(cd[((32 * idx + 1) + cd[4] + 36)]):
                    if mem[_121 + 50 len 14] and 10000 > -1 / mem[_121 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 10000 * mem[_121 + 50 len 14] > (-1 * t * uint32(cd[((32 * idx) + cd[68] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if t and uint32(cd[((32 * idx) + cd[68] + 36)]) > -1 / t:
                        revert with 'NH{q', 17
                    if t * uint32(cd[((32 * idx) + cd[68] + 36)]) and mem[_121 + 18 len 14] > -1 / t * uint32(cd[((32 * idx) + cd[68] + 36)]):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_121 + 50 len 14]) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        _125 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_125 + 36] = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _122) / (10000 * Mask(112, 0, _123)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                        mem[_125 + 68] = 0
                        mem[_125 + 100] = this.address
                        mem[_125 + 132] = 128
                        mem[_125 + 164] = mem[_125]
                        s = 0
                        while s < mem[_125]:
                            mem[_125 + s + 196] = mem[_125 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_125]) > mem[_125]:
                            mem[_125 + mem[_125] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _122) / (10000 * Mask(112, 0, _123)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])), 0, address(this.address), 128, mem[_125], mem[_125 + 196 len ceil32(mem[_125])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _129 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_129 + 36] = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _122) / (10000 * Mask(112, 0, _123)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                        mem[_129 + 68] = 0
                        mem[_129 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_129 + 132] = 128
                        mem[_129 + 164] = mem[_129]
                        s = 0
                        while s < mem[_129]:
                            mem[_129 + s + 196] = mem[_129 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_129]) > mem[_129]:
                            mem[_129 + mem[_129] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _122) / (10000 * Mask(112, 0, _123)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_129], mem[_129 + 196 len ceil32(mem[_129])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _122) / (10000 * Mask(112, 0, _123)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                    continue 
                if mem[_121 + 18 len 14] and 10000 > -1 / mem[_121 + 18 len 14]:
                    revert with 'NH{q', 17
                if 10000 * mem[_121 + 18 len 14] > (-1 * t * uint32(cd[((32 * idx) + cd[68] + 36)])) - 1:
                    revert with 'NH{q', 17
                if t and uint32(cd[((32 * idx) + cd[68] + 36)]) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint32(cd[((32 * idx) + cd[68] + 36)]) and mem[_121 + 50 len 14] > -1 / t * uint32(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 'NH{q', 17
                if not (10000 * mem[_121 + 18 len 14]) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])):
                    revert with 'NH{q', 18
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length - 1:
                    _126 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_126 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_126 + 36] = 0
                    mem[_126 + 68] = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _123) / (10000 * Mask(112, 0, _122)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                    mem[_126 + 100] = this.address
                    mem[_126 + 132] = 128
                    mem[_126 + 164] = mem[_126]
                    s = 0
                    while s < mem[_126]:
                        mem[_126 + s + 196] = mem[_126 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_126]) > mem[_126]:
                        mem[_126 + mem[_126] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _123) / (10000 * Mask(112, 0, _122)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])), address(this.address), 128, mem[_126], mem[_126 + 196 len ceil32(mem[_126])]
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    _130 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_130 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_130 + 36] = 0
                    mem[_130 + 68] = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _123) / (10000 * Mask(112, 0, _122)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                    mem[_130 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_130 + 132] = 128
                    mem[_130 + 164] = mem[_130]
                    s = 0
                    while s < mem[_130]:
                        mem[_130 + s + 196] = mem[_130 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_130]) > mem[_130]:
                        mem[_130 + mem[_130] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _123) / (10000 * Mask(112, 0, _122)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)])), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_130], mem[_130 + 196 len ceil32(mem[_130])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t * uint32(cd[((32 * idx) + cd[68] + 36)]) * Mask(112, 0, _123) / (10000 * Mask(112, 0, _122)) + (t * uint32(cd[((32 * idx) + cd[68] + 36)]))
                continue 
            if t < w - (u / s):
                revert with 0, 'amountOut < amountIn'
        else:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _60 = mem[_59]
            require mem[_59] == mem[_59 + 18 len 14]
            _61 = mem[_59 + 32]
            require mem[_59 + 32] == mem[_59 + 50 len 14]
            require mem[_59 + 64] == mem[_59 + 92 len 4]
            _65 = mem[64]
            mem[mem[64] + 32 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
            mem[mem[64] + ('cd', 132).length + 32] = w - (u / s)
            _68 = mem[64]
            mem[mem[64]] = ('cd', 132).length + 32
            mem[64] = mem[64] + ('cd', 132).length + 64
            if 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ('cd', 4)[1] == address(('cd', 4)[1])
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == uint32(('cd', 68)[0])
            if w - (u / s) and uint32(('cd', 68)[0]) > -1 / w - (u / s):
                revert with 'NH{q', 17
            if address(('cd', 4)[0]) >= address(('cd', 4)[1]):
                if Mask(112, 0, _61) and 10000 > -1 / Mask(112, 0, _61):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _61) > (-1 * w * uint32(('cd', 68)[0])) + (u / s * uint32(('cd', 68)[0])) - 1:
                    revert with 'NH{q', 17
                if w - (u / s) and uint32(('cd', 68)[0]) > -1 / w - (u / s):
                    revert with 'NH{q', 17
                if (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])) and Mask(112, 0, _60) > -1 / (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _61)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[_65 + ('cd', 132).length + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_65 + ('cd', 132).length + 68] = (w * uint32(('cd', 68)[0]) * Mask(112, 0, _60)) - (u / s * uint32(('cd', 68)[0]) * Mask(112, 0, _60)) / (10000 * Mask(112, 0, _61)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0]))
                mem[_65 + ('cd', 132).length + 100] = 0
                mem[_65 + ('cd', 132).length + 132] = this.address
                mem[_65 + ('cd', 132).length + 164] = 128
                _79 = mem[_68]
                mem[_65 + ('cd', 132).length + 196] = mem[_68]
                idx = 0
                while idx < _79:
                    mem[_65 + ('cd', 132).length + idx + 228] = mem[_68 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_79) > _79:
                    mem[_65 + ('cd', 132).length + _79 + 228] = 0
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (w * uint32(('cd', 68)[0]) * Mask(112, 0, _60)) - (u / s * uint32(('cd', 68)[0]) * Mask(112, 0, _60)) / (10000 * Mask(112, 0, _61)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])), 0, address(this.address), 128, mem[_65 + ('cd', 132).length + 196 len ceil32(_79) + 32]
            else:
                if Mask(112, 0, _60) and 10000 > -1 / Mask(112, 0, _60):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _60) > (-1 * w * uint32(('cd', 68)[0])) + (u / s * uint32(('cd', 68)[0])) - 1:
                    revert with 'NH{q', 17
                if w - (u / s) and uint32(('cd', 68)[0]) > -1 / w - (u / s):
                    revert with 'NH{q', 17
                if (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])) and Mask(112, 0, _61) > -1 / (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])):
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _60)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[_65 + ('cd', 132).length + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_65 + ('cd', 132).length + 68] = 0
                mem[_65 + ('cd', 132).length + 100] = (w * uint32(('cd', 68)[0]) * Mask(112, 0, _61)) - (u / s * uint32(('cd', 68)[0]) * Mask(112, 0, _61)) / (10000 * Mask(112, 0, _60)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0]))
                mem[_65 + ('cd', 132).length + 132] = this.address
                mem[_65 + ('cd', 132).length + 164] = 128
                _80 = mem[_68]
                mem[_65 + ('cd', 132).length + 196] = mem[_68]
                idx = 0
                while idx < _80:
                    mem[_65 + ('cd', 132).length + idx + 228] = mem[_68 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_80) > _80:
                    mem[_65 + ('cd', 132).length + _80 + 228] = 0
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, (w * uint32(('cd', 68)[0]) * Mask(112, 0, _61)) - (u / s * uint32(('cd', 68)[0]) * Mask(112, 0, _61)) / (10000 * Mask(112, 0, _60)) + (w * uint32(('cd', 68)[0])) - (u / s * uint32(('cd', 68)[0])), address(this.address), 128, mem[_65 + ('cd', 132).length + 196 len ceil32(_80) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'only_whitelist'
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg4.length < 32:
        revert with 'NH{q', 17
    if arg4.length - 32 / 24 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg4.length - 32 / 24
    if not arg4.length - 32 / 24:
        if arg4.length - 32 / 24 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg4.length - 32 / 24) + 128] = arg4.length - 32 / 24
        mem[64] = (64 * arg4.length - 32 / 24) + 160
        if not arg4.length - 32 / 24:
            idx = 0
            while idx < arg4.length - 32 / 24:
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                require 24 * idx <= (24 * idx) + 4
                require (24 * idx) + 4 <= arg4.length
                _476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_476] = 4
                mem[_476 + 32 len 4] = call.data[arg4 + (24 * idx) + 36 len 4]
                mem[_476 + 36] = 0
                if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160] = call.data[arg4 + (24 * idx) + 36 len 4]
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 and 24 > -1 / idx + 1:
                    revert with 'NH{q', 17
                require (24 * idx) + 24 <= arg4.length
                _576 = mem[64]
                mem[64] = mem[64] + 64
                mem[_576] = 20
                mem[_576 + 32 len 20] = call.data[arg4 + (24 * idx) + 40 len 20]
                mem[_576 + 52] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = call.data[arg4 + (24 * idx) + 40 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg4.length < 32:
                revert with 'NH{q', 17
            require arg4.length - 32 <= arg4.length
            require arg4.length <= arg4.length
            _420 = mem[64]
            mem[64] = mem[64] + 64
            mem[_420] = 32
            mem[_420 + 32] = call.data[arg4 + arg4.length + 4]
            mem[_420 + 64] = 0
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            if arg2 <= 0:
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _468 = mem[_460]
                require mem[_460] == mem[_460 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _528 = mem[_520]
                require mem[_520] == mem[_520 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(address(_468))
                call address(_468).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_568] == bool(mem[_568])
                idx = 1
                s = _468
                t = arg3
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1166 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1228 = mem[_1220]
                    require mem[_1220] == mem[_1220 + 18 len 14]
                    _1244 = mem[_1220 + 32]
                    require mem[_1220 + 32] == mem[_1220 + 50 len 14]
                    require mem[_1220 + 64] == mem[_1220 + 92 len 4]
                    require ext_code.size(address(_1166))
                    staticcall address(_1166).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1308 = mem[_1300]
                    require mem[_1300] == mem[_1300 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1300 + 12 len 20]:
                            _1332 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1244) and 10000 > -1 / Mask(112, 0, _1244):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1244) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1228) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1244)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1396 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1396 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1396 + 36] = t * uint32(_1332) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1332))
                            mem[_1396 + 68] = 0
                            mem[_1396 + 100] = this.address
                            mem[_1396 + 132] = 128
                            mem[_1396 + 164] = mem[_1396]
                            s = 0
                            while s < mem[_1396]:
                                mem[_1396 + s + 196] = mem[_1396 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1396]) > mem[_1396]:
                                mem[_1396 + mem[_1396] + 196] = 0
                            require ext_code.size(address(_1166))
                            call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1332) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1332)), 0, address(this.address), 128, mem[_1396], mem[_1396 + 196 len ceil32(mem[_1396])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1308
                            t = t * uint32(_1332) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1332))
                            continue 
                        _1333 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1228) and 10000 > -1 / Mask(112, 0, _1228):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1228) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1244) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1228)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1397 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1397 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1397 + 36] = 0
                        mem[_1397 + 68] = t * uint32(_1333) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1333))
                        mem[_1397 + 100] = this.address
                        mem[_1397 + 132] = 128
                        mem[_1397 + 164] = mem[_1397]
                        s = 0
                        while s < mem[_1397]:
                            mem[_1397 + s + 196] = mem[_1397 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1397]) > mem[_1397]:
                            mem[_1397 + mem[_1397] + 196] = 0
                        require ext_code.size(address(_1166))
                        call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1333) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1333)), address(this.address), 128, mem[_1397], mem[_1397 + 196 len ceil32(mem[_1397])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1166))
                        staticcall address(_1166).token1() with:
                                gas gas_remaining wei
                        mem[_1397 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1397 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1333) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1333))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1356 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1300 + 12 len 20]:
                        _1380 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1244) and 10000 > -1 / Mask(112, 0, _1244):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1244) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1228) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1244)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1428 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1428 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1428 + 36] = t * uint32(_1380) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1380))
                        mem[_1428 + 68] = 0
                        mem[_1428 + 100] = address(_1356)
                        mem[_1428 + 132] = 128
                        mem[_1428 + 164] = mem[_1428]
                        s = 0
                        while s < mem[_1428]:
                            mem[_1428 + s + 196] = mem[_1428 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1428]) > mem[_1428]:
                            mem[_1428 + mem[_1428] + 196] = 0
                        require ext_code.size(address(_1166))
                        call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1380) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1380)), 0, address(_1356), 128, mem[_1428], mem[_1428 + 196 len ceil32(mem[_1428])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1308
                        t = t * uint32(_1380) * Mask(112, 0, _1228) / (10000 * Mask(112, 0, _1244)) + (t * uint32(_1380))
                        continue 
                    _1381 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1228) and 10000 > -1 / Mask(112, 0, _1228):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1228) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1244) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1228)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1429 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1429 + 36] = 0
                    mem[_1429 + 68] = t * uint32(_1381) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1381))
                    mem[_1429 + 100] = address(_1356)
                    mem[_1429 + 132] = 128
                    mem[_1429 + 164] = mem[_1429]
                    s = 0
                    while s < mem[_1429]:
                        mem[_1429 + s + 196] = mem[_1429 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1429]) > mem[_1429]:
                        mem[_1429 + mem[_1429] + 196] = 0
                    require ext_code.size(address(_1166))
                    call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1381) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1381)), address(_1356), 128, mem[_1429], mem[_1429 + 196 len ceil32(mem[_1429])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1166))
                    staticcall address(_1166).token1() with:
                            gas gas_remaining wei
                    mem[_1429 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1429 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1381) * Mask(112, 0, _1244) / (10000 * Mask(112, 0, _1228)) + (t * uint32(_1381))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_528))
                call address(_528).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1260] == bool(mem[_1260])
            else:
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _469 = mem[_461]
                require mem[_461] == mem[_461 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _529 = mem[_521]
                require mem[_521] == mem[_521 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_469))
                call address(_469).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_569] == bool(mem[_569])
                idx = 1
                s = _469
                t = arg2
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1171 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1229 = mem[_1221]
                    require mem[_1221] == mem[_1221 + 18 len 14]
                    _1245 = mem[_1221 + 32]
                    require mem[_1221 + 32] == mem[_1221 + 50 len 14]
                    require mem[_1221 + 64] == mem[_1221 + 92 len 4]
                    require ext_code.size(address(_1171))
                    staticcall address(_1171).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1309 = mem[_1301]
                    require mem[_1301] == mem[_1301 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1301 + 12 len 20]:
                            _1334 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1245) and 10000 > -1 / Mask(112, 0, _1245):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1245) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1229) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1245)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1398 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1398 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1398 + 36] = t * uint32(_1334) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1334))
                            mem[_1398 + 68] = 0
                            mem[_1398 + 100] = this.address
                            mem[_1398 + 132] = 128
                            mem[_1398 + 164] = mem[_1398]
                            s = 0
                            while s < mem[_1398]:
                                mem[_1398 + s + 196] = mem[_1398 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1398]) > mem[_1398]:
                                mem[_1398 + mem[_1398] + 196] = 0
                            require ext_code.size(address(_1171))
                            call address(_1171).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1334) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1334)), 0, address(this.address), 128, mem[_1398], mem[_1398 + 196 len ceil32(mem[_1398])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1309
                            t = t * uint32(_1334) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1334))
                            continue 
                        _1335 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1229) and 10000 > -1 / Mask(112, 0, _1229):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1229) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1245) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1229)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1399 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1399 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1399 + 36] = 0
                        mem[_1399 + 68] = t * uint32(_1335) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1335))
                        mem[_1399 + 100] = this.address
                        mem[_1399 + 132] = 128
                        mem[_1399 + 164] = mem[_1399]
                        s = 0
                        while s < mem[_1399]:
                            mem[_1399 + s + 196] = mem[_1399 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1399]) > mem[_1399]:
                            mem[_1399 + mem[_1399] + 196] = 0
                        require ext_code.size(address(_1171))
                        call address(_1171).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1335) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1335)), address(this.address), 128, mem[_1399], mem[_1399 + 196 len ceil32(mem[_1399])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1171))
                        staticcall address(_1171).token1() with:
                                gas gas_remaining wei
                        mem[_1399 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1399 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1335) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1335))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1357 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1301 + 12 len 20]:
                        _1382 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1245) and 10000 > -1 / Mask(112, 0, _1245):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1245) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1229) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1245)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1430 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1430 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1430 + 36] = t * uint32(_1382) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1382))
                        mem[_1430 + 68] = 0
                        mem[_1430 + 100] = address(_1357)
                        mem[_1430 + 132] = 128
                        mem[_1430 + 164] = mem[_1430]
                        s = 0
                        while s < mem[_1430]:
                            mem[_1430 + s + 196] = mem[_1430 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1430]) > mem[_1430]:
                            mem[_1430 + mem[_1430] + 196] = 0
                        require ext_code.size(address(_1171))
                        call address(_1171).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1382) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1382)), 0, address(_1357), 128, mem[_1430], mem[_1430 + 196 len ceil32(mem[_1430])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1309
                        t = t * uint32(_1382) * Mask(112, 0, _1229) / (10000 * Mask(112, 0, _1245)) + (t * uint32(_1382))
                        continue 
                    _1383 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1229) and 10000 > -1 / Mask(112, 0, _1229):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1229) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1245) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1229)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1431 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1431 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1431 + 36] = 0
                    mem[_1431 + 68] = t * uint32(_1383) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1383))
                    mem[_1431 + 100] = address(_1357)
                    mem[_1431 + 132] = 128
                    mem[_1431 + 164] = mem[_1431]
                    s = 0
                    while s < mem[_1431]:
                        mem[_1431 + s + 196] = mem[_1431 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1431]) > mem[_1431]:
                        mem[_1431 + mem[_1431] + 196] = 0
                    require ext_code.size(address(_1171))
                    call address(_1171).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1383) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1383)), address(_1357), 128, mem[_1431], mem[_1431 + 196 len ceil32(mem[_1431])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1171))
                    staticcall address(_1171).token1() with:
                            gas gas_remaining wei
                    mem[_1431 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1431 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1383) * Mask(112, 0, _1245) / (10000 * Mask(112, 0, _1229)) + (t * uint32(_1383))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_529))
                call address(_529).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1261] == bool(mem[_1261])
        else:
            mem[(32 * arg4.length - 32 / 24) + 160 len 32 * arg4.length - 32 / 24] = call.data[calldata.size len 32 * arg4.length - 32 / 24]
            idx = 0
            while idx < arg4.length - 32 / 24:
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                require 24 * idx <= (24 * idx) + 4
                require (24 * idx) + 4 <= arg4.length
                _478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_478] = 4
                mem[_478 + 32 len 4] = call.data[arg4 + (24 * idx) + 36 len 4]
                mem[_478 + 36] = 0
                if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160] = call.data[arg4 + (24 * idx) + 36 len 4]
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 and 24 > -1 / idx + 1:
                    revert with 'NH{q', 17
                require (24 * idx) + 24 <= arg4.length
                _578 = mem[64]
                mem[64] = mem[64] + 64
                mem[_578] = 20
                mem[_578 + 32 len 20] = call.data[arg4 + (24 * idx) + 40 len 20]
                mem[_578 + 52] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = call.data[arg4 + (24 * idx) + 40 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg4.length < 32:
                revert with 'NH{q', 17
            require arg4.length - 32 <= arg4.length
            require arg4.length <= arg4.length
            _422 = mem[64]
            mem[64] = mem[64] + 64
            mem[_422] = 32
            mem[_422 + 32] = call.data[arg4 + arg4.length + 4]
            mem[_422 + 64] = 0
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            if arg2 <= 0:
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _470 = mem[_462]
                require mem[_462] == mem[_462 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _530 = mem[_522]
                require mem[_522] == mem[_522 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(address(_470))
                call address(_470).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_570] == bool(mem[_570])
                idx = 1
                s = _470
                t = arg3
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1176 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1230 = mem[_1222]
                    require mem[_1222] == mem[_1222 + 18 len 14]
                    _1246 = mem[_1222 + 32]
                    require mem[_1222 + 32] == mem[_1222 + 50 len 14]
                    require mem[_1222 + 64] == mem[_1222 + 92 len 4]
                    require ext_code.size(address(_1176))
                    staticcall address(_1176).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1310 = mem[_1302]
                    require mem[_1302] == mem[_1302 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1302 + 12 len 20]:
                            _1336 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1246) and 10000 > -1 / Mask(112, 0, _1246):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1246) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1230) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1246)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1400 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1400 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1400 + 36] = t * uint32(_1336) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1336))
                            mem[_1400 + 68] = 0
                            mem[_1400 + 100] = this.address
                            mem[_1400 + 132] = 128
                            mem[_1400 + 164] = mem[_1400]
                            s = 0
                            while s < mem[_1400]:
                                mem[_1400 + s + 196] = mem[_1400 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1400]) > mem[_1400]:
                                mem[_1400 + mem[_1400] + 196] = 0
                            require ext_code.size(address(_1176))
                            call address(_1176).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1336) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1336)), 0, address(this.address), 128, mem[_1400], mem[_1400 + 196 len ceil32(mem[_1400])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1310
                            t = t * uint32(_1336) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1336))
                            continue 
                        _1337 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1230) and 10000 > -1 / Mask(112, 0, _1230):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1230) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1246) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1230)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1401 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1401 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1401 + 36] = 0
                        mem[_1401 + 68] = t * uint32(_1337) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1337))
                        mem[_1401 + 100] = this.address
                        mem[_1401 + 132] = 128
                        mem[_1401 + 164] = mem[_1401]
                        s = 0
                        while s < mem[_1401]:
                            mem[_1401 + s + 196] = mem[_1401 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1401]) > mem[_1401]:
                            mem[_1401 + mem[_1401] + 196] = 0
                        require ext_code.size(address(_1176))
                        call address(_1176).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1337) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1337)), address(this.address), 128, mem[_1401], mem[_1401 + 196 len ceil32(mem[_1401])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1176))
                        staticcall address(_1176).token1() with:
                                gas gas_remaining wei
                        mem[_1401 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1401 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1337) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1337))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1358 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1302 + 12 len 20]:
                        _1384 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1246) and 10000 > -1 / Mask(112, 0, _1246):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1246) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1230) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1246)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1432 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1432 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1432 + 36] = t * uint32(_1384) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1384))
                        mem[_1432 + 68] = 0
                        mem[_1432 + 100] = address(_1358)
                        mem[_1432 + 132] = 128
                        mem[_1432 + 164] = mem[_1432]
                        s = 0
                        while s < mem[_1432]:
                            mem[_1432 + s + 196] = mem[_1432 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1432]) > mem[_1432]:
                            mem[_1432 + mem[_1432] + 196] = 0
                        require ext_code.size(address(_1176))
                        call address(_1176).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1384) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1384)), 0, address(_1358), 128, mem[_1432], mem[_1432 + 196 len ceil32(mem[_1432])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1310
                        t = t * uint32(_1384) * Mask(112, 0, _1230) / (10000 * Mask(112, 0, _1246)) + (t * uint32(_1384))
                        continue 
                    _1385 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1230) and 10000 > -1 / Mask(112, 0, _1230):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1230) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1246) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1230)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1433 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1433 + 36] = 0
                    mem[_1433 + 68] = t * uint32(_1385) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1385))
                    mem[_1433 + 100] = address(_1358)
                    mem[_1433 + 132] = 128
                    mem[_1433 + 164] = mem[_1433]
                    s = 0
                    while s < mem[_1433]:
                        mem[_1433 + s + 196] = mem[_1433 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1433]) > mem[_1433]:
                        mem[_1433 + mem[_1433] + 196] = 0
                    require ext_code.size(address(_1176))
                    call address(_1176).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1385) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1385)), address(_1358), 128, mem[_1433], mem[_1433 + 196 len ceil32(mem[_1433])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1176))
                    staticcall address(_1176).token1() with:
                            gas gas_remaining wei
                    mem[_1433 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1433 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1385) * Mask(112, 0, _1246) / (10000 * Mask(112, 0, _1230)) + (t * uint32(_1385))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_530))
                call address(_530).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1262] == bool(mem[_1262])
            else:
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _471 = mem[_463]
                require mem[_463] == mem[_463 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _531 = mem[_523]
                require mem[_523] == mem[_523 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_471))
                call address(_471).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_571] == bool(mem[_571])
                idx = 1
                s = _471
                t = arg2
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1181 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1231 = mem[_1223]
                    require mem[_1223] == mem[_1223 + 18 len 14]
                    _1247 = mem[_1223 + 32]
                    require mem[_1223 + 32] == mem[_1223 + 50 len 14]
                    require mem[_1223 + 64] == mem[_1223 + 92 len 4]
                    require ext_code.size(address(_1181))
                    staticcall address(_1181).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1311 = mem[_1303]
                    require mem[_1303] == mem[_1303 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1303 + 12 len 20]:
                            _1338 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1247) and 10000 > -1 / Mask(112, 0, _1247):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1247) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1231) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1247)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1402 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1402 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1402 + 36] = t * uint32(_1338) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1338))
                            mem[_1402 + 68] = 0
                            mem[_1402 + 100] = this.address
                            mem[_1402 + 132] = 128
                            mem[_1402 + 164] = mem[_1402]
                            s = 0
                            while s < mem[_1402]:
                                mem[_1402 + s + 196] = mem[_1402 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1402]) > mem[_1402]:
                                mem[_1402 + mem[_1402] + 196] = 0
                            require ext_code.size(address(_1181))
                            call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1338) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1338)), 0, address(this.address), 128, mem[_1402], mem[_1402 + 196 len ceil32(mem[_1402])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1311
                            t = t * uint32(_1338) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1338))
                            continue 
                        _1339 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1231) and 10000 > -1 / Mask(112, 0, _1231):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1231) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1247) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1231)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1403 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1403 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1403 + 36] = 0
                        mem[_1403 + 68] = t * uint32(_1339) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1339))
                        mem[_1403 + 100] = this.address
                        mem[_1403 + 132] = 128
                        mem[_1403 + 164] = mem[_1403]
                        s = 0
                        while s < mem[_1403]:
                            mem[_1403 + s + 196] = mem[_1403 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1403]) > mem[_1403]:
                            mem[_1403 + mem[_1403] + 196] = 0
                        require ext_code.size(address(_1181))
                        call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1339) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1339)), address(this.address), 128, mem[_1403], mem[_1403 + 196 len ceil32(mem[_1403])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1181))
                        staticcall address(_1181).token1() with:
                                gas gas_remaining wei
                        mem[_1403 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1403 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1339) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1339))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1359 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1303 + 12 len 20]:
                        _1386 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1247) and 10000 > -1 / Mask(112, 0, _1247):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1247) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1231) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1247)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1434 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1434 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1434 + 36] = t * uint32(_1386) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1386))
                        mem[_1434 + 68] = 0
                        mem[_1434 + 100] = address(_1359)
                        mem[_1434 + 132] = 128
                        mem[_1434 + 164] = mem[_1434]
                        s = 0
                        while s < mem[_1434]:
                            mem[_1434 + s + 196] = mem[_1434 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1434]) > mem[_1434]:
                            mem[_1434 + mem[_1434] + 196] = 0
                        require ext_code.size(address(_1181))
                        call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1386) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1386)), 0, address(_1359), 128, mem[_1434], mem[_1434 + 196 len ceil32(mem[_1434])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1311
                        t = t * uint32(_1386) * Mask(112, 0, _1231) / (10000 * Mask(112, 0, _1247)) + (t * uint32(_1386))
                        continue 
                    _1387 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1231) and 10000 > -1 / Mask(112, 0, _1231):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1231) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1247) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1231)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1435 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1435 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1435 + 36] = 0
                    mem[_1435 + 68] = t * uint32(_1387) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1387))
                    mem[_1435 + 100] = address(_1359)
                    mem[_1435 + 132] = 128
                    mem[_1435 + 164] = mem[_1435]
                    s = 0
                    while s < mem[_1435]:
                        mem[_1435 + s + 196] = mem[_1435 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1435]) > mem[_1435]:
                        mem[_1435 + mem[_1435] + 196] = 0
                    require ext_code.size(address(_1181))
                    call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1387) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1387)), address(_1359), 128, mem[_1435], mem[_1435 + 196 len ceil32(mem[_1435])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1181))
                    staticcall address(_1181).token1() with:
                            gas gas_remaining wei
                    mem[_1435 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1435 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1387) * Mask(112, 0, _1247) / (10000 * Mask(112, 0, _1231)) + (t * uint32(_1387))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_531))
                call address(_531).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1263] == bool(mem[_1263])
    else:
        mem[128 len 32 * arg4.length - 32 / 24] = call.data[calldata.size len 32 * arg4.length - 32 / 24]
        if arg4.length - 32 / 24 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg4.length - 32 / 24) + 128] = arg4.length - 32 / 24
        mem[64] = (64 * arg4.length - 32 / 24) + 160
        if not arg4.length - 32 / 24:
            idx = 0
            while idx < arg4.length - 32 / 24:
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                require 24 * idx <= (24 * idx) + 4
                require (24 * idx) + 4 <= arg4.length
                _480 = mem[64]
                mem[64] = mem[64] + 64
                mem[_480] = 4
                mem[_480 + 32 len 4] = call.data[arg4 + (24 * idx) + 36 len 4]
                mem[_480 + 36] = 0
                if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160] = call.data[arg4 + (24 * idx) + 36 len 4]
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 and 24 > -1 / idx + 1:
                    revert with 'NH{q', 17
                require (24 * idx) + 24 <= arg4.length
                _580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_580] = 20
                mem[_580 + 32 len 20] = call.data[arg4 + (24 * idx) + 40 len 20]
                mem[_580 + 52] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = call.data[arg4 + (24 * idx) + 40 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg4.length < 32:
                revert with 'NH{q', 17
            require arg4.length - 32 <= arg4.length
            require arg4.length <= arg4.length
            _424 = mem[64]
            mem[64] = mem[64] + 64
            mem[_424] = 32
            mem[_424 + 32] = call.data[arg4 + arg4.length + 4]
            mem[_424 + 64] = 0
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            if arg2 <= 0:
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _472 = mem[_464]
                require mem[_464] == mem[_464 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _532 = mem[_524]
                require mem[_524] == mem[_524 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(address(_472))
                call address(_472).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_572] == bool(mem[_572])
                idx = 1
                s = _472
                t = arg3
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1186 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1232 = mem[_1224]
                    require mem[_1224] == mem[_1224 + 18 len 14]
                    _1248 = mem[_1224 + 32]
                    require mem[_1224 + 32] == mem[_1224 + 50 len 14]
                    require mem[_1224 + 64] == mem[_1224 + 92 len 4]
                    require ext_code.size(address(_1186))
                    staticcall address(_1186).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1312 = mem[_1304]
                    require mem[_1304] == mem[_1304 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1304 + 12 len 20]:
                            _1340 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1248) and 10000 > -1 / Mask(112, 0, _1248):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1248) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1232) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1248)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1404 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1404 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1404 + 36] = t * uint32(_1340) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1340))
                            mem[_1404 + 68] = 0
                            mem[_1404 + 100] = this.address
                            mem[_1404 + 132] = 128
                            mem[_1404 + 164] = mem[_1404]
                            s = 0
                            while s < mem[_1404]:
                                mem[_1404 + s + 196] = mem[_1404 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1404]) > mem[_1404]:
                                mem[_1404 + mem[_1404] + 196] = 0
                            require ext_code.size(address(_1186))
                            call address(_1186).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1340) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1340)), 0, address(this.address), 128, mem[_1404], mem[_1404 + 196 len ceil32(mem[_1404])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1312
                            t = t * uint32(_1340) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1340))
                            continue 
                        _1341 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1232) and 10000 > -1 / Mask(112, 0, _1232):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1232) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1248) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1232)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1405 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1405 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1405 + 36] = 0
                        mem[_1405 + 68] = t * uint32(_1341) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1341))
                        mem[_1405 + 100] = this.address
                        mem[_1405 + 132] = 128
                        mem[_1405 + 164] = mem[_1405]
                        s = 0
                        while s < mem[_1405]:
                            mem[_1405 + s + 196] = mem[_1405 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1405]) > mem[_1405]:
                            mem[_1405 + mem[_1405] + 196] = 0
                        require ext_code.size(address(_1186))
                        call address(_1186).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1341) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1341)), address(this.address), 128, mem[_1405], mem[_1405 + 196 len ceil32(mem[_1405])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1186))
                        staticcall address(_1186).token1() with:
                                gas gas_remaining wei
                        mem[_1405 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1405 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1341) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1341))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1360 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1304 + 12 len 20]:
                        _1388 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1248) and 10000 > -1 / Mask(112, 0, _1248):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1248) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1232) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1248)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1436 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1436 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1436 + 36] = t * uint32(_1388) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1388))
                        mem[_1436 + 68] = 0
                        mem[_1436 + 100] = address(_1360)
                        mem[_1436 + 132] = 128
                        mem[_1436 + 164] = mem[_1436]
                        s = 0
                        while s < mem[_1436]:
                            mem[_1436 + s + 196] = mem[_1436 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1436]) > mem[_1436]:
                            mem[_1436 + mem[_1436] + 196] = 0
                        require ext_code.size(address(_1186))
                        call address(_1186).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1388) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1388)), 0, address(_1360), 128, mem[_1436], mem[_1436 + 196 len ceil32(mem[_1436])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1312
                        t = t * uint32(_1388) * Mask(112, 0, _1232) / (10000 * Mask(112, 0, _1248)) + (t * uint32(_1388))
                        continue 
                    _1389 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1232) and 10000 > -1 / Mask(112, 0, _1232):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1232) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1248) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1232)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1437 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1437 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1437 + 36] = 0
                    mem[_1437 + 68] = t * uint32(_1389) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1389))
                    mem[_1437 + 100] = address(_1360)
                    mem[_1437 + 132] = 128
                    mem[_1437 + 164] = mem[_1437]
                    s = 0
                    while s < mem[_1437]:
                        mem[_1437 + s + 196] = mem[_1437 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1437]) > mem[_1437]:
                        mem[_1437 + mem[_1437] + 196] = 0
                    require ext_code.size(address(_1186))
                    call address(_1186).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1389) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1389)), address(_1360), 128, mem[_1437], mem[_1437 + 196 len ceil32(mem[_1437])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1186))
                    staticcall address(_1186).token1() with:
                            gas gas_remaining wei
                    mem[_1437 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1437 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1389) * Mask(112, 0, _1248) / (10000 * Mask(112, 0, _1232)) + (t * uint32(_1389))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_532))
                call address(_532).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1264] == bool(mem[_1264])
            else:
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _473 = mem[_465]
                require mem[_465] == mem[_465 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _533 = mem[_525]
                require mem[_525] == mem[_525 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_473))
                call address(_473).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _573 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_573] == bool(mem[_573])
                idx = 1
                s = _473
                t = arg2
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1191 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1233 = mem[_1225]
                    require mem[_1225] == mem[_1225 + 18 len 14]
                    _1249 = mem[_1225 + 32]
                    require mem[_1225 + 32] == mem[_1225 + 50 len 14]
                    require mem[_1225 + 64] == mem[_1225 + 92 len 4]
                    require ext_code.size(address(_1191))
                    staticcall address(_1191).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1313 = mem[_1305]
                    require mem[_1305] == mem[_1305 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1305 + 12 len 20]:
                            _1342 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1249) and 10000 > -1 / Mask(112, 0, _1249):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1249) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1233) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1249)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1406 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1406 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1406 + 36] = t * uint32(_1342) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1342))
                            mem[_1406 + 68] = 0
                            mem[_1406 + 100] = this.address
                            mem[_1406 + 132] = 128
                            mem[_1406 + 164] = mem[_1406]
                            s = 0
                            while s < mem[_1406]:
                                mem[_1406 + s + 196] = mem[_1406 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1406]) > mem[_1406]:
                                mem[_1406 + mem[_1406] + 196] = 0
                            require ext_code.size(address(_1191))
                            call address(_1191).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1342) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1342)), 0, address(this.address), 128, mem[_1406], mem[_1406 + 196 len ceil32(mem[_1406])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1313
                            t = t * uint32(_1342) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1342))
                            continue 
                        _1343 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1233) and 10000 > -1 / Mask(112, 0, _1233):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1233) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1249) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1233)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1407 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1407 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1407 + 36] = 0
                        mem[_1407 + 68] = t * uint32(_1343) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1343))
                        mem[_1407 + 100] = this.address
                        mem[_1407 + 132] = 128
                        mem[_1407 + 164] = mem[_1407]
                        s = 0
                        while s < mem[_1407]:
                            mem[_1407 + s + 196] = mem[_1407 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1407]) > mem[_1407]:
                            mem[_1407 + mem[_1407] + 196] = 0
                        require ext_code.size(address(_1191))
                        call address(_1191).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1343) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1343)), address(this.address), 128, mem[_1407], mem[_1407 + 196 len ceil32(mem[_1407])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1191))
                        staticcall address(_1191).token1() with:
                                gas gas_remaining wei
                        mem[_1407 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1407 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1343) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1343))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1361 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1305 + 12 len 20]:
                        _1390 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1249) and 10000 > -1 / Mask(112, 0, _1249):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1249) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1233) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1249)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1438 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1438 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1438 + 36] = t * uint32(_1390) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1390))
                        mem[_1438 + 68] = 0
                        mem[_1438 + 100] = address(_1361)
                        mem[_1438 + 132] = 128
                        mem[_1438 + 164] = mem[_1438]
                        s = 0
                        while s < mem[_1438]:
                            mem[_1438 + s + 196] = mem[_1438 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1438]) > mem[_1438]:
                            mem[_1438 + mem[_1438] + 196] = 0
                        require ext_code.size(address(_1191))
                        call address(_1191).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1390) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1390)), 0, address(_1361), 128, mem[_1438], mem[_1438 + 196 len ceil32(mem[_1438])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1313
                        t = t * uint32(_1390) * Mask(112, 0, _1233) / (10000 * Mask(112, 0, _1249)) + (t * uint32(_1390))
                        continue 
                    _1391 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1233) and 10000 > -1 / Mask(112, 0, _1233):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1233) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1249) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1233)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1439 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1439 + 36] = 0
                    mem[_1439 + 68] = t * uint32(_1391) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1391))
                    mem[_1439 + 100] = address(_1361)
                    mem[_1439 + 132] = 128
                    mem[_1439 + 164] = mem[_1439]
                    s = 0
                    while s < mem[_1439]:
                        mem[_1439 + s + 196] = mem[_1439 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1439]) > mem[_1439]:
                        mem[_1439 + mem[_1439] + 196] = 0
                    require ext_code.size(address(_1191))
                    call address(_1191).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1391) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1391)), address(_1361), 128, mem[_1439], mem[_1439 + 196 len ceil32(mem[_1439])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1191))
                    staticcall address(_1191).token1() with:
                            gas gas_remaining wei
                    mem[_1439 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1439 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1391) * Mask(112, 0, _1249) / (10000 * Mask(112, 0, _1233)) + (t * uint32(_1391))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_533))
                call address(_533).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1265] == bool(mem[_1265])
        else:
            mem[(32 * arg4.length - 32 / 24) + 160 len 32 * arg4.length - 32 / 24] = call.data[calldata.size len 32 * arg4.length - 32 / 24]
            idx = 0
            while idx < arg4.length - 32 / 24:
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                require 24 * idx <= (24 * idx) + 4
                require (24 * idx) + 4 <= arg4.length
                _482 = mem[64]
                mem[64] = mem[64] + 64
                mem[_482] = 4
                mem[_482 + 32 len 4] = call.data[arg4 + (24 * idx) + 36 len 4]
                mem[_482 + 36] = 0
                if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160] = call.data[arg4 + (24 * idx) + 36 len 4]
                if idx and 24 > -1 / idx:
                    revert with 'NH{q', 17
                if 24 * idx > -5:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 and 24 > -1 / idx + 1:
                    revert with 'NH{q', 17
                require (24 * idx) + 24 <= arg4.length
                _582 = mem[64]
                mem[64] = mem[64] + 64
                mem[_582] = 20
                mem[_582 + 32 len 20] = call.data[arg4 + (24 * idx) + 40 len 20]
                mem[_582 + 52] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = call.data[arg4 + (24 * idx) + 40 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg4.length < 32:
                revert with 'NH{q', 17
            require arg4.length - 32 <= arg4.length
            require arg4.length <= arg4.length
            _426 = mem[64]
            mem[64] = mem[64] + 64
            mem[_426] = 32
            mem[_426 + 32] = call.data[arg4 + arg4.length + 4]
            mem[_426 + 64] = 0
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            if arg2 <= 0:
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _474 = mem[_466]
                require mem[_466] == mem[_466 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _534 = mem[_526]
                require mem[_526] == mem[_526 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(address(_474))
                call address(_474).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_574] == bool(mem[_574])
                idx = 1
                s = _474
                t = arg3
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1196 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1234 = mem[_1226]
                    require mem[_1226] == mem[_1226 + 18 len 14]
                    _1250 = mem[_1226 + 32]
                    require mem[_1226 + 32] == mem[_1226 + 50 len 14]
                    require mem[_1226 + 64] == mem[_1226 + 92 len 4]
                    require ext_code.size(address(_1196))
                    staticcall address(_1196).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1314 = mem[_1306]
                    require mem[_1306] == mem[_1306 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1306 + 12 len 20]:
                            _1344 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1250) and 10000 > -1 / Mask(112, 0, _1250):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1250) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1234) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1250)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1408 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1408 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1408 + 36] = t * uint32(_1344) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1344))
                            mem[_1408 + 68] = 0
                            mem[_1408 + 100] = this.address
                            mem[_1408 + 132] = 128
                            mem[_1408 + 164] = mem[_1408]
                            s = 0
                            while s < mem[_1408]:
                                mem[_1408 + s + 196] = mem[_1408 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1408]) > mem[_1408]:
                                mem[_1408 + mem[_1408] + 196] = 0
                            require ext_code.size(address(_1196))
                            call address(_1196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1344) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1344)), 0, address(this.address), 128, mem[_1408], mem[_1408 + 196 len ceil32(mem[_1408])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1314
                            t = t * uint32(_1344) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1344))
                            continue 
                        _1345 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1234) and 10000 > -1 / Mask(112, 0, _1234):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1234) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1250) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1234)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1409 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1409 + 36] = 0
                        mem[_1409 + 68] = t * uint32(_1345) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1345))
                        mem[_1409 + 100] = this.address
                        mem[_1409 + 132] = 128
                        mem[_1409 + 164] = mem[_1409]
                        s = 0
                        while s < mem[_1409]:
                            mem[_1409 + s + 196] = mem[_1409 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1409]) > mem[_1409]:
                            mem[_1409 + mem[_1409] + 196] = 0
                        require ext_code.size(address(_1196))
                        call address(_1196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1345) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1345)), address(this.address), 128, mem[_1409], mem[_1409 + 196 len ceil32(mem[_1409])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1196))
                        staticcall address(_1196).token1() with:
                                gas gas_remaining wei
                        mem[_1409 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1409 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1345) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1345))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1362 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1306 + 12 len 20]:
                        _1392 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1250) and 10000 > -1 / Mask(112, 0, _1250):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1250) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1234) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1250)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1440 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1440 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1440 + 36] = t * uint32(_1392) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1392))
                        mem[_1440 + 68] = 0
                        mem[_1440 + 100] = address(_1362)
                        mem[_1440 + 132] = 128
                        mem[_1440 + 164] = mem[_1440]
                        s = 0
                        while s < mem[_1440]:
                            mem[_1440 + s + 196] = mem[_1440 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1440]) > mem[_1440]:
                            mem[_1440 + mem[_1440] + 196] = 0
                        require ext_code.size(address(_1196))
                        call address(_1196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1392) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1392)), 0, address(_1362), 128, mem[_1440], mem[_1440 + 196 len ceil32(mem[_1440])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1314
                        t = t * uint32(_1392) * Mask(112, 0, _1234) / (10000 * Mask(112, 0, _1250)) + (t * uint32(_1392))
                        continue 
                    _1393 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1234) and 10000 > -1 / Mask(112, 0, _1234):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1234) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1250) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1234)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1441 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1441 + 36] = 0
                    mem[_1441 + 68] = t * uint32(_1393) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1393))
                    mem[_1441 + 100] = address(_1362)
                    mem[_1441 + 132] = 128
                    mem[_1441 + 164] = mem[_1441]
                    s = 0
                    while s < mem[_1441]:
                        mem[_1441 + s + 196] = mem[_1441 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1441]) > mem[_1441]:
                        mem[_1441 + mem[_1441] + 196] = 0
                    require ext_code.size(address(_1196))
                    call address(_1196).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1393) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1393)), address(_1362), 128, mem[_1441], mem[_1441 + 196 len ceil32(mem[_1441])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1196))
                    staticcall address(_1196).token1() with:
                            gas gas_remaining wei
                    mem[_1441 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1441 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1393) * Mask(112, 0, _1250) / (10000 * Mask(112, 0, _1234)) + (t * uint32(_1393))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_534))
                call address(_534).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1266] == bool(mem[_1266])
            else:
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _475 = mem[_467]
                require mem[_467] == mem[_467 + 12 len 20]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _527 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _535 = mem[_527]
                require mem[_527] == mem[_527 + 12 len 20]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[172 len 20]
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_475))
                call address(_475).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_575] == bool(mem[_575])
                idx = 1
                s = _475
                t = arg2
                while idx < arg4.length - 32 / 24:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1201 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1235 = mem[_1227]
                    require mem[_1227] == mem[_1227 + 18 len 14]
                    _1251 = mem[_1227 + 32]
                    require mem[_1227 + 32] == mem[_1227 + 50 len 14]
                    require mem[_1227 + 64] == mem[_1227 + 92 len 4]
                    require ext_code.size(address(_1201))
                    staticcall address(_1201).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1315 = mem[_1307]
                    require mem[_1307] == mem[_1307 + 12 len 20]
                    if arg4.length - 32 / 24 < 1:
                        revert with 'NH{q', 17
                    if idx >= (arg4.length - 32 / 24) - 1:
                        if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                            revert with 'NH{q', 50
                        if address(s) != mem[_1307 + 12 len 20]:
                            _1346 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _1251) and 10000 > -1 / Mask(112, 0, _1251):
                                revert with 'NH{q', 17
                            if 10000 * Mask(112, 0, _1251) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                                revert with 'NH{q', 17
                            if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                                revert with 'NH{q', 17
                            if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1235) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                                revert with 'NH{q', 17
                            if not (10000 * Mask(112, 0, _1251)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                                revert with 'NH{q', 18
                            _1410 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1410 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1410 + 36] = t * uint32(_1346) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1346))
                            mem[_1410 + 68] = 0
                            mem[_1410 + 100] = this.address
                            mem[_1410 + 132] = 128
                            mem[_1410 + 164] = mem[_1410]
                            s = 0
                            while s < mem[_1410]:
                                mem[_1410 + s + 196] = mem[_1410 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1410]) > mem[_1410]:
                                mem[_1410 + mem[_1410] + 196] = 0
                            require ext_code.size(address(_1201))
                            call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args t * uint32(_1346) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1346)), 0, address(this.address), 128, mem[_1410], mem[_1410 + 196 len ceil32(mem[_1410])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _1315
                            t = t * uint32(_1346) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1346))
                            continue 
                        _1347 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1235) and 10000 > -1 / Mask(112, 0, _1235):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1235) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1251) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1235)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1411 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1411 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1411 + 36] = 0
                        mem[_1411 + 68] = t * uint32(_1347) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1347))
                        mem[_1411 + 100] = this.address
                        mem[_1411 + 132] = 128
                        mem[_1411 + 164] = mem[_1411]
                        s = 0
                        while s < mem[_1411]:
                            mem[_1411 + s + 196] = mem[_1411 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1411]) > mem[_1411]:
                            mem[_1411 + mem[_1411] + 196] = 0
                        require ext_code.size(address(_1201))
                        call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, t * uint32(_1347) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1347)), address(this.address), 128, mem[_1411], mem[_1411 + 196 len ceil32(mem[_1411])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_1201))
                        staticcall address(_1201).token1() with:
                                gas gas_remaining wei
                        mem[_1411 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1411 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        t = t * uint32(_1347) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1347))
                        continue 
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1363 = mem[(32 * idx + 1) + 128]
                    if idx >= mem[(32 * arg4.length - 32 / 24) + 128]:
                        revert with 'NH{q', 50
                    if address(s) != mem[_1307 + 12 len 20]:
                        _1394 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if Mask(112, 0, _1251) and 10000 > -1 / Mask(112, 0, _1251):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _1251) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                            revert with 'NH{q', 17
                        if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                            revert with 'NH{q', 17
                        if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1235) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _1251)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                            revert with 'NH{q', 18
                        _1442 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1442 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1442 + 36] = t * uint32(_1394) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1394))
                        mem[_1442 + 68] = 0
                        mem[_1442 + 100] = address(_1363)
                        mem[_1442 + 132] = 128
                        mem[_1442 + 164] = mem[_1442]
                        s = 0
                        while s < mem[_1442]:
                            mem[_1442 + s + 196] = mem[_1442 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1442]) > mem[_1442]:
                            mem[_1442 + mem[_1442] + 196] = 0
                        require ext_code.size(address(_1201))
                        call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args t * uint32(_1394) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1394)), 0, address(_1363), 128, mem[_1442], mem[_1442 + 196 len ceil32(mem[_1442])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _1315
                        t = t * uint32(_1394) * Mask(112, 0, _1235) / (10000 * Mask(112, 0, _1251)) + (t * uint32(_1394))
                        continue 
                    _1395 = mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 160]
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _1235) and 10000 > -1 / Mask(112, 0, _1235):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _1235) > (-1 * t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]) - 1:
                        revert with 'NH{q', 17
                    if t and mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] > -1 / t:
                        revert with 'NH{q', 17
                    if t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4] and Mask(112, 0, _1251) > -1 / t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _1235)) + (t * mem[(32 * idx) + (32 * arg4.length - 32 / 24) + 188 len 4]):
                        revert with 'NH{q', 18
                    _1443 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1443 + 36] = 0
                    mem[_1443 + 68] = t * uint32(_1395) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1395))
                    mem[_1443 + 100] = address(_1363)
                    mem[_1443 + 132] = 128
                    mem[_1443 + 164] = mem[_1443]
                    s = 0
                    while s < mem[_1443]:
                        mem[_1443 + s + 196] = mem[_1443 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1443]) > mem[_1443]:
                        mem[_1443 + mem[_1443] + 196] = 0
                    require ext_code.size(address(_1201))
                    call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, t * uint32(_1395) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1395)), address(_1363), 128, mem[_1443], mem[_1443 + 196 len ceil32(mem[_1443])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1201))
                    staticcall address(_1201).token1() with:
                            gas gas_remaining wei
                    mem[_1443 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1443 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    t = t * uint32(_1395) * Mask(112, 0, _1251) / (10000 * Mask(112, 0, _1235)) + (t * uint32(_1395))
                    continue 
                if t < call.data[arg4 + arg4.length + 4]:
                    revert with 0, 'amountOut < amountIn'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = call.data[arg4 + arg4.length + 4]
                require ext_code.size(address(_535))
                call address(_535).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], call.data[arg4 + arg4.length + 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1267] == bool(mem[_1267])
}



}
