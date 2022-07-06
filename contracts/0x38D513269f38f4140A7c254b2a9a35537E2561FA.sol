contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c9c13eca(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b98c491a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        return 1
    else:
        return 0
}

function sub_4e96a543(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_754c7d24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_820f3628(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = address(arg2)
    if address(arg2) == address(arg3):
        mem[160] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg6
        mem[228] = 1
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(arg5)
        mem[324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223
        if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[160] = address(arg3)
        mem[192] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg6
        mem[260] = 1
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 420
        t = 128
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = address(arg5)
        mem[356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255
        if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307():
            revert with 'NH{q', 65
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 <= return_data.size
}

function sub_e5c6a5a8(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require calldata.size > cd[132] + 35
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    s = cd[132] + 36
    t = 128
    idx = 0
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[36]) == address(cd[68]):
        mem[ceil32(32 * ('cd', 132).length) + 97] = 2
        mem[64] = ceil32(32 * ('cd', 132).length) + 193
        mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[100])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _74 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[164]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _77 = mem[ceil32(32 * ('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + 97]
            s = 0
            t = mem[64] + 196
            u = ceil32(32 * ('cd', 132).length) + 129
            while s < _77:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = address(_74)
            mem[mem[64] + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[164], 1, 160, address(_74), block.timestamp + 30, mem[mem[64] + 164 len (32 * _77) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_97]
            require mem[_97] <= test266151307()
            require _97 + return_data.size > _97 + mem[_97] + 31
            _101 = mem[_97 + mem[_97]]
            if mem[_97 + mem[_97]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_97 + mem[_97]]) + 1 < 0 or _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1
            mem[_97 + ceil32(return_data.size)] = _101
            require _99 + (32 * _101) + 32 <= return_data.size
            t = _97 + _99 + 32
            u = _97 + ceil32(return_data.size) + 32
            s = 0
            while s < _101:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if gas_remaining < 100000:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * ('cd', 132).length) + 97] = 3
        mem[64] = ceil32(32 * ('cd', 132).length) + 225
        mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[68])
        mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _72 = mem[(32 * idx) + 128]
            _73 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[164]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _76 = mem[ceil32(32 * ('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + 97]
            s = 0
            t = mem[64] + 196
            u = ceil32(32 * ('cd', 132).length) + 129
            while s < _76:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 100] = address(_72)
            mem[_73 + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _73 + (32 * _76) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + return_data.size > _96 + mem[_96] + 31
            _100 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_96 + mem[_96]]) + 1 < 0 or _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1
            mem[_96 + ceil32(return_data.size)] = _100
            require _98 + (32 * _100) + 32 <= return_data.size
            t = _96 + _98 + 32
            u = _96 + ceil32(return_data.size) + 32
            s = 0
            while s < _100:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if gas_remaining < 100000:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xb98c491a(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe5c6a5a8(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xb98c491a(?????):
                    if unknown_0xc9c13eca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    return 1
                else:
                    return 0
            if uint32(call.func_hash) >> 224 != unknown_0xe5c6a5a8(?????):
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                if uint32(call.func_hash) >> 224 != unknown_0xf8b2cb4f(?????):
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require not msg.value
            require calldata.size - 4 >= 192
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            require cd[100] == address(cd[100])
            require cd[132] <= test266151307()
            require calldata.size > cd[132] + 35
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[128] = ('cd', 132).length
            require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
            s = cd[132] + 36
            t = 160
            idx = 0
            while idx < ('cd', 132).length:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if address(cd[36]) == address(cd[68]):
                mem[ceil32(32 * ('cd', 132).length) + 129] = 2
                mem[64] = ceil32(32 * ('cd', 132).length) + 225
                mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                while idx < ('cd', 132).length:
                    if idx >= mem[128]:
                        revert with 'NH{q', 50
                    _164 = mem[(32 * idx) + 160]
                    _165 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[164]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _167 = mem[ceil32(32 * ('cd', 132).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + 129]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(32 * ('cd', 132).length) + 161
                    while s < _167:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_165 + 100] = address(_164)
                    mem[_165 + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _165 + (32 * _167) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _187 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _189 = mem[_187]
                    require mem[_187] <= test266151307()
                    require _187 + return_data.size > _187 + mem[_187] + 31
                    _191 = mem[_187 + mem[_187]]
                    if mem[_187 + mem[_187]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_187 + mem[_187]]) + 1 < 0 or _187 + ceil32(return_data.size) + ceil32(32 * mem[_187 + mem[_187]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _187 + ceil32(return_data.size) + ceil32(32 * mem[_187 + mem[_187]]) + 1
                    mem[_187 + ceil32(return_data.size)] = _191
                    require _189 + (32 * _191) + 32 <= return_data.size
                    t = _187 + _189 + 32
                    u = _187 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _191:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if gas_remaining < 100000:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(32 * ('cd', 132).length) + 129] = 3
                mem[64] = ceil32(32 * ('cd', 132).length) + 257
                mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[68])
                mem[ceil32(32 * ('cd', 132).length) + 225] = address(cd[100])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                while idx < ('cd', 132).length:
                    if idx >= mem[128]:
                        revert with 'NH{q', 50
                    _162 = mem[(32 * idx) + 160]
                    _163 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[164]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _166 = mem[ceil32(32 * ('cd', 132).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + 129]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(32 * ('cd', 132).length) + 161
                    while s < _166:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_163 + 100] = address(_162)
                    mem[_163 + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _163 + (32 * _166) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _186 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _188 = mem[_186]
                    require mem[_186] <= test266151307()
                    require _186 + return_data.size > _186 + mem[_186] + 31
                    _190 = mem[_186 + mem[_186]]
                    if mem[_186 + mem[_186]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_186 + mem[_186]]) + 1 < 0 or _186 + ceil32(return_data.size) + ceil32(32 * mem[_186 + mem[_186]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _186 + ceil32(return_data.size) + ceil32(32 * mem[_186 + mem[_186]]) + 1
                    mem[_186 + ceil32(return_data.size)] = _190
                    require _188 + (32 * _190) + 32 <= return_data.size
                    t = _186 + _188 + 32
                    u = _186 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _190:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if gas_remaining < 100000:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if unknown_0x754c7d24(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x4e96a543(?????):
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x754c7d24(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x820f3628(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == address(cd[100])
                    require cd[132] == address(cd[132])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[160] = address(cd[36])
                    if address(cd[36]) == address(cd[68]):
                        mem[192] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[228] = cd[164]
                        mem[260] = 1
                        mem[292] = 160
                        mem[388] = 2
                        idx = 0
                        s = 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[324] = address(cd[132])
                        mem[356] = block.timestamp + 30
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[164], 1, Array(len=2, data=mem[420 len 64]), address(cd[132]), block.timestamp + 30
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[224 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                        require return_data.size + 224 > mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + 255
                        if mem[mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 225 > test266151307():
                            revert with 'NH{q', 65
                        require mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 32 <= return_data.size
                    else:
                        mem[192] = address(cd[68])
                        mem[224] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[260] = cd[164]
                        mem[292] = 1
                        mem[324] = 160
                        mem[420] = 3
                        idx = 0
                        s = 452
                        t = 160
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[356] = address(cd[132])
                        mem[388] = block.timestamp + 30
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[164], 1, Array(len=3, data=mem[452 len 96]), address(cd[132]), block.timestamp + 30
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[256 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                        require return_data.size + 256 > mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + 287
                        if mem[mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + 256] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 257 > test266151307():
                            revert with 'NH{q', 65
                        require mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 32 <= return_data.size
}



}
