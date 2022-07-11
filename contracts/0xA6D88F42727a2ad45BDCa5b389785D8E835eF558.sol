contract main {




// =====================  Runtime code  =====================


#
#  - sub_a9e01880(?)
#
address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        require owner == msg.sender
    stor1[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        require owner == msg.sender
    require arg1 != msg.sender
    stor1[address(arg1)] = 0
}

function sub_c9c13eca(?) {
    if not stor1[msg.sender]:
        require owner == msg.sender
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
    if not stor1[msg.sender]:
        require owner == msg.sender
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
    if not stor1[msg.sender]:
        require owner == msg.sender
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

function sub_5f4a1b37(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not stor1[msg.sender]:
        require owner == msg.sender
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
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
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
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
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

function sub_cc99467c(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not stor1[msg.sender]:
        require owner == msg.sender
    mem[128] = address(arg2)
    if address(arg2) == address(arg3):
        mem[160] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[196] = arg6
        mem[228] = arg7
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(arg5)
        mem[324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 30
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
        mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[228] = arg6
        mem[260] = arg7
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = address(arg5)
        mem[356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 30
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

function sub_6bb459d8(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
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
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + 193
            mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _162 = mem[(32 * idx) + 128]
                _163 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _169 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _169:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_163 + 132] = address(_162)
                mem[_163 + 164] = block.timestamp + 30
                _219 = mem[64]
                mem[mem[64]] = _163 + (32 * _169) + -mem[64] + 196
                mem[64] = _163 + (32 * _169) + 228
                mem[_219 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_219 + 36 len 28]
                _229 = mem[_219]
                s = 0
                while s < _229:
                    mem[s + _163 + (32 * _169) + 228] = mem[_219 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_229) > _229:
                    mem[_163 + (32 * _169) + _229 + 228] = 0
                call address(cd[4]).mem[_163 + (32 * _169) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_163 + (32 * _169) + 232 len _229 - 4]
                if return_data.size:
                    mem[64] = _163 + (32 * _169) + ceil32(return_data.size) + 229
                    mem[_163 + (32 * _169) + 228] = return_data.size
                    mem[_163 + (32 * _169) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
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
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _160 = mem[(32 * idx) + 128]
                _161 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _168 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _168:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_161 + 132] = address(_160)
                mem[_161 + 164] = block.timestamp + 30
                _216 = mem[64]
                mem[mem[64]] = _161 + (32 * _168) + -mem[64] + 196
                mem[64] = _161 + (32 * _168) + 228
                mem[_216 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_216 + 36 len 28]
                _228 = mem[_216]
                s = 0
                while s < _228:
                    mem[s + _161 + (32 * _168) + 228] = mem[_216 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_161 + (32 * _168) + _228 + 228] = 0
                call address(cd[4]).mem[_161 + (32 * _168) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_161 + (32 * _168) + 232 len _228 - 4]
                if return_data.size:
                    mem[64] = _161 + (32 * _168) + ceil32(return_data.size) + 229
                    mem[_161 + (32 * _168) + 228] = return_data.size
                    mem[_161 + (32 * _168) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
                continue 
    else:
        require owner == msg.sender
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + 193
            mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _166 = mem[(32 * idx) + 128]
                _167 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _171 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _171:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_167 + 132] = address(_166)
                mem[_167 + 164] = block.timestamp + 30
                _225 = mem[64]
                mem[mem[64]] = _167 + (32 * _171) + -mem[64] + 196
                mem[64] = _167 + (32 * _171) + 228
                mem[_225 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_225 + 36 len 28]
                _231 = mem[_225]
                s = 0
                while s < _231:
                    mem[s + _167 + (32 * _171) + 228] = mem[_225 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_231) > _231:
                    mem[_167 + (32 * _171) + _231 + 228] = 0
                call address(cd[4]).mem[_167 + (32 * _171) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_167 + (32 * _171) + 232 len _231 - 4]
                if return_data.size:
                    mem[64] = _167 + (32 * _171) + ceil32(return_data.size) + 229
                    mem[_167 + (32 * _171) + 228] = return_data.size
                    mem[_167 + (32 * _171) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
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
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _164 = mem[(32 * idx) + 128]
                _165 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _170 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _170:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_165 + 132] = address(_164)
                mem[_165 + 164] = block.timestamp + 30
                _222 = mem[64]
                mem[mem[64]] = _165 + (32 * _170) + -mem[64] + 196
                mem[64] = _165 + (32 * _170) + 228
                mem[_222 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_222 + 36 len 28]
                _230 = mem[_222]
                s = 0
                while s < _230:
                    mem[s + _165 + (32 * _170) + 228] = mem[_222 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_230) > _230:
                    mem[_165 + (32 * _170) + _230 + 228] = 0
                call address(cd[4]).mem[_165 + (32 * _170) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_165 + (32 * _170) + 232 len _230 - 4]
                if return_data.size:
                    mem[64] = _165 + (32 * _170) + ceil32(return_data.size) + 229
                    mem[_165 + (32 * _170) + 228] = return_data.size
                    mem[_165 + (32 * _170) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
                continue 
}

function sub_0471ba89(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
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
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + 193
            mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _162 = mem[(32 * idx) + 128]
                _163 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _169 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _169:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_163 + 132] = address(_162)
                mem[_163 + 164] = block.timestamp + 30
                _219 = mem[64]
                mem[mem[64]] = _163 + (32 * _169) + -mem[64] + 196
                mem[64] = _163 + (32 * _169) + 228
                mem[_219 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_219 + 36 len 28]
                _229 = mem[_219]
                s = 0
                while s < _229:
                    mem[s + _163 + (32 * _169) + 228] = mem[_219 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_229) > _229:
                    mem[_163 + (32 * _169) + _229 + 228] = 0
                call address(cd[4]).mem[_163 + (32 * _169) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_163 + (32 * _169) + 232 len _229 - 4]
                if return_data.size:
                    mem[64] = _163 + (32 * _169) + ceil32(return_data.size) + 229
                    mem[_163 + (32 * _169) + 228] = return_data.size
                    mem[_163 + (32 * _169) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
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
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _160 = mem[(32 * idx) + 128]
                _161 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _168 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _168:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_161 + 132] = address(_160)
                mem[_161 + 164] = block.timestamp + 30
                _216 = mem[64]
                mem[mem[64]] = _161 + (32 * _168) + -mem[64] + 196
                mem[64] = _161 + (32 * _168) + 228
                mem[_216 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_216 + 36 len 28]
                _228 = mem[_216]
                s = 0
                while s < _228:
                    mem[s + _161 + (32 * _168) + 228] = mem[_216 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_161 + (32 * _168) + _228 + 228] = 0
                call address(cd[4]).mem[_161 + (32 * _168) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_161 + (32 * _168) + 232 len _228 - 4]
                if return_data.size:
                    mem[64] = _161 + (32 * _168) + ceil32(return_data.size) + 229
                    mem[_161 + (32 * _168) + 228] = return_data.size
                    mem[_161 + (32 * _168) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
                continue 
    else:
        require owner == msg.sender
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + 193
            mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _166 = mem[(32 * idx) + 128]
                _167 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _171 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _171:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_167 + 132] = address(_166)
                mem[_167 + 164] = block.timestamp + 30
                _225 = mem[64]
                mem[mem[64]] = _167 + (32 * _171) + -mem[64] + 196
                mem[64] = _167 + (32 * _171) + 228
                mem[_225 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_225 + 36 len 28]
                _231 = mem[_225]
                s = 0
                while s < _231:
                    mem[s + _167 + (32 * _171) + 228] = mem[_225 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_231) > _231:
                    mem[_167 + (32 * _171) + _231 + 228] = 0
                call address(cd[4]).mem[_167 + (32 * _171) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_167 + (32 * _171) + 232 len _231 - 4]
                if return_data.size:
                    mem[64] = _167 + (32 * _171) + ceil32(return_data.size) + 229
                    mem[_167 + (32 * _171) + 228] = return_data.size
                    mem[_167 + (32 * _171) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
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
            s = 0
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _164 = mem[(32 * idx) + 128]
                _165 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _170 = mem[ceil32(32 * ('cd', 132).length) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + 129
                u = mem[64] + 228
                while s < _170:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_165 + 132] = address(_164)
                mem[_165 + 164] = block.timestamp + 30
                _222 = mem[64]
                mem[mem[64]] = _165 + (32 * _170) + -mem[64] + 196
                mem[64] = _165 + (32 * _170) + 228
                mem[_222 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_222 + 36 len 28]
                _230 = mem[_222]
                s = 0
                while s < _230:
                    mem[s + _165 + (32 * _170) + 228] = mem[_222 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_230) > _230:
                    mem[_165 + (32 * _170) + _230 + 228] = 0
                call address(cd[4]).mem[_165 + (32 * _170) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_165 + (32 * _170) + 232 len _230 - 4]
                if return_data.size:
                    mem[64] = _165 + (32 * _170) + ceil32(return_data.size) + 229
                    mem[_165 + (32 * _170) + 228] = return_data.size
                    mem[_165 + (32 * _170) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = ext_call.success
                continue 
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0xa9e01880(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x6bb459d8(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x6bb459d8(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x754c7d24(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if not stor1[msg.sender]:
                        require owner == msg.sender
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
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require cd[100] == address(cd[100])
                require cd[132] <= test266151307()
                require cd[132] + 35 < calldata.size
                if ('cd', 132).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                    revert with 'NH{q', 65
                mem[128] = ('cd', 132).length
                require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                idx = 0
                s = cd[132] + 36
                t = 160
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if address(cd[36]) == address(cd[68]):
                        mem[ceil32(32 * ('cd', 132).length) + 129] = 2
                        mem[64] = ceil32(32 * ('cd', 132).length) + 225
                        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                        mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4474 = mem[(32 * idx) + 160]
                            _4475 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = 160
                            _4489 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4489:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 132] = address(_4474)
                            mem[mem[64] + 164] = block.timestamp + 30
                            _6527 = mem[64]
                            mem[mem[64]] = (32 * _4489) + 196
                            mem[64] = mem[64] + (32 * _4489) + 228
                            mem[_6527 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_6527 + 36 len 28]
                            _6637 = mem[_6527]
                            s = 0
                            while s < _6637:
                                mem[s + _4475 + (32 * _4489) + 228] = mem[_6527 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6637) <= _6637:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6637 + _4475 + (32 * _4489) + -mem[64] + 224]
                                if return_data.size:
                                    _8242 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8242] = return_data.size
                                    mem[_8242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4475 + (32 * _4489) + _6637 + 228] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6637 + _4475 + (32 * _4489) + -mem[64] + 224]
                                if return_data.size:
                                    _8317 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8317] = return_data.size
                                    mem[_8317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
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
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4472 = mem[(32 * idx) + 160]
                            _4473 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = 160
                            _4488 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4488:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4473 + 132] = address(_4472)
                            mem[_4473 + 164] = block.timestamp + 30
                            _6524 = mem[64]
                            mem[mem[64]] = _4473 + (32 * _4488) + -mem[64] + 196
                            mem[64] = _4473 + (32 * _4488) + 228
                            mem[_6524 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_6524 + 36 len 28]
                            _6636 = mem[_6524]
                            s = 0
                            while s < _6636:
                                mem[s + _4473 + (32 * _4488) + 228] = mem[_6524 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6636) > _6636:
                                mem[_4473 + (32 * _4488) + _6636 + 228] = 0
                            call address(cd[4]).mem[_4473 + (32 * _4488) + 228 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4473 + (32 * _4488) + 232 len _6636 - 4]
                            if return_data.size:
                                mem[64] = _4473 + (32 * _4488) + ceil32(return_data.size) + 229
                                mem[_4473 + (32 * _4488) + 228] = return_data.size
                                mem[_4473 + (32 * _4488) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
                            continue 
                else:
                    require owner == msg.sender
                    if address(cd[36]) == address(cd[68]):
                        mem[ceil32(32 * ('cd', 132).length) + 129] = 2
                        mem[64] = ceil32(32 * ('cd', 132).length) + 225
                        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                        mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4478 = mem[(32 * idx) + 160]
                            _4479 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = 160
                            _4491 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4491:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 132] = address(_4478)
                            mem[mem[64] + 164] = block.timestamp + 30
                            _6533 = mem[64]
                            mem[mem[64]] = (32 * _4491) + 196
                            mem[64] = mem[64] + (32 * _4491) + 228
                            mem[_6533 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_6533 + 36 len 28]
                            _6639 = mem[_6533]
                            s = 0
                            while s < _6639:
                                mem[s + _4479 + (32 * _4491) + 228] = mem[_6533 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6639) <= _6639:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6639 + _4479 + (32 * _4491) + -mem[64] + 224]
                                if return_data.size:
                                    _8246 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8246] = return_data.size
                                    mem[_8246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4479 + (32 * _4491) + _6639 + 228] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6639 + _4479 + (32 * _4491) + -mem[64] + 224]
                                if return_data.size:
                                    _8319 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8319] = return_data.size
                                    mem[_8319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
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
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4476 = mem[(32 * idx) + 160]
                            _4477 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = 160
                            _4490 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4490:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4477 + 132] = address(_4476)
                            mem[_4477 + 164] = block.timestamp + 30
                            _6530 = mem[64]
                            mem[mem[64]] = _4477 + (32 * _4490) + -mem[64] + 196
                            mem[64] = _4477 + (32 * _4490) + 228
                            mem[_6530 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_6530 + 36 len 28]
                            _6638 = mem[_6530]
                            s = 0
                            while s < _6638:
                                mem[s + _4477 + (32 * _4490) + 228] = mem[_6530 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6638) > _6638:
                                mem[_4477 + (32 * _4490) + _6638 + 228] = 0
                            call address(cd[4]).mem[_4477 + (32 * _4490) + 228 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4477 + (32 * _4490) + 232 len _6638 - 4]
                            if return_data.size:
                                mem[64] = _4477 + (32 * _4490) + ceil32(return_data.size) + 229
                                mem[_4477 + (32 * _4490) + 228] = return_data.size
                                mem[_4477 + (32 * _4490) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
                            continue 
        else:
            if unknown_0x0471ba89(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 224
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require cd[100] == address(cd[100])
                require cd[132] <= test266151307()
                require cd[132] + 35 < calldata.size
                if ('cd', 132).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                    revert with 'NH{q', 65
                mem[128] = ('cd', 132).length
                require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                idx = 0
                s = cd[132] + 36
                t = 160
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if address(cd[36]) == address(cd[68]):
                        mem[ceil32(32 * ('cd', 132).length) + 129] = 2
                        mem[64] = ceil32(32 * ('cd', 132).length) + 225
                        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                        mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4466 = mem[(32 * idx) + 160]
                            _4467 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = cd[196]
                            mem[mem[64] + 100] = 160
                            _4485 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4485:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4467 + 132] = address(_4466)
                            mem[_4467 + 164] = block.timestamp + 30
                            _6515 = mem[64]
                            mem[mem[64]] = _4467 + (32 * _4485) + -mem[64] + 196
                            mem[64] = _4467 + (32 * _4485) + 228
                            mem[_6515 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_6515 + 36 len 28]
                            _6633 = mem[_6515]
                            s = 0
                            while s < _6633:
                                mem[s + _4467 + (32 * _4485) + 228] = mem[_6515 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6633) > _6633:
                                mem[_4467 + (32 * _4485) + _6633 + 228] = 0
                            call address(cd[4]).mem[_4467 + (32 * _4485) + 228 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4467 + (32 * _4485) + 232 len _6633 - 4]
                            if return_data.size:
                                mem[64] = _4467 + (32 * _4485) + ceil32(return_data.size) + 229
                                mem[_4467 + (32 * _4485) + 228] = return_data.size
                                mem[_4467 + (32 * _4485) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
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
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4464 = mem[(32 * idx) + 160]
                            _4465 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = cd[196]
                            mem[mem[64] + 100] = 160
                            _4484 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4484:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 132] = address(_4464)
                            mem[mem[64] + 164] = block.timestamp + 30
                            _6512 = mem[64]
                            mem[mem[64]] = (32 * _4484) + 196
                            mem[64] = mem[64] + (32 * _4484) + 228
                            mem[_6512 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_6512 + 36 len 28]
                            _6632 = mem[_6512]
                            s = 0
                            while s < _6632:
                                mem[s + _4465 + (32 * _4484) + 228] = mem[_6512 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6632) <= _6632:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6632 + _4465 + (32 * _4484) + -mem[64] + 224]
                                if return_data.size:
                                    _8232 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8232] = return_data.size
                                    mem[_8232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4465 + (32 * _4484) + _6632 + 228] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6632 + _4465 + (32 * _4484) + -mem[64] + 224]
                                if return_data.size:
                                    _8312 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8312] = return_data.size
                                    mem[_8312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
                            continue 
                else:
                    require owner == msg.sender
                    if address(cd[36]) == address(cd[68]):
                        mem[ceil32(32 * ('cd', 132).length) + 129] = 2
                        mem[64] = ceil32(32 * ('cd', 132).length) + 225
                        mem[ceil32(32 * ('cd', 132).length) + 161] = address(cd[36])
                        mem[ceil32(32 * ('cd', 132).length) + 193] = address(cd[100])
                        if 30 > !block.timestamp:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4470 = mem[(32 * idx) + 160]
                            _4471 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = cd[196]
                            mem[mem[64] + 100] = 160
                            _4487 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4487:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 132] = address(_4470)
                            mem[mem[64] + 164] = block.timestamp + 30
                            _6521 = mem[64]
                            mem[mem[64]] = (32 * _4487) + 196
                            mem[64] = mem[64] + (32 * _4487) + 228
                            mem[_6521 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_6521 + 36 len 28]
                            _6635 = mem[_6521]
                            s = 0
                            while s < _6635:
                                mem[s + _4471 + (32 * _4487) + 228] = mem[_6521 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6635) <= _6635:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6635 + _4471 + (32 * _4487) + -mem[64] + 224]
                                if return_data.size:
                                    _8238 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8238] = return_data.size
                                    mem[_8238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4471 + (32 * _4487) + _6635 + 228] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6635 + _4471 + (32 * _4487) + -mem[64] + 224]
                                if return_data.size:
                                    _8315 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8315] = return_data.size
                                    mem[_8315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
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
                        s = 0
                        while idx < ('cd', 132).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _4468 = mem[(32 * idx) + 160]
                            _4469 = mem[64]
                            mem[mem[64] + 36] = cd[164]
                            mem[mem[64] + 68] = cd[196]
                            mem[mem[64] + 100] = 160
                            _4486 = mem[ceil32(32 * ('cd', 132).length) + 129]
                            mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + 129]
                            s = 0
                            t = ceil32(32 * ('cd', 132).length) + 161
                            u = mem[64] + 228
                            while s < _4486:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4469 + 132] = address(_4468)
                            mem[_4469 + 164] = block.timestamp + 30
                            _6518 = mem[64]
                            mem[mem[64]] = _4469 + (32 * _4486) + -mem[64] + 196
                            mem[64] = _4469 + (32 * _4486) + 228
                            mem[_6518 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_6518 + 36 len 28]
                            _6634 = mem[_6518]
                            s = 0
                            while s < _6634:
                                mem[s + _4469 + (32 * _4486) + 228] = mem[_6518 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6634) > _6634:
                                mem[_4469 + (32 * _4486) + _6634 + 228] = 0
                            call address(cd[4]).mem[_4469 + (32 * _4486) + 228 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4469 + (32 * _4486) + 232 len _6634 - 4]
                            if return_data.size:
                                mem[64] = _4469 + (32 * _4486) + ceil32(return_data.size) + 229
                                mem[_4469 + (32 * _4486) + 228] = return_data.size
                                mem[_4469 + (32 * _4486) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = ext_call.success
                            continue 
            else:
                if unknown_0x485d7d94(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not stor1[msg.sender]:
                        require owner == msg.sender
                    require address(cd[4]) != msg.sender
                    stor1[address(cd[4])] = 0
                else:
                    if unknown_0x4e96a543(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not stor1[msg.sender]:
                            require owner == msg.sender
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
                        if unknown_0x5f4a1b37(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 192
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            require cd[68] == address(cd[68])
                            require cd[100] == address(cd[100])
                            require cd[132] == address(cd[132])
                            if not stor1[msg.sender]:
                                require owner == msg.sender
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
                                s = 160
                                t = 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
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
                                s = 160
                                t = 452
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
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
    if unknown_0xcf1c316a(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xcf1c316a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if not stor1[msg.sender]:
                require owner == msg.sender
            stor1[address(cd[4])] = 1
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
            if uint32(call.func_hash) >> 224 != unknown_0xfe9fbb80(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return bool(stor1[cd[4]])
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
    if uint32(call.func_hash) >> 224 != unknown_0xa9e01880(?????):
        if unknown_0xb98c491a(?????) == uint32(call.func_hash) >> 224:
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
        if unknown_0xc9c13eca(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if not stor1[msg.sender]:
                require owner == msg.sender
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xcc99467c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 224
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require cd[100] == address(cd[100])
                require cd[132] == address(cd[132])
                if not stor1[msg.sender]:
                    require owner == msg.sender
                mem[160] = address(cd[36])
                if address(cd[36]) == address(cd[68]):
                    mem[192] = address(cd[100])
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[228] = cd[164]
                    mem[260] = cd[196]
                    mem[292] = 160
                    mem[388] = 2
                    idx = 0
                    s = 160
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[324] = address(cd[132])
                    mem[356] = block.timestamp + 30
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[164], cd[196], Array(len=2, data=mem[420 len 64]), address(cd[132]), block.timestamp + 30
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
                    mem[256] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[260] = cd[164]
                    mem[292] = cd[196]
                    mem[324] = 160
                    mem[420] = 3
                    idx = 0
                    s = 160
                    t = 452
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[356] = address(cd[132])
                    mem[388] = block.timestamp + 30
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[164], cd[196], Array(len=3, data=mem[452 len 96]), address(cd[132]), block.timestamp + 30
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
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        mem[132] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[132]:
            revert with 0, 'Not enough balance for testing!'
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(return_data.size) + 160] = address(cd[36])
            mem[ceil32(return_data.size) + 192] = address(cd[100])
            mem[ceil32(return_data.size) + 224] = 2
            mem[ceil32(return_data.size) + 256] = address(cd[100])
            mem[ceil32(return_data.size) + 288] = address(cd[36])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ceil32(return_data.size) + 160
            t = ceil32(return_data.size) + 548
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 320] = 260
            mem[ceil32(return_data.size) + 612 len 288] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 2, mem[ceil32(return_data.size) + 548 len 92]
            mem[ceil32(return_data.size) + 872] = 0
            call address(cd[4]).mem[ceil32(return_data.size) + 612 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 616 len 256]
            if not ext_call.success:
                revert with 0, 'Buy failed'
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not return_data.size:
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    idx = 0
                    s = ceil32(return_data.size) + 256
                    t = (4 * ceil32(return_data.size)) + 840
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + 840 len 92]
                    mem[(4 * ceil32(return_data.size)) + 1164] = 0
                    call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 904 len 4] with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 908 len 256]
                    if not ext_call.success:
                        revert with 0, 'Sell failed'
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                        revert with 'NH{q', 17
                    if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if not return_data.size:
                        if 2 * cd[132] > cd[132]:
                            revert with 0, 'Less than 50% tax', mem[(6 * ceil32(return_data.size)) + 1004 len 9 * ceil32(return_data.size)]
                        revert with 0, 'More than 50% tax', mem[(6 * ceil32(return_data.size)) + 1004 len 9 * ceil32(return_data.size)]
                    if 2 * cd[132] > cd[132]:
                        revert with 0, 
                                    'Less than 50% tax',
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                    revert with 0, 
                                'More than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = ceil32(return_data.size) + 256
                t = (6 * ceil32(return_data.size)) + 840
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(6 * ceil32(return_data.size)) + 840 len 92]
                call address(cd[4]).mem[(6 * ceil32(return_data.size)) + 904 len 4] with:
                     gas gas_remaining wei
                    args mem[(6 * ceil32(return_data.size)) + 908 len 256]
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * cd[132] > cd[132]:
                    revert with 0, 'Less than 50% tax'
                revert with 0, 'More than 50% tax'
            if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = ceil32(return_data.size) + 256
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1165] = 0
                call address(cd[4]).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Sell failed'
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                        revert with 'NH{q', 17
                    if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 2 * cd[132] > cd[132]:
                        revert with 0, 
                                    'Less than 50% tax',
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                    revert with 0, 
                                'More than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 910] = 32
                    mem[(8 * ceil32(return_data.size)) + 942] = 11
                    mem[(8 * ceil32(return_data.size)) + 974] = 'Sell failed'
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 906
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * cd[132] > cd[132]:
                    revert with 0, 
                                'Less than 50% tax',
                                mem[(9 * ceil32(return_data.size)) + 1006 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                revert with 0, 
                            'More than 50% tax',
                            mem[(9 * ceil32(return_data.size)) + 1006 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1165] = 0
            call address(cd[4]).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * cd[132] > cd[132]:
                    revert with 0, 'Less than 50% tax'
                revert with 0, 'More than 50% tax'
            if not ext_call.success:
                revert with 0, 
                            'Sell failed',
                            mem[(9 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 
                            'Less than 50% tax',
                            mem[(10 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            revert with 0, 
                        'More than 50% tax',
                        mem[(10 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[ceil32(return_data.size) + 128] = 3
        mem[ceil32(return_data.size) + 160] = address(cd[36])
        mem[ceil32(return_data.size) + 192] = address(cd[68])
        mem[ceil32(return_data.size) + 224] = address(cd[100])
        mem[ceil32(return_data.size) + 256] = 3
        mem[ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = address(cd[100])
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = address(cd[68])
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        mem[192] = address(cd[36])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 420] = cd[132]
        mem[ceil32(return_data.size) + 452] = 1
        mem[ceil32(return_data.size) + 484] = 160
        mem[ceil32(return_data.size) + 580] = 3
        idx = 0
        s = ceil32(return_data.size) + 288
        t = ceil32(return_data.size) + 612
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 516] = this.address
        mem[ceil32(return_data.size) + 548] = block.timestamp + 30
        mem[ceil32(return_data.size) + 384] = 292
        mem[ceil32(return_data.size) + 416 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
        mem[ceil32(return_data.size) + 708 len 320] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 3, mem[ceil32(return_data.size) + 612 len 124]
        mem[ceil32(return_data.size) + 1000] = 0
        call address(cd[4]).mem[ceil32(return_data.size) + 708 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 712 len 288]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Buy failed'
            mem[ceil32(return_data.size) + 712] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 708] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 712] = this.address
            mem[(2 * ceil32(return_data.size)) + 744] = address(cd[4])
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[4])
            mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 708
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 776] = 1
                mem[(4 * ceil32(return_data.size)) + 808] = 160
                _4832 = mem[96]
                mem[(4 * ceil32(return_data.size)) + 904] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 228
                while idx < _4832:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 840] = this.address
                mem[(4 * ceil32(return_data.size)) + 872] = block.timestamp + 30
                _6548 = mem[64]
                mem[mem[64]] = (4 * ceil32(return_data.size)) + (32 * _4832) + -mem[64] + 904
                mem[64] = (4 * ceil32(return_data.size)) + (32 * _4832) + 936
                mem[_6548 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
                _6644 = mem[_6548]
                mem[(4 * ceil32(return_data.size)) + (32 * _4832) + 936 len ceil32(mem[_6548])] = mem[_6548 + 32 len ceil32(mem[_6548])]
                if ceil32(_6644) > _6644:
                    mem[(4 * ceil32(return_data.size)) + (32 * _4832) + _6644 + 936] = 0
                call address(cd[4]).mem[(4 * ceil32(return_data.size)) + (32 * _4832) + 936 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + (32 * _4832) + 940 len _6644 - 4]
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if not return_data.size:
                    if 2 * cd[132] > cd[132]:
                        revert with 0, 'Less than 50% tax', mem[(6 * ceil32(return_data.size)) + (32 * _4832) + 1036 len 9 * ceil32(return_data.size)]
                    revert with 0, 'More than 50% tax', mem[(6 * ceil32(return_data.size)) + (32 * _4832) + 1036 len 9 * ceil32(return_data.size)]
                if 2 * cd[132] > cd[132]:
                    revert with 0, 
                                'Less than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + (32 * _4832) + ceil32(return_data.size) + 1037 len 9 * ceil32(return_data.size)]
                revert with 0, 
                            'More than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + (32 * _4832) + ceil32(return_data.size) + 1037 len 9 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 712] = address(cd[4])
            mem[(4 * ceil32(return_data.size)) + 744] = -1
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -1
            mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 708
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 776] = 1
            mem[(6 * ceil32(return_data.size)) + 808] = 160
            _4953 = mem[96]
            mem[(6 * ceil32(return_data.size)) + 904] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < _4953:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 840] = this.address
            mem[(6 * ceil32(return_data.size)) + 872] = block.timestamp + 30
            _6551 = mem[64]
            mem[mem[64]] = (6 * ceil32(return_data.size)) + (32 * _4953) + -mem[64] + 904
            mem[64] = (6 * ceil32(return_data.size)) + (32 * _4953) + 936
            mem[_6551 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _6645 = mem[_6551]
            mem[(6 * ceil32(return_data.size)) + (32 * _4953) + 936 len ceil32(mem[_6551])] = mem[_6551 + 32 len ceil32(mem[_6551])]
            if ceil32(_6645) > _6645:
                mem[(6 * ceil32(return_data.size)) + (32 * _4953) + _6645 + 936] = 0
            call address(cd[4]).mem[(6 * ceil32(return_data.size)) + (32 * _4953) + 936 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + (32 * _4953) + 940 len _6645 - 4]
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 'Less than 50% tax'
            revert with 0, 'More than 50% tax'
        mem[ceil32(return_data.size) + 708] = return_data.size
        mem[ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Buy failed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(cd[4])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
            _4833 = mem[96]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < _4833:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = this.address
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = block.timestamp + 30
            _6554 = mem[64]
            mem[mem[64]] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + -mem[64] + 905
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 937
            mem[_6554 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _6646 = mem[_6554]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 937 len ceil32(mem[_6554])] = mem[_6554 + 32 len ceil32(mem[_6554])]
            if ceil32(_6646) > _6646:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + _6646 + 937] = 0
            call address(cd[4]).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 937 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 941 len _6646 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * cd[132] > cd[132]:
                    revert with 0, 
                                'Less than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 1037 len 9 * ceil32(return_data.size)]
                revert with 0, 
                            'More than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 1037 len 9 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 937] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4833) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(8 * ceil32(return_data.size)) + (32 * _4833) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + (32 * _4833) + 942] = 32
                mem[(8 * ceil32(return_data.size)) + (32 * _4833) + 974] = 11
                mem[(8 * ceil32(return_data.size)) + (32 * _4833) + 1006] = 'Sell failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + (32 * _4833) + 938
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 
                            'Less than 50% tax',
                            mem[(9 * ceil32(return_data.size)) + (32 * _4833) + 1038 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            revert with 0, 
                        'More than 50% tax',
                        mem[(9 * ceil32(return_data.size)) + (32 * _4833) + 1038 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = address(cd[4])
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = -1
        require ext_code.size(address(cd[100]))
        call address(cd[100]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 709
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
        _4955 = mem[96]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 228
        while idx < _4955:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = block.timestamp + 30
        _6557 = mem[64]
        mem[mem[64]] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + -mem[64] + 905
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + 937
        mem[_6557 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
        _6647 = mem[_6557]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + 937 len ceil32(mem[_6557])] = mem[_6557 + 32 len ceil32(mem[_6557])]
        if ceil32(_6647) > _6647:
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + _6647 + 937] = 0
        call address(cd[4]).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + 937 len 4] with:
             gas gas_remaining wei
            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4955) + 941 len _6647 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 'Less than 50% tax'
            revert with 0, 'More than 50% tax'
        if not ext_call.success:
            revert with 0, 
                        'Sell failed',
                        mem[(9 * ceil32(return_data.size)) + (32 * _4955) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 
                        'Less than 50% tax',
                        mem[(10 * ceil32(return_data.size)) + (32 * _4955) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        revert with 0, 
                    'More than 50% tax',
                    mem[(10 * ceil32(return_data.size)) + (32 * _4955) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require owner == msg.sender
    mem[132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[132]:
        revert with 0, 'Not enough balance for testing!'
    if address(cd[36]) == address(cd[68]):
        mem[ceil32(return_data.size) + 160] = address(cd[36])
        mem[ceil32(return_data.size) + 192] = address(cd[100])
        mem[ceil32(return_data.size) + 224] = 2
        mem[ceil32(return_data.size) + 256] = address(cd[100])
        mem[ceil32(return_data.size) + 288] = address(cd[36])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        idx = 0
        s = ceil32(return_data.size) + 160
        t = ceil32(return_data.size) + 548
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 320] = 260
        mem[ceil32(return_data.size) + 612 len 288] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 2, mem[ceil32(return_data.size) + 548 len 92]
        mem[ceil32(return_data.size) + 872] = 0
        call address(cd[4]).mem[ceil32(return_data.size) + 612 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 616 len 256]
        if not ext_call.success:
            revert with 0, 'Buy failed'
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not return_data.size:
            if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = ceil32(return_data.size) + 256
                t = (4 * ceil32(return_data.size)) + 840
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + 840 len 92]
                mem[(4 * ceil32(return_data.size)) + 1164] = 0
                call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 904 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 908 len 256]
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if not return_data.size:
                    if 2 * cd[132] > cd[132]:
                        revert with 0, 'Less than 50% tax', mem[(6 * ceil32(return_data.size)) + 1004 len 9 * ceil32(return_data.size)]
                    revert with 0, 'More than 50% tax', mem[(6 * ceil32(return_data.size)) + 1004 len 9 * ceil32(return_data.size)]
                if 2 * cd[132] > cd[132]:
                    revert with 0, 
                                'Less than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                revert with 0, 
                            'More than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (6 * ceil32(return_data.size)) + 840
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(6 * ceil32(return_data.size)) + 840 len 92]
            call address(cd[4]).mem[(6 * ceil32(return_data.size)) + 904 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + 908 len 256]
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 'Less than 50% tax'
            revert with 0, 'More than 50% tax'
        if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1165] = 0
            call address(cd[4]).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Sell failed'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                    revert with 'NH{q', 17
                if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * cd[132] > cd[132]:
                    revert with 0, 
                                'Less than 50% tax',
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
                revert with 0, 
                            'More than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1005 len 9 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 910] = 32
                mem[(8 * ceil32(return_data.size)) + 942] = 11
                mem[(8 * ceil32(return_data.size)) + 974] = 'Sell failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 906
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 
                            'Less than 50% tax',
                            mem[(9 * ceil32(return_data.size)) + 1006 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            revert with 0, 
                        'More than 50% tax',
                        mem[(9 * ceil32(return_data.size)) + 1006 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        idx = 0
        s = ceil32(return_data.size) + 256
        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1165] = 0
        call address(cd[4]).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
             gas gas_remaining wei
            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 'Less than 50% tax'
            revert with 0, 'More than 50% tax'
        if not ext_call.success:
            revert with 0, 
                        'Sell failed',
                        mem[(9 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 
                        'Less than 50% tax',
                        mem[(10 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        revert with 0, 
                    'More than 50% tax',
                    mem[(10 * ceil32(return_data.size)) + 1006 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[ceil32(return_data.size) + 128] = 3
    mem[ceil32(return_data.size) + 160] = address(cd[36])
    mem[ceil32(return_data.size) + 192] = address(cd[68])
    mem[ceil32(return_data.size) + 224] = address(cd[100])
    mem[ceil32(return_data.size) + 256] = 3
    mem[ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    mem[128] = address(cd[100])
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[160] = address(cd[68])
    if 2 >= mem[96]:
        revert with 'NH{q', 50
    mem[192] = address(cd[36])
    if 30 > !block.timestamp:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 420] = cd[132]
    mem[ceil32(return_data.size) + 452] = 1
    mem[ceil32(return_data.size) + 484] = 160
    mem[ceil32(return_data.size) + 580] = 3
    idx = 0
    s = ceil32(return_data.size) + 288
    t = ceil32(return_data.size) + 612
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 516] = this.address
    mem[ceil32(return_data.size) + 548] = block.timestamp + 30
    mem[ceil32(return_data.size) + 384] = 292
    mem[ceil32(return_data.size) + 416 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    mem[ceil32(return_data.size) + 708 len 320] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 3, mem[ceil32(return_data.size) + 612 len 124]
    mem[ceil32(return_data.size) + 1000] = 0
    call address(cd[4]).mem[ceil32(return_data.size) + 708 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 712 len 288]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Buy failed'
        mem[ceil32(return_data.size) + 712] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 708] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 712] = this.address
        mem[(2 * ceil32(return_data.size)) + 744] = address(cd[4])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 708
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 776] = 1
            mem[(4 * ceil32(return_data.size)) + 808] = 160
            _4836 = mem[96]
            mem[(4 * ceil32(return_data.size)) + 904] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < _4836:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 840] = this.address
            mem[(4 * ceil32(return_data.size)) + 872] = block.timestamp + 30
            _6596 = mem[64]
            mem[mem[64]] = (4 * ceil32(return_data.size)) + (32 * _4836) + -mem[64] + 904
            mem[64] = (4 * ceil32(return_data.size)) + (32 * _4836) + 936
            mem[_6596 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _6660 = mem[_6596]
            mem[(4 * ceil32(return_data.size)) + (32 * _4836) + 936 len ceil32(mem[_6596])] = mem[_6596 + 32 len ceil32(mem[_6596])]
            if ceil32(_6660) > _6660:
                mem[(4 * ceil32(return_data.size)) + (32 * _4836) + _6660 + 936] = 0
            call address(cd[4]).mem[(4 * ceil32(return_data.size)) + (32 * _4836) + 936 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * _4836) + 940 len _6660 - 4]
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if not return_data.size:
                if 2 * cd[132] > cd[132]:
                    revert with 0, 'Less than 50% tax', mem[(6 * ceil32(return_data.size)) + (32 * _4836) + 1036 len 9 * ceil32(return_data.size)]
                revert with 0, 'More than 50% tax', mem[(6 * ceil32(return_data.size)) + (32 * _4836) + 1036 len 9 * ceil32(return_data.size)]
            if 2 * cd[132] > cd[132]:
                revert with 0, 
                            'Less than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + (32 * _4836) + ceil32(return_data.size) + 1037 len 9 * ceil32(return_data.size)]
            revert with 0, 
                        'More than 50% tax',
                        mem[(6 * ceil32(return_data.size)) + (32 * _4836) + ceil32(return_data.size) + 1037 len 9 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + 712] = address(cd[4])
        mem[(4 * ceil32(return_data.size)) + 744] = -1
        require ext_code.size(address(cd[100]))
        call address(cd[100]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 708
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 776] = 1
        mem[(6 * ceil32(return_data.size)) + 808] = 160
        _4961 = mem[96]
        mem[(6 * ceil32(return_data.size)) + 904] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 228
        while idx < _4961:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 840] = this.address
        mem[(6 * ceil32(return_data.size)) + 872] = block.timestamp + 30
        _6599 = mem[64]
        mem[mem[64]] = (6 * ceil32(return_data.size)) + (32 * _4961) + -mem[64] + 904
        mem[64] = (6 * ceil32(return_data.size)) + (32 * _4961) + 936
        mem[_6599 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
        _6661 = mem[_6599]
        mem[(6 * ceil32(return_data.size)) + (32 * _4961) + 936 len ceil32(mem[_6599])] = mem[_6599 + 32 len ceil32(mem[_6599])]
        if ceil32(_6661) > _6661:
            mem[(6 * ceil32(return_data.size)) + (32 * _4961) + _6661 + 936] = 0
        call address(cd[4]).mem[(6 * ceil32(return_data.size)) + (32 * _4961) + 936 len 4] with:
             gas gas_remaining wei
            args mem[(6 * ceil32(return_data.size)) + (32 * _4961) + 940 len _6661 - 4]
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    mem[ceil32(return_data.size) + 708] = return_data.size
    mem[ceil32(return_data.size) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Buy failed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(cd[4])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
        _4837 = mem[96]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 228
        while idx < _4837:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = block.timestamp + 30
        _6602 = mem[64]
        mem[mem[64]] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + -mem[64] + 905
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 937
        mem[_6602 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
        _6662 = mem[_6602]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 937 len ceil32(mem[_6602])] = mem[_6602 + 32 len ceil32(mem[_6602])]
        if ceil32(_6662) > _6662:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + _6662 + 937] = 0
        call address(cd[4]).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 937 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 941 len _6662 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Sell failed'
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
                revert with 'NH{q', 17
            if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * cd[132] > cd[132]:
                revert with 0, 
                            'Less than 50% tax',
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 1037 len 9 * ceil32(return_data.size)]
            revert with 0, 
                        'More than 50% tax',
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 1037 len 9 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 937] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4837) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(8 * ceil32(return_data.size)) + (32 * _4837) + 938] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + (32 * _4837) + 942] = 32
            mem[(8 * ceil32(return_data.size)) + (32 * _4837) + 974] = 11
            mem[(8 * ceil32(return_data.size)) + (32 * _4837) + 1006] = 'Sell failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + (32 * _4837) + 938
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 
                        'Less than 50% tax',
                        mem[(9 * ceil32(return_data.size)) + (32 * _4837) + 1038 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        revert with 0, 
                    'More than 50% tax',
                    mem[(9 * ceil32(return_data.size)) + (32 * _4837) + 1038 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = address(cd[4])
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = -1
    require ext_code.size(address(cd[100]))
    call address(cd[100]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), -1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 709
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 30 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
    _4963 = mem[96]
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 228
    while idx < _4963:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = this.address
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = block.timestamp + 30
    _6605 = mem[64]
    mem[mem[64]] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + -mem[64] + 905
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + 937
    mem[_6605 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    _6663 = mem[_6605]
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + 937 len ceil32(mem[_6605])] = mem[_6605 + 32 len ceil32(mem[_6605])]
    if ceil32(_6663) > _6663:
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + _6663 + 937] = 0
    call address(cd[4]).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + 937 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * _4963) + 941 len _6663 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    if not ext_call.success:
        revert with 0, 
                    'Sell failed',
                    mem[(9 * ceil32(return_data.size)) + (32 * _4963) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
        revert with 'NH{q', 17
    if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * cd[132] > cd[132]:
        revert with 0, 
                    'Less than 50% tax',
                    mem[(10 * ceil32(return_data.size)) + (32 * _4963) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    revert with 0, 
                'More than 50% tax',
                mem[(10 * ceil32(return_data.size)) + (32 * _4963) + 1038 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
