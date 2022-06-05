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

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 196
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=mem[196 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _15 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _15
    require return_data.size >= _14 + (32 * _15) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _15] = mem[_14 + 128 len 32 * _15]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _15
    mem[mem[64] + 64 len 32 * _15] = mem[ceil32(return_data.size) + 128 len 32 * _15]
    return Array(len=_15, data=mem[mem[64] + 64 len 32 * _15])
}

function swapExactETHForTokens(address arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    idx = 0
    s = arg3 + 36
    t = 260
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=mem[260 len 32 * arg3.length]), address(arg4), arg5
    if not ext_call.success:
        mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = 128
        mem[228] = arg3.length
        idx = 0
        s = arg3 + 36
        t = 260
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[164] = arg4
        mem[196] = arg5
        require ext_code.size(arg1)
        call arg1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=mem[260 len 32 * arg3.length]), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function swapExactTokensForETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if 0 >= arg4.length:
        revert with 0, 50
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = arg4 + 36
    t = ceil32(return_data.size) + 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        mem[ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg2
        mem[ceil32(return_data.size) + 132] = arg3
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = ceil32(return_data.size) + 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = arg5
        mem[ceil32(return_data.size) + 228] = arg6
        require ext_code.size(arg1)
        call arg1.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32
}

function swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if 0 >= arg4.length:
        revert with 0, 50
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = arg4 + 36
    t = ceil32(return_data.size) + 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg2
        mem[ceil32(return_data.size) + 132] = arg3
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = ceil32(return_data.size) + 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = arg5
        mem[ceil32(return_data.size) + 228] = arg6
        require ext_code.size(arg1)
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9c91fcb5(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x375734d9(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                        require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[132] = this.address
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 164] = msg.sender
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] == address(cd[4])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                require ('cd', 100).length <= test266151307()
                require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                require cd[132] == address(cd[132])
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                require ('cd', 100)[0] == address(('cd', 100)[0])
                mem[132] = address(cd[4])
                mem[164] = cd[36]
                require ext_code.size(address(('cd', 100)[0]))
                call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[36]
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = cd[100] + 36
                t = ceil32(return_data.size) + 324
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 324 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                if not ext_call.success:
                    mem[ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = cd[36]
                    mem[ceil32(return_data.size) + 164] = cd[68]
                    mem[ceil32(return_data.size) + 196] = 160
                    mem[ceil32(return_data.size) + 292] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = ceil32(return_data.size) + 324
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 228] = address(cd[132])
                    mem[ceil32(return_data.size) + 260] = cd[164]
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 324 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x9c91fcb5(?????):
                if unknown_0xbb7b9c76(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[132] = cd[36]
                    mem[164] = 64
                    mem[196] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = 228
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[36], Array(len=('cd', 68).length, data=mem[228 len 32 * ('cd', 68).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _150 = mem[128 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                    require mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < return_data.size + 128
                    _159 = mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
                    require return_data.size >= _150 + (32 * _159) + 32
                    mem[ceil32(return_data.size) + 160 len 32 * _159] = mem[_150 + 160 len 32 * _159]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _159
                    mem[mem[64] + 64 len 32 * _159] = mem[ceil32(return_data.size) + 160 len 32 * _159]
                    return Array(len=_159, data=mem[mem[64] + 64 len 32 * _159])
                if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'Address: insufficient balance'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
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
                    else:
                        require unknown_0xfde1adda(?????) == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 160
                        require cd[4] == address(cd[4])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[100] == address(cd[100])
                        idx = 0
                        s = cd[68] + 36
                        t = 292
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args cd[36], Array(len=('cd', 68).length, data=mem[292 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
                        if not ext_call.success:
                            mem[128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[36]
                            mem[164] = 128
                            mem[260] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = 292
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[196] = address(cd[100])
                            mem[228] = cd[132]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args cd[36], Array(len=('cd', 68).length, data=mem[292 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require mem[128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < return_data.size + 128
                            if mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32
            else:
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] == address(cd[4])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                require ('cd', 100).length <= test266151307()
                require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                require cd[132] == address(cd[132])
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                require ('cd', 100)[0] == address(('cd', 100)[0])
                mem[132] = address(cd[4])
                mem[164] = cd[36]
                require ext_code.size(address(('cd', 100)[0]))
                call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[36]
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = cd[100] + 36
                t = ceil32(return_data.size) + 324
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 324 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                if not ext_call.success:
                    mem[ceil32(return_data.size) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = cd[36]
                    mem[ceil32(return_data.size) + 164] = cd[68]
                    mem[ceil32(return_data.size) + 196] = 160
                    mem[ceil32(return_data.size) + 292] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = ceil32(return_data.size) + 324
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 228] = address(cd[132])
                    mem[ceil32(return_data.size) + 260] = cd[164]
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 324 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32
}



}
