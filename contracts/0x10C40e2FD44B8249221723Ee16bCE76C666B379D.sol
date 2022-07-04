contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_37413ce2(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    require cd[228] == cd[228]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 132).length) + 101] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(('cd', 132).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[164]:
        revert with 0, 'Not enough balance for one tx'
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 101] = this.address
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 133] = address(cd[4])
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(cd[4])
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == -1:
        if address(cd[36]) == address(cd[68]):
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 2
            mem[64] = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 193
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[100])
            if block.timestamp > -cd[228] - 1:
                revert with 'NH{q', 17
            idx = 0
            s = cd[164]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _152 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _159 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                t = 0
                u = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                v = mem[64] + 196
                while t < _159:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(_152)
                mem[mem[64] + 132] = block.timestamp + cd[228]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(_152), block.timestamp + cd[228], mem[mem[64] + 164 len (32 * _159) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _199 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _203 = mem[_199]
                require mem[_199] <= test266151307()
                require _199 + mem[_199] + 31 < _199 + return_data.size
                _207 = mem[_199 + mem[_199]]
                if mem[_199 + mem[_199]] > test266151307():
                    revert with 'NH{q', 65
                if _199 + ceil32(return_data.size) + floor32(mem[_199 + mem[_199]]) + 1 > test266151307() or floor32(mem[_199 + mem[_199]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _199 + ceil32(return_data.size) + floor32(mem[_199 + mem[_199]]) + 1
                mem[_199 + ceil32(return_data.size)] = _207
                require _203 + (32 * _207) + 32 <= return_data.size
                t = 0
                u = _199 + _203 + 32
                v = _199 + ceil32(return_data.size) + 32
                while t < _207:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if s > -cd[196] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + cd[196]
                continue 
        else:
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 3
            mem[64] = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
            if block.timestamp > -cd[228] - 1:
                revert with 'NH{q', 17
            idx = 0
            s = cd[164]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _150 = mem[(32 * idx) + 128]
                _151 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _158 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                t = 0
                u = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                v = mem[64] + 196
                while t < _158:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_151 + 100] = address(_150)
                mem[_151 + 132] = block.timestamp + cd[228]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _151 + (32 * _158) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _202 = mem[_198]
                require mem[_198] <= test266151307()
                require _198 + mem[_198] + 31 < _198 + return_data.size
                _206 = mem[_198 + mem[_198]]
                if mem[_198 + mem[_198]] > test266151307():
                    revert with 'NH{q', 65
                if _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1 > test266151307() or floor32(mem[_198 + mem[_198]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1
                mem[_198 + ceil32(return_data.size)] = _206
                require _202 + (32 * _206) + 32 <= return_data.size
                t = 0
                u = _198 + _202 + 32
                v = _198 + ceil32(return_data.size) + 32
                while t < _206:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if s > -cd[196] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + cd[196]
                continue 
    else:
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 133] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if address(cd[36]) == address(cd[68]):
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97] = 2
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 161] = address(cd[100])
            if block.timestamp > -cd[228] - 1:
                revert with 'NH{q', 17
            idx = 0
            s = cd[164]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _156 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _161 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97]
                t = 0
                u = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129
                v = mem[64] + 196
                while t < _161:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(_156)
                mem[mem[64] + 132] = block.timestamp + cd[228]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(_156), block.timestamp + cd[228], mem[mem[64] + 164 len (32 * _161) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _201 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _205 = mem[_201]
                require mem[_201] <= test266151307()
                require _201 + mem[_201] + 31 < _201 + return_data.size
                _209 = mem[_201 + mem[_201]]
                if mem[_201 + mem[_201]] > test266151307():
                    revert with 'NH{q', 65
                if _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1 > test266151307() or floor32(mem[_201 + mem[_201]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1
                mem[_201 + ceil32(return_data.size)] = _209
                require _205 + (32 * _209) + 32 <= return_data.size
                t = 0
                u = _201 + _205 + 32
                v = _201 + ceil32(return_data.size) + 32
                while t < _209:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if s > -cd[196] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + cd[196]
                continue 
        else:
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97] = 3
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 225
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193] = address(cd[100])
            if block.timestamp > -cd[228] - 1:
                revert with 'NH{q', 17
            idx = 0
            s = cd[164]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _154 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _160 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97]
                t = 0
                u = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129
                v = mem[64] + 196
                while t < _160:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(_154)
                mem[mem[64] + 132] = block.timestamp + cd[228]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(_154), block.timestamp + cd[228], mem[mem[64] + 164 len (32 * _160) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _204 = mem[_200]
                require mem[_200] <= test266151307()
                require _200 + mem[_200] + 31 < _200 + return_data.size
                _208 = mem[_200 + mem[_200]]
                if mem[_200 + mem[_200]] > test266151307():
                    revert with 'NH{q', 65
                if _200 + ceil32(return_data.size) + floor32(mem[_200 + mem[_200]]) + 1 > test266151307() or floor32(mem[_200 + mem[_200]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _200 + ceil32(return_data.size) + floor32(mem[_200 + mem[_200]]) + 1
                mem[_200 + ceil32(return_data.size)] = _208
                require _204 + (32 * _208) + 32 <= return_data.size
                t = 0
                u = _200 + _204 + 32
                v = _200 + ceil32(return_data.size) + 32
                while t < _208:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if s > -cd[196] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + cd[196]
                continue 
}



}
