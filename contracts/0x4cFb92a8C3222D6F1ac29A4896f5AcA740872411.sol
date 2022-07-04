contract main {




// =====================  Runtime code  =====================


#
#  - sub_bf4274f7(?)
#  - withdrawTo(address arg1, address arg2, uint256 arg3)
#  - approve(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, uint256 arg2)
#  - sub_fd42b317(?)
#  - _fallback()
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
address sub_5bcf1f76Address;

function sub_5bcf1f76(?) {
    return sub_5bcf1f76Address
}

function getOwner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_63e91678(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = 1
}

function removeAccessor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = 0
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_5bcf1f76Address == arg1:
        return eth.balance(this.address)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_697b894a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor1[msg.sender] != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function sub_77e90137(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor1[msg.sender] != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    require ext_code.size(address(arg1))
    call address(arg1).0x370243dc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pairFor(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall arg1.pairFor(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1[msg.sender] != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
        if owner != msg.sender:
            if stor1[msg.sender] != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function swapExactTokensForETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if msg.sender == owner:
        mem[96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = arg3
        mem[164] = 160
        mem[260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = arg5
        mem[228] = arg6
        call arg1.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = 160
    mem[260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = arg5
    mem[228] = arg6
    call arg1.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function swapTokensForExactETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if msg.sender == owner:
        mem[96] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = arg3
        mem[164] = 160
        mem[260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = arg5
        mem[228] = arg6
        call arg1.swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = 160
    mem[260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = arg5
    mem[228] = arg6
    call arg1.swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function swapTokensForExactTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if msg.sender == owner:
        mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = arg3
        mem[164] = 160
        mem[260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = arg5
        mem[228] = arg6
        call arg1.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = 160
    mem[260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = arg5
    mem[228] = arg6
    call arg1.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    if msg.sender == owner:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = arg3
        mem[164] = 160
        mem[260] = arg4.length
        idx = 0
        s = arg4 + 36
        t = 292
        while idx < arg4.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = arg5
        mem[228] = arg6
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = 160
    mem[260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = arg5
    mem[228] = arg6
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[292 len 32 * arg4.length]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function sub_0d8ca571(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if msg.sender == owner:
        mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[68]
        mem[132] = 128
        mem[228] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = 260
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[164] = address(cd[132])
        mem[196] = cd[164]
        call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[36] wei
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 100).length, data=mem[260 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = cd[68]
    mem[132] = 128
    mem[228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[164] = address(cd[132])
    mem[196] = cd[164]
    call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[260 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function sub_58c32ba8(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if msg.sender == owner:
        mem[96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[68]
        mem[132] = 128
        mem[228] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = 260
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[164] = address(cd[132])
        mem[196] = cd[164]
        call address(cd[4]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[36] wei
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 100).length, data=mem[260 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _30 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
        _32 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require _30 + (32 * _32) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(32 * _32)] = mem[_30 + 128 len ceil32(32 * _32)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[100] = cd[68]
    mem[132] = 128
    mem[228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[164] = address(cd[132])
    mem[196] = cd[164]
    call address(cd[4]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[260 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    _33 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require _31 + (32 * _33) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _33)] = mem[_31 + 128 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function sub_7e214c6f(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    mem[100] = cd[36]
    mem[132] = cd[68]
    mem[164] = 96
    mem[196] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = 228
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).0x4fc320f7 with:
            gas gas_remaining wei
           args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[100]:
        revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] <= cd[132]:
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _64 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
        _66 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _64 + (32 * _66) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _66)] = mem[ceil32(return_data.size) + _64 + 128 len ceil32(32 * _66)]
        if _66 < 1:
            revert with 0, 17
        if _66 - 1 >= _66:
            revert with 0, 50
        return ext_call.return_data[0], mem[(32 * _66 - 1) + (2 * ceil32(return_data.size)) + 128]
    mem[ceil32(return_data.size) + 100] = cd[132]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _65 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
    _67 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    require _65 + (32 * _67) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _67)] = mem[ceil32(return_data.size) + _65 + 128 len ceil32(32 * _67)]
    if _67 < 1:
        revert with 0, 17
    if _67 - 1 >= _67:
        revert with 0, 50
    return cd[132], mem[(32 * _67 - 1) + (2 * ceil32(return_data.size)) + 128]
}

function sub_9cd6f799(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] == address(cd[196])
    if msg.sender == owner:
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 96
        mem[196] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = 228
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).0x4fc320f7 with:
                gas gas_remaining wei
               args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[100]:
            revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] <= cd[132]:
            mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 196
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _210 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = _214
            require _210 + (32 * _214) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _214)] = mem[ceil32(return_data.size) + _210 + 128 len ceil32(32 * _214)]
            if _214 < 1:
                revert with 0, 17
            if _214 - 1 >= _214:
                revert with 0, 50
            _298 = mem[(32 * _214 - 1) + (2 * ceil32(return_data.size)) + 128]
            _302 = mem[64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _298
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = mem[64] + 164
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_302 + 68] = address(cd[196])
            mem[_302 + 100] = cd[228]
            call address(cd[4]).mem[mem[64] len 4] with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _302 + (32 * ('cd', 164).length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _358 = mem[_354]
            require mem[_354] <= test266151307()
            require _354 + return_data.size > _354 + mem[_354] + 31
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0 or _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require _358 + (32 * _362) + 32 <= return_data.size
            mem[_354 + ceil32(return_data.size) + 32 len ceil32(32 * _362)] = mem[_354 + _358 + 32 len ceil32(32 * _362)]
            if _362 < 1:
                revert with 0, 17
            if _362 - 1 >= _362:
                revert with 0, 50
            return ext_call.return_data[0], mem[(32 * _362 - 1) + _354 + ceil32(return_data.size) + 32]
        mem[ceil32(return_data.size) + 100] = cd[132]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _211 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _215
        require _211 + (32 * _215) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _215)] = mem[ceil32(return_data.size) + _211 + 128 len ceil32(32 * _215)]
        if _215 < 1:
            revert with 0, 17
        if _215 - 1 >= _215:
            revert with 0, 50
        _299 = mem[(32 * _215 - 1) + (2 * ceil32(return_data.size)) + 128]
        _303 = mem[64]
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _299
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 164
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_303 + 68] = address(cd[196])
        mem[_303 + 100] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
           value cd[132] wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _303 + (32 * ('cd', 164).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_355]
        require mem[_355] <= test266151307()
        require _355 + return_data.size > _355 + mem[_355] + 31
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0 or _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require _359 + (32 * _363) + 32 <= return_data.size
        mem[_355 + ceil32(return_data.size) + 32 len ceil32(32 * _363)] = mem[_355 + _359 + 32 len ceil32(32 * _363)]
        if _363 < 1:
            revert with 0, 17
        if _363 - 1 >= _363:
            revert with 0, 50
        return cd[132], mem[(32 * _363 - 1) + _355 + ceil32(return_data.size) + 32]
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[100] = cd[36]
    mem[132] = cd[68]
    mem[164] = 96
    mem[196] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = 228
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).0x4fc320f7 with:
            gas gas_remaining wei
           args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[100]:
        revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] <= cd[132]:
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _212 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _216
        require _212 + (32 * _216) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _216)] = mem[ceil32(return_data.size) + _212 + 128 len ceil32(32 * _216)]
        if _216 < 1:
            revert with 0, 17
        if _216 - 1 >= _216:
            revert with 0, 50
        _300 = mem[(32 * _216 - 1) + (2 * ceil32(return_data.size)) + 128]
        _304 = mem[64]
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _300
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 164
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_304 + 68] = address(cd[196])
        mem[_304 + 100] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _304 + (32 * ('cd', 164).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _360 = mem[_356]
        require mem[_356] <= test266151307()
        require _356 + return_data.size > _356 + mem[_356] + 31
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0 or _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require _360 + (32 * _364) + 32 <= return_data.size
        mem[_356 + ceil32(return_data.size) + 32 len ceil32(32 * _364)] = mem[_356 + _360 + 32 len ceil32(32 * _364)]
        if _364 < 1:
            revert with 0, 17
        if _364 - 1 >= _364:
            revert with 0, 50
        return ext_call.return_data[0], mem[(32 * _364 - 1) + _356 + ceil32(return_data.size) + 32]
    mem[ceil32(return_data.size) + 100] = cd[132]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _213 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _217
    require _213 + (32 * _217) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _217)] = mem[ceil32(return_data.size) + _213 + 128 len ceil32(32 * _217)]
    if _217 < 1:
        revert with 0, 17
    if _217 - 1 >= _217:
        revert with 0, 50
    _301 = mem[(32 * _217 - 1) + (2 * ceil32(return_data.size)) + 128]
    _305 = mem[64]
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _301
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = mem[64] + 164
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_305 + 68] = address(cd[196])
    mem[_305 + 100] = cd[228]
    call address(cd[4]).mem[mem[64] len 4] with:
       value cd[132] wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _305 + (32 * ('cd', 164).length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _357 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _361 = mem[_357]
    require mem[_357] <= test266151307()
    require _357 + return_data.size > _357 + mem[_357] + 31
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0 or _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require _361 + (32 * _365) + 32 <= return_data.size
    mem[_357 + ceil32(return_data.size) + 32 len ceil32(32 * _365)] = mem[_357 + _361 + 32 len ceil32(32 * _365)]
    if _365 < 1:
        revert with 0, 17
    if _365 - 1 >= _365:
        revert with 0, 50
    return cd[132], mem[(32 * _365 - 1) + _357 + ceil32(return_data.size) + 32]
}

function sub_38e7984a(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] == address(cd[196])
    if msg.sender == owner:
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 96
        mem[196] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = 228
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).0x4fc320f7 with:
                gas gas_remaining wei
               args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[100]:
            revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] <= cd[132]:
            mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 196
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _210 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = _214
            require _210 + (32 * _214) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _214)] = mem[ceil32(return_data.size) + _210 + 128 len ceil32(32 * _214)]
            if _214 < 1:
                revert with 0, 17
            if _214 - 1 >= _214:
                revert with 0, 50
            _298 = mem[(32 * _214 - 1) + (2 * ceil32(return_data.size)) + 128]
            _302 = mem[64]
            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _298
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = mem[64] + 196
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_302 + 100] = address(cd[196])
            mem[_302 + 132] = cd[228]
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _302 + (32 * ('cd', 164).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _358 = mem[_354]
            require mem[_354] <= test266151307()
            require _354 + return_data.size > _354 + mem[_354] + 31
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0 or _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require _358 + (32 * _362) + 32 <= return_data.size
            mem[_354 + ceil32(return_data.size) + 32 len ceil32(32 * _362)] = mem[_354 + _358 + 32 len ceil32(32 * _362)]
            if _362 < 1:
                revert with 0, 17
            if _362 - 1 >= _362:
                revert with 0, 50
            return ext_call.return_data[0], mem[(32 * _362 - 1) + _354 + ceil32(return_data.size) + 32]
        mem[ceil32(return_data.size) + 100] = cd[132]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _211 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _215
        require _211 + (32 * _215) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _215)] = mem[ceil32(return_data.size) + _211 + 128 len ceil32(32 * _215)]
        if _215 < 1:
            revert with 0, 17
        if _215 - 1 >= _215:
            revert with 0, 50
        _299 = mem[(32 * _215 - 1) + (2 * ceil32(return_data.size)) + 128]
        _303 = mem[64]
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[132]
        mem[mem[64] + 36] = _299
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_303 + 100] = address(cd[196])
        mem[_303 + 132] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _303 + (32 * ('cd', 164).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_355]
        require mem[_355] <= test266151307()
        require _355 + return_data.size > _355 + mem[_355] + 31
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0 or _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require _359 + (32 * _363) + 32 <= return_data.size
        mem[_355 + ceil32(return_data.size) + 32 len ceil32(32 * _363)] = mem[_355 + _359 + 32 len ceil32(32 * _363)]
        if _363 < 1:
            revert with 0, 17
        if _363 - 1 >= _363:
            revert with 0, 50
        return cd[132], mem[(32 * _363 - 1) + _355 + ceil32(return_data.size) + 32]
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[100] = cd[36]
    mem[132] = cd[68]
    mem[164] = 96
    mem[196] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = 228
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).0x4fc320f7 with:
            gas gas_remaining wei
           args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[100]:
        revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] <= cd[132]:
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _212 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _216
        require _212 + (32 * _216) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _216)] = mem[ceil32(return_data.size) + _212 + 128 len ceil32(32 * _216)]
        if _216 < 1:
            revert with 0, 17
        if _216 - 1 >= _216:
            revert with 0, 50
        _300 = mem[(32 * _216 - 1) + (2 * ceil32(return_data.size)) + 128]
        _304 = mem[64]
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _300
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_304 + 100] = address(cd[196])
        mem[_304 + 132] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _304 + (32 * ('cd', 164).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _360 = mem[_356]
        require mem[_356] <= test266151307()
        require _356 + return_data.size > _356 + mem[_356] + 31
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0 or _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require _360 + (32 * _364) + 32 <= return_data.size
        mem[_356 + ceil32(return_data.size) + 32 len ceil32(32 * _364)] = mem[_356 + _360 + 32 len ceil32(32 * _364)]
        if _364 < 1:
            revert with 0, 17
        if _364 - 1 >= _364:
            revert with 0, 50
        return ext_call.return_data[0], mem[(32 * _364 - 1) + _356 + ceil32(return_data.size) + 32]
    mem[ceil32(return_data.size) + 100] = cd[132]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _213 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _217
    require _213 + (32 * _217) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _217)] = mem[ceil32(return_data.size) + _213 + 128 len ceil32(32 * _217)]
    if _217 < 1:
        revert with 0, 17
    if _217 - 1 >= _217:
        revert with 0, 50
    _301 = mem[(32 * _217 - 1) + (2 * ceil32(return_data.size)) + 128]
    _305 = mem[64]
    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[132]
    mem[mem[64] + 36] = _301
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = mem[64] + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_305 + 100] = address(cd[196])
    mem[_305 + 132] = cd[228]
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _305 + (32 * ('cd', 164).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _357 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _361 = mem[_357]
    require mem[_357] <= test266151307()
    require _357 + return_data.size > _357 + mem[_357] + 31
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0 or _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require _361 + (32 * _365) + 32 <= return_data.size
    mem[_357 + ceil32(return_data.size) + 32 len ceil32(32 * _365)] = mem[_357 + _361 + 32 len ceil32(32 * _365)]
    if _365 < 1:
        revert with 0, 17
    if _365 - 1 >= _365:
        revert with 0, 50
    return cd[132], mem[(32 * _365 - 1) + _357 + ceil32(return_data.size) + 32]
}

function sub_6bb873e5(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] == address(cd[196])
    if msg.sender == owner:
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 96
        mem[196] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = 228
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).0x4fc320f7 with:
                gas gas_remaining wei
               args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[100]:
            revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] <= cd[132]:
            mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 196
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _210 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = _214
            require _210 + (32 * _214) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _214)] = mem[ceil32(return_data.size) + _210 + 128 len ceil32(32 * _214)]
            if _214 < 1:
                revert with 0, 17
            if _214 - 1 >= _214:
                revert with 0, 50
            _298 = mem[(32 * _214 - 1) + (2 * ceil32(return_data.size)) + 128]
            _302 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _298
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = mem[64] + 196
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_302 + 100] = address(cd[196])
            mem[_302 + 132] = cd[228]
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _302 + (32 * ('cd', 164).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _358 = mem[_354]
            require mem[_354] <= test266151307()
            require _354 + return_data.size > _354 + mem[_354] + 31
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0 or _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require _358 + (32 * _362) + 32 <= return_data.size
            mem[_354 + ceil32(return_data.size) + 32 len ceil32(32 * _362)] = mem[_354 + _358 + 32 len ceil32(32 * _362)]
            if _362 < 1:
                revert with 0, 17
            if _362 - 1 >= _362:
                revert with 0, 50
            return ext_call.return_data[0], mem[(32 * _362 - 1) + _354 + ceil32(return_data.size) + 32]
        mem[ceil32(return_data.size) + 100] = cd[132]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _211 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _215
        require _211 + (32 * _215) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _215)] = mem[ceil32(return_data.size) + _211 + 128 len ceil32(32 * _215)]
        if _215 < 1:
            revert with 0, 17
        if _215 - 1 >= _215:
            revert with 0, 50
        _299 = mem[(32 * _215 - 1) + (2 * ceil32(return_data.size)) + 128]
        _303 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[132]
        mem[mem[64] + 36] = _299
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_303 + 100] = address(cd[196])
        mem[_303 + 132] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _303 + (32 * ('cd', 164).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_355]
        require mem[_355] <= test266151307()
        require _355 + return_data.size > _355 + mem[_355] + 31
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0 or _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require _359 + (32 * _363) + 32 <= return_data.size
        mem[_355 + ceil32(return_data.size) + 32 len ceil32(32 * _363)] = mem[_355 + _359 + 32 len ceil32(32 * _363)]
        if _363 < 1:
            revert with 0, 17
        if _363 - 1 >= _363:
            revert with 0, 50
        return cd[132], mem[(32 * _363 - 1) + _355 + ceil32(return_data.size) + 32]
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
    mem[100] = cd[36]
    mem[132] = cd[68]
    mem[164] = 96
    mem[196] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = 228
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).0x4fc320f7 with:
            gas gas_remaining wei
           args cd[36], cd[68], Array(len=('cd', 164).length, data=mem[228 len 32 * ('cd', 164).length])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[100]:
        revert with 0, 'adaptiveSwap: NOT_ENOUGH_INPUT.'
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] <= cd[132]:
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _212 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _216
        require _212 + (32 * _216) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _216)] = mem[ceil32(return_data.size) + _212 + 128 len ceil32(32 * _216)]
        if _216 < 1:
            revert with 0, 17
        if _216 - 1 >= _216:
            revert with 0, 50
        _300 = mem[(32 * _216 - 1) + (2 * ceil32(return_data.size)) + 128]
        _304 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _300
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 164).length
        idx = 0
        s = cd[164] + 36
        t = mem[64] + 196
        while idx < ('cd', 164).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_304 + 100] = address(cd[196])
        mem[_304 + 132] = cd[228]
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _304 + (32 * ('cd', 164).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _360 = mem[_356]
        require mem[_356] <= test266151307()
        require _356 + return_data.size > _356 + mem[_356] + 31
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0 or _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require _360 + (32 * _364) + 32 <= return_data.size
        mem[_356 + ceil32(return_data.size) + 32 len ceil32(32 * _364)] = mem[_356 + _360 + 32 len ceil32(32 * _364)]
        if _364 < 1:
            revert with 0, 17
        if _364 - 1 >= _364:
            revert with 0, 50
        return ext_call.return_data[0], mem[(32 * _364 - 1) + _356 + ceil32(return_data.size) + 32]
    mem[ceil32(return_data.size) + 100] = cd[132]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _213 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _217
    require _213 + (32 * _217) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _217)] = mem[ceil32(return_data.size) + _213 + 128 len ceil32(32 * _217)]
    if _217 < 1:
        revert with 0, 17
    if _217 - 1 >= _217:
        revert with 0, 50
    _301 = mem[(32 * _217 - 1) + (2 * ceil32(return_data.size)) + 128]
    _305 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[132]
    mem[mem[64] + 36] = _301
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = mem[64] + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_305 + 100] = address(cd[196])
    mem[_305 + 132] = cd[228]
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _305 + (32 * ('cd', 164).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _357 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _361 = mem[_357]
    require mem[_357] <= test266151307()
    require _357 + return_data.size > _357 + mem[_357] + 31
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0 or _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require _361 + (32 * _365) + 32 <= return_data.size
    mem[_357 + ceil32(return_data.size) + 32 len ceil32(32 * _365)] = mem[_357 + _361 + 32 len ceil32(32 * _365)]
    if _365 < 1:
        revert with 0, 17
    if _365 - 1 >= _365:
        revert with 0, 50
    return cd[132], mem[(32 * _365 - 1) + _357 + ceil32(return_data.size) + 32]
}

function sub_05b8ac87(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 50
    require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
    if 0 >= cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
        revert with 0, 50
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68)] == address(cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68)])
    if sub_5bcf1f76Address == address(cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68)]):
        if eth.balance(this.address) >= cd[68]:
            require ('cd', 4).length < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
            require cd[4] + ('cd', 4).length + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4).length + 4)])
            if cd[36] >= cd[(cd[4] + ('cd', 4).length + 4)]:
                revert with 0, 50
            require cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)] == address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)])
            require ('cd', 4)[4] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
            if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
                revert with 0, 50
            require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
            require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
            mem[100] = ('cd', 4)[0]
            mem[132] = ('cd', 4)[1]
            mem[164] = 96
            mem[196] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
            idx = 0
            s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
            t = 228
            while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).0x4fc320f7 with:
                    gas gas_remaining wei
                   args ('cd', 4)[0], ('cd', 4)[1], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[228 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ('cd', 4)[2]:
                return 0
            require ('cd', 4)[4] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
            if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
                revert with 0, 50
            require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
            require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
            mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] <= cd[68]:
                mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = 64
                mem[ceil32(return_data.size) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
                idx = 0
                s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
                t = ceil32(return_data.size) + 196
                while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _265 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
                _273 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                require _265 + (32 * _273) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _273)] = mem[ceil32(return_data.size) + _265 + 128 len ceil32(32 * _273)]
                if _273 < 1:
                    revert with 0, 17
                if _273 - 1 >= _273:
                    revert with 0, 50
                return ext_call.return_data[0], mem[(32 * _273 - 1) + (2 * ceil32(return_data.size)) + 128]
            mem[ceil32(return_data.size) + 100] = cd[68]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
            idx = 0
            s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
            t = ceil32(return_data.size) + 196
            while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _266 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
            _274 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
            require _266 + (32 * _274) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _274)] = mem[ceil32(return_data.size) + _266 + 128 len ceil32(32 * _274)]
            if _274 < 1:
                revert with 0, 17
            if _274 - 1 >= _274:
                revert with 0, 50
            return cd[68], mem[(32 * _274 - 1) + (2 * ceil32(return_data.size)) + 128]
        if eth.balance(this.address) < ('cd', 4)[2]:
            return 0
        require ('cd', 4).length < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
        require cd[4] + ('cd', 4).length + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4).length + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4).length + 4)]:
            revert with 0, 50
        require cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)] == address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)])
        require ('cd', 4)[4] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
        require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
        mem[100] = ('cd', 4)[0]
        mem[132] = ('cd', 4)[1]
        mem[164] = 96
        mem[196] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
        idx = 0
        s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
        t = 228
        while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).0x4fc320f7 with:
                gas gas_remaining wei
               args ('cd', 4)[0], ('cd', 4)[1], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[228 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ('cd', 4)[2]:
            return 0
        require ('cd', 4)[4] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
        require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] <= eth.balance(this.address):
            mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
            idx = 0
            s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
            t = ceil32(return_data.size) + 196
            while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _267 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
            _275 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require _267 + (32 * _275) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _275)] = mem[ceil32(return_data.size) + _267 + 128 len ceil32(32 * _275)]
            if _275 < 1:
                revert with 0, 17
            if _275 - 1 >= _275:
                revert with 0, 50
            return ext_call.return_data[0], mem[(32 * _275 - 1) + (2 * ceil32(return_data.size)) + 128]
        mem[ceil32(return_data.size) + 100] = eth.balance(this.address)
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
        idx = 0
        s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
        t = ceil32(return_data.size) + 196
        while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _268 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 127
        _276 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]
        require _268 + (32 * _276) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _276)] = mem[ceil32(return_data.size) + _268 + 128 len ceil32(32 * _276)]
        if _276 < 1:
            revert with 0, 17
        if _276 - 1 >= _276:
            revert with 0, 50
        return eth.balance(this.address), mem[(32 * _276 - 1) + (2 * ceil32(return_data.size)) + 128]
    mem[100] = this.address
    staticcall address(cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[68]:
        require ('cd', 4).length < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
        require cd[4] + ('cd', 4).length + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4).length + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4).length + 4)]:
            revert with 0, 50
        require cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)] == address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)])
        require ('cd', 4)[4] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
        require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
        mem[ceil32(return_data.size) + 100] = ('cd', 4)[0]
        mem[ceil32(return_data.size) + 132] = ('cd', 4)[1]
        mem[ceil32(return_data.size) + 164] = 96
        mem[ceil32(return_data.size) + 196] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
        idx = 0
        s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
        t = ceil32(return_data.size) + 228
        while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).0x4fc320f7 with:
                gas gas_remaining wei
               args ('cd', 4)[0], ('cd', 4)[1], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 228 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ('cd', 4)[2]:
            return 0
        require ('cd', 4)[4] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
        if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
        require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] <= cd[68]:
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 132] = 64
            mem[(2 * ceil32(return_data.size)) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
            idx = 0
            s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
            t = (2 * ceil32(return_data.size)) + 196
            while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _261 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127
            _269 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require _261 + (32 * _269) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 128 len ceil32(32 * _269)] = mem[(2 * ceil32(return_data.size)) + _261 + 128 len ceil32(32 * _269)]
            if _269 < 1:
                revert with 0, 17
            if _269 - 1 >= _269:
                revert with 0, 50
            return ext_call.return_data[0], mem[(32 * _269 - 1) + (4 * ceil32(return_data.size)) + 128]
        mem[(2 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 132] = 64
        mem[(2 * ceil32(return_data.size)) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
        idx = 0
        s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
        t = (2 * ceil32(return_data.size)) + 196
        while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _262 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
        _270 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require _262 + (32 * _270) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 128 len ceil32(32 * _270)] = mem[(2 * ceil32(return_data.size)) + _262 + 128 len ceil32(32 * _270)]
        if _270 < 1:
            revert with 0, 17
        if _270 - 1 >= _270:
            revert with 0, 50
        return cd[68], mem[(32 * _270 - 1) + (4 * ceil32(return_data.size)) + 128]
    if ext_call.return_data[0] < ('cd', 4)[2]:
        return 0
    require ('cd', 4).length < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4).length + 4)])
    if cd[36] >= cd[(cd[4] + ('cd', 4).length + 4)]:
        revert with 0, 50
    require cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)] == address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 50
    require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
    mem[ceil32(return_data.size) + 100] = ('cd', 4)[0]
    mem[ceil32(return_data.size) + 132] = ('cd', 4)[1]
    mem[ceil32(return_data.size) + 164] = 96
    mem[ceil32(return_data.size) + 196] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
    idx = 0
    s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
    t = ceil32(return_data.size) + 228
    while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).0x4fc320f7 with:
            gas gas_remaining wei
           args ('cd', 4)[0], ('cd', 4)[1], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[ceil32(return_data.size) + 228 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ('cd', 4)[2]:
        return 0
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    if cd[36] >= cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 50
    require cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] < calldata.size + -cd[4] + -('cd', 4)[4] - 67
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)])
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 64
    mem[(2 * ceil32(return_data.size)) + 164] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]
    idx = 0
    s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 68
    t = (2 * ceil32(return_data.size)) + 196
    while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[((32 * cd[36]) + cd[4] + ('cd', 4).length + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)], data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + (32 * cd[36]) + 36)] + 36)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        _263 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127
        _271 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _263 + (32 * _271) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 128 len ceil32(32 * _271)] = mem[(2 * ceil32(return_data.size)) + _263 + 128 len ceil32(32 * _271)]
        if _271 < 1:
            revert with 0, 17
        if _271 - 1 >= _271:
            revert with 0, 50
        return ext_call.return_data[0], mem[(32 * _271 - 1) + (4 * ceil32(return_data.size)) + 128]
    _264 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127
    _272 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _264 + (32 * _272) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(32 * _272)] = mem[(2 * ceil32(return_data.size)) + _264 + 128 len ceil32(32 * _272)]
    if _272 < 1:
        revert with 0, 17
    if _272 - 1 >= _272:
        revert with 0, 50
    return ext_call.return_data[0], mem[(32 * _272 - 1) + (4 * ceil32(return_data.size)) + 128]
}

function sub_c7acbca6(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    if msg.sender == owner:
        if stor2[cd[4]]:
            revert with 0, 'ALREADY_EXECUTED'
        mem[0] = cd[4]
        mem[32] = 2
        stor2[cd[4]] = 1
        if ('cd', 36).length <= 1:
            revert with 0, 'BRANCHES_TOO_SHORT'
        if not ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        require cd[(('cd', 36)[0] + cd[36] + 36)] == address(cd[(('cd', 36)[0] + cd[36] + 36)])
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        require cd[(('cd', 36)[0] + cd[36] + 68)] < calldata.size + -('cd', 36)[0] + -cd[36] - 67
        require cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)] <= test266151307()
        require ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)])
        if cd[(('cd', 36)[0] + cd[36] + 196)] == 1:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[(('cd', 36)[0] + cd[36] + 132)]
            mem[132] = 0
            mem[164] = 160
            mem[260] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
            idx = 0
            s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
            t = 292
            while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = this.address
            mem[228] = cd[68]
            call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(('cd', 36)[0] + cd[36] + 132)], 0, 160, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[292 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _728 = mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 <= test266151307()
            require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127
            _734 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _734
            require _728 + (32 * _734) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(32 * _734)] = mem[_728 + 128 len ceil32(32 * _734)]
            if _734 < 1:
                revert with 0, 17
            if _734 - 1 >= _734:
                revert with 0, 50
            _1456 = mem[(32 * _734 - 1) + ceil32(return_data.size) + 128]
            idx = 1
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1456 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                    revert with 0, 17
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if idx != ('cd', 36).length - 1:
                    if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000):
                        revert with 0, 17
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                    require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                        _2134 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2134 + 100] = this.address
                        mem[_2134 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2578 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2614 = mem[_2578]
                        require mem[_2578] <= test266151307()
                        require _2578 + return_data.size > _2578 + mem[_2578] + 31
                        _2650 = mem[_2578 + mem[_2578]]
                        if mem[_2578 + mem[_2578]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2578 + mem[_2578]]) + 1 < 0 or _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1
                        mem[_2578 + ceil32(return_data.size)] = _2650
                        require _2614 + (32 * _2650) + 32 <= return_data.size
                        v = _2578 + ceil32(return_data.size) + 32
                        u = _2578 + _2614 + 32
                        while u < _2578 + _2614 + (32 * _2650) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2650 < 1:
                            revert with 0, 17
                        if _2650 - 1 >= _2650:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] > !(mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] + (mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                        s = mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] + (mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000)
                        continue 
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                revert with 0, 17
                            if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000)
                            continue 
                        _2149 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 164
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2149 + 68] = this.address
                        mem[_2149 + 100] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2576 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2612 = mem[_2576]
                        require mem[_2576] <= test266151307()
                        require _2576 + return_data.size > _2576 + mem[_2576] + 31
                        _2648 = mem[_2576 + mem[_2576]]
                        if mem[_2576 + mem[_2576]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2576 + mem[_2576]]) + 1 < 0 or _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1
                        mem[_2576 + ceil32(return_data.size)] = _2648
                        require _2612 + (32 * _2648) + 32 <= return_data.size
                        v = _2576 + ceil32(return_data.size) + 32
                        u = _2576 + _2612 + 32
                        while u < _2576 + _2612 + (32 * _2648) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2648 < 1:
                            revert with 0, 17
                        if _2648 - 1 >= _2648:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] > !(mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] + (mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                        s = mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] + (mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000)
                        continue 
                    _2140 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2140 + 100] = this.address
                    mem[_2140 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2577 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2613 = mem[_2577]
                    require mem[_2577] <= test266151307()
                    require _2577 + return_data.size > _2577 + mem[_2577] + 31
                    _2649 = mem[_2577 + mem[_2577]]
                    if mem[_2577 + mem[_2577]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2577 + mem[_2577]]) + 1 < 0 or _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1
                    mem[_2577 + ceil32(return_data.size)] = _2649
                    require _2613 + (32 * _2649) + 32 <= return_data.size
                    v = _2577 + ceil32(return_data.size) + 32
                    u = _2577 + _2613 + 32
                    while u < _2577 + _2613 + (32 * _2649) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2649 < 1:
                        revert with 0, 17
                    if _2649 - 1 >= _2649:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] > !(mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] + (mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000
                    s = mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] + (mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1456 / 10000)
                    continue 
                if _1456 <= t:
                    revert with 0, 'INVALID_IN'
                if _1456 < t:
                    revert with 0, 17
                if t > !(_1456 - t):
                    revert with 0, 17
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                    _2161 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1456 - t
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2161 + 100] = this.address
                    mem[_2161 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2581 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2617 = mem[_2581]
                    require mem[_2581] <= test266151307()
                    require _2581 + return_data.size > _2581 + mem[_2581] + 31
                    _2653 = mem[_2581 + mem[_2581]]
                    if mem[_2581 + mem[_2581]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2581 + mem[_2581]]) + 1 < 0 or _2581 + ceil32(return_data.size) + ceil32(32 * mem[_2581 + mem[_2581]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2581 + ceil32(return_data.size) + ceil32(32 * mem[_2581 + mem[_2581]]) + 1
                    mem[_2581 + ceil32(return_data.size)] = _2653
                    require _2617 + (32 * _2653) + 32 <= return_data.size
                    v = _2581 + ceil32(return_data.size) + 32
                    u = _2581 + _2617 + 32
                    while u < _2581 + _2617 + (32 * _2653) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2653 < 1:
                        revert with 0, 17
                    if _2653 - 1 >= _2653:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] > !(mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] + (mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1456 - t
                    s = mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] + (mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1456
                    continue 
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                            revert with 0, 17
                        if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1456 - t
                        s = mem[(32 * mem[96] - 1) + 128]
                        s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1456
                        continue 
                    _2197 = mem[64]
                    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 164
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2197 + 68] = this.address
                    mem[_2197 + 100] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                       value _1456 - t wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2615 = mem[_2579]
                    require mem[_2579] <= test266151307()
                    require _2579 + return_data.size > _2579 + mem[_2579] + 31
                    _2651 = mem[_2579 + mem[_2579]]
                    if mem[_2579 + mem[_2579]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2579 + mem[_2579]]) + 1 < 0 or _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1
                    mem[_2579 + ceil32(return_data.size)] = _2651
                    require _2615 + (32 * _2651) + 32 <= return_data.size
                    v = _2579 + ceil32(return_data.size) + 32
                    u = _2579 + _2615 + 32
                    while u < _2579 + _2615 + (32 * _2651) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2651 < 1:
                        revert with 0, 17
                    if _2651 - 1 >= _2651:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] > !(mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] + (mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1456 - t
                    s = mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] + (mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1456
                    continue 
                _2176 = mem[64]
                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1456 - t
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                u = 0
                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                w = mem[64] + 196
                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    require cd[v] == address(cd[v])
                    mem[w] = address(cd[v])
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_2176 + 100] = this.address
                mem[_2176 + 132] = cd[68]
                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2580 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2616 = mem[_2580]
                require mem[_2580] <= test266151307()
                require _2580 + return_data.size > _2580 + mem[_2580] + 31
                _2652 = mem[_2580 + mem[_2580]]
                if mem[_2580 + mem[_2580]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_2580 + mem[_2580]]) + 1 < 0 or _2580 + ceil32(return_data.size) + ceil32(32 * mem[_2580 + mem[_2580]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2580 + ceil32(return_data.size) + ceil32(32 * mem[_2580 + mem[_2580]]) + 1
                mem[_2580 + ceil32(return_data.size)] = _2652
                require _2616 + (32 * _2652) + 32 <= return_data.size
                v = _2580 + ceil32(return_data.size) + 32
                u = _2580 + _2616 + 32
                while u < _2580 + _2616 + (32 * _2652) + 32:
                    mem[v] = mem[u]
                    v = v + 32
                    u = u + 32
                    continue 
                if _2652 < 1:
                    revert with 0, 17
                if _2652 - 1 >= _2652:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] > !(mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                    revert with 0, 17
                if s > !(mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] + (mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1456 - t
                s = mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32]
                s = s + mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] + (mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                t = _1456
                continue 
        else:
            if cd[(('cd', 36)[0] + cd[36] + 196)] != 2:
                if cd[(('cd', 36)[0] + cd[36] + 196)] != 3:
                    if mem[96] < 1:
                        revert with 0, 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 0, 50
                    _25 = mem[(32 * mem[96] - 1) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _25 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000):
                                revert with 0, 17
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                                _806 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 196
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_806 + 100] = this.address
                                mem[_806 + 132] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1426 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1438 = mem[_1426]
                                require mem[_1426] <= test266151307()
                                require _1426 + return_data.size > _1426 + mem[_1426] + 31
                                _1462 = mem[_1426 + mem[_1426]]
                                if mem[_1426 + mem[_1426]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1426 + mem[_1426]]) + 1 < 0 or _1426 + ceil32(return_data.size) + ceil32(32 * mem[_1426 + mem[_1426]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1426 + ceil32(return_data.size) + ceil32(32 * mem[_1426 + mem[_1426]]) + 1
                                mem[_1426 + ceil32(return_data.size)] = _1462
                                require _1438 + (32 * _1462) + 32 <= return_data.size
                                v = _1426 + ceil32(return_data.size) + 32
                                u = _1426 + _1438 + 32
                                while u < _1426 + _1438 + (32 * _1462) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _1462 < 1:
                                    revert with 0, 17
                                if _1462 - 1 >= _1462:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] > !(mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] + (mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                                s = mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] + (mem[(32 * _1462 - 1) + _1426 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000)
                                continue 
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                    if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                        revert with 0, 17
                                    if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                        revert with 0, 17
                                    if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000)
                                    continue 
                                _811 = mem[64]
                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 164
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_811 + 68] = this.address
                                mem[_811 + 100] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1424 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1436 = mem[_1424]
                                require mem[_1424] <= test266151307()
                                require _1424 + return_data.size > _1424 + mem[_1424] + 31
                                _1460 = mem[_1424 + mem[_1424]]
                                if mem[_1424 + mem[_1424]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1424 + mem[_1424]]) + 1 < 0 or _1424 + ceil32(return_data.size) + ceil32(32 * mem[_1424 + mem[_1424]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1424 + ceil32(return_data.size) + ceil32(32 * mem[_1424 + mem[_1424]]) + 1
                                mem[_1424 + ceil32(return_data.size)] = _1460
                                require _1436 + (32 * _1460) + 32 <= return_data.size
                                v = _1424 + ceil32(return_data.size) + 32
                                u = _1424 + _1436 + 32
                                while u < _1424 + _1436 + (32 * _1460) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _1460 < 1:
                                    revert with 0, 17
                                if _1460 - 1 >= _1460:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] > !(mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] + (mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                                s = mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] + (mem[(32 * _1460 - 1) + _1424 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000)
                                continue 
                            _808 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_808 + 100] = this.address
                            mem[_808 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1425 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1437 = mem[_1425]
                            require mem[_1425] <= test266151307()
                            require _1425 + return_data.size > _1425 + mem[_1425] + 31
                            _1461 = mem[_1425 + mem[_1425]]
                            if mem[_1425 + mem[_1425]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1425 + mem[_1425]]) + 1 < 0 or _1425 + ceil32(return_data.size) + ceil32(32 * mem[_1425 + mem[_1425]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1425 + ceil32(return_data.size) + ceil32(32 * mem[_1425 + mem[_1425]]) + 1
                            mem[_1425 + ceil32(return_data.size)] = _1461
                            require _1437 + (32 * _1461) + 32 <= return_data.size
                            v = _1425 + ceil32(return_data.size) + 32
                            u = _1425 + _1437 + 32
                            while u < _1425 + _1437 + (32 * _1461) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1461 < 1:
                                revert with 0, 17
                            if _1461 - 1 >= _1461:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] > !(mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] + (mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000
                            s = mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] + (mem[(32 * _1461 - 1) + _1425 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _25 / 10000)
                            continue 
                        if _25 <= t:
                            revert with 0, 'INVALID_IN'
                        if _25 < t:
                            revert with 0, 17
                        if t > !(_25 - t):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _815 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _25 - t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_815 + 100] = this.address
                            mem[_815 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1429 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1441 = mem[_1429]
                            require mem[_1429] <= test266151307()
                            require _1429 + return_data.size > _1429 + mem[_1429] + 31
                            _1465 = mem[_1429 + mem[_1429]]
                            if mem[_1429 + mem[_1429]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1429 + mem[_1429]]) + 1 < 0 or _1429 + ceil32(return_data.size) + ceil32(32 * mem[_1429 + mem[_1429]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1429 + ceil32(return_data.size) + ceil32(32 * mem[_1429 + mem[_1429]]) + 1
                            mem[_1429 + ceil32(return_data.size)] = _1465
                            require _1441 + (32 * _1465) + 32 <= return_data.size
                            v = _1429 + ceil32(return_data.size) + 32
                            u = _1429 + _1441 + 32
                            while u < _1429 + _1441 + (32 * _1465) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1465 < 1:
                                revert with 0, 17
                            if _1465 - 1 >= _1465:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] > !(mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] + (mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _25 - t
                            s = mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] + (mem[(32 * _1465 - 1) + _1429 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _25
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _25 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _25
                                continue 
                            _839 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_839 + 68] = this.address
                            mem[_839 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _25 - t wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1427 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1439 = mem[_1427]
                            require mem[_1427] <= test266151307()
                            require _1427 + return_data.size > _1427 + mem[_1427] + 31
                            _1463 = mem[_1427 + mem[_1427]]
                            if mem[_1427 + mem[_1427]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1427 + mem[_1427]]) + 1 < 0 or _1427 + ceil32(return_data.size) + ceil32(32 * mem[_1427 + mem[_1427]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1427 + ceil32(return_data.size) + ceil32(32 * mem[_1427 + mem[_1427]]) + 1
                            mem[_1427 + ceil32(return_data.size)] = _1463
                            require _1439 + (32 * _1463) + 32 <= return_data.size
                            v = _1427 + ceil32(return_data.size) + 32
                            u = _1427 + _1439 + 32
                            while u < _1427 + _1439 + (32 * _1463) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1463 < 1:
                                revert with 0, 17
                            if _1463 - 1 >= _1463:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] > !(mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] + (mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _25 - t
                            s = mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] + (mem[(32 * _1463 - 1) + _1427 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _25
                            continue 
                        _820 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _25 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_820 + 100] = this.address
                        mem[_820 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1428 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1440 = mem[_1428]
                        require mem[_1428] <= test266151307()
                        require _1428 + return_data.size > _1428 + mem[_1428] + 31
                        _1464 = mem[_1428 + mem[_1428]]
                        if mem[_1428 + mem[_1428]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1428 + mem[_1428]]) + 1 < 0 or _1428 + ceil32(return_data.size) + ceil32(32 * mem[_1428 + mem[_1428]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1428 + ceil32(return_data.size) + ceil32(32 * mem[_1428 + mem[_1428]]) + 1
                        mem[_1428 + ceil32(return_data.size)] = _1464
                        require _1440 + (32 * _1464) + 32 <= return_data.size
                        v = _1428 + ceil32(return_data.size) + 32
                        u = _1428 + _1440 + 32
                        while u < _1428 + _1440 + (32 * _1464) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _1464 < 1:
                            revert with 0, 17
                        if _1464 - 1 >= _1464:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] > !(mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] + (mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _25 - t
                        s = mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] + (mem[(32 * _1464 - 1) + _1428 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _25
                        continue 
                else:
                    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    mem[132] = 128
                    mem[228] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
                    idx = 0
                    s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
                    t = 260
                    while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[164] = this.address
                    mem[196] = cd[68]
                    call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value cd[(('cd', 36)[0] + cd[36] + 132)] wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[260 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _726 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= test266151307()
                    require return_data.size + 96 > mem[96 len 4], 0 + 127
                    _732 = mem[mem[96 len 4], 0 + 96]
                    if mem[mem[96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
                    mem[ceil32(return_data.size) + 96] = _732
                    require _726 + (32 * _732) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 128 len ceil32(32 * _732)] = mem[_726 + 128 len ceil32(32 * _732)]
                    if _732 < 1:
                        revert with 0, 17
                    if _732 - 1 >= _732:
                        revert with 0, 50
                    _1454 = mem[(32 * _732 - 1) + ceil32(return_data.size) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1454 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000):
                                revert with 0, 17
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                                _2132 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 196
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2132 + 100] = this.address
                                mem[_2132 + 132] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2566 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2602 = mem[_2566]
                                require mem[_2566] <= test266151307()
                                require _2566 + return_data.size > _2566 + mem[_2566] + 31
                                _2638 = mem[_2566 + mem[_2566]]
                                if mem[_2566 + mem[_2566]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2566 + mem[_2566]]) + 1 < 0 or _2566 + ceil32(return_data.size) + ceil32(32 * mem[_2566 + mem[_2566]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2566 + ceil32(return_data.size) + ceil32(32 * mem[_2566 + mem[_2566]]) + 1
                                mem[_2566 + ceil32(return_data.size)] = _2638
                                require _2602 + (32 * _2638) + 32 <= return_data.size
                                v = _2566 + ceil32(return_data.size) + 32
                                u = _2566 + _2602 + 32
                                while u < _2566 + _2602 + (32 * _2638) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _2638 < 1:
                                    revert with 0, 17
                                if _2638 - 1 >= _2638:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] > !(mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] + (mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                                s = mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] + (mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000)
                                continue 
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                    if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                        revert with 0, 17
                                    if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                        revert with 0, 17
                                    if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000)
                                    continue 
                                _2145 = mem[64]
                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 164
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2145 + 68] = this.address
                                mem[_2145 + 100] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2564 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2600 = mem[_2564]
                                require mem[_2564] <= test266151307()
                                require _2564 + return_data.size > _2564 + mem[_2564] + 31
                                _2636 = mem[_2564 + mem[_2564]]
                                if mem[_2564 + mem[_2564]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2564 + mem[_2564]]) + 1 < 0 or _2564 + ceil32(return_data.size) + ceil32(32 * mem[_2564 + mem[_2564]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2564 + ceil32(return_data.size) + ceil32(32 * mem[_2564 + mem[_2564]]) + 1
                                mem[_2564 + ceil32(return_data.size)] = _2636
                                require _2600 + (32 * _2636) + 32 <= return_data.size
                                v = _2564 + ceil32(return_data.size) + 32
                                u = _2564 + _2600 + 32
                                while u < _2564 + _2600 + (32 * _2636) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _2636 < 1:
                                    revert with 0, 17
                                if _2636 - 1 >= _2636:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] > !(mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] + (mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                                s = mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] + (mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000)
                                continue 
                            _2138 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2138 + 100] = this.address
                            mem[_2138 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2565 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2601 = mem[_2565]
                            require mem[_2565] <= test266151307()
                            require _2565 + return_data.size > _2565 + mem[_2565] + 31
                            _2637 = mem[_2565 + mem[_2565]]
                            if mem[_2565 + mem[_2565]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2565 + mem[_2565]]) + 1 < 0 or _2565 + ceil32(return_data.size) + ceil32(32 * mem[_2565 + mem[_2565]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2565 + ceil32(return_data.size) + ceil32(32 * mem[_2565 + mem[_2565]]) + 1
                            mem[_2565 + ceil32(return_data.size)] = _2637
                            require _2601 + (32 * _2637) + 32 <= return_data.size
                            v = _2565 + ceil32(return_data.size) + 32
                            u = _2565 + _2601 + 32
                            while u < _2565 + _2601 + (32 * _2637) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2637 < 1:
                                revert with 0, 17
                            if _2637 - 1 >= _2637:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] > !(mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] + (mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000
                            s = mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] + (mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1454 / 10000)
                            continue 
                        if _1454 <= t:
                            revert with 0, 'INVALID_IN'
                        if _1454 < t:
                            revert with 0, 17
                        if t > !(_1454 - t):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _2157 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1454 - t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2157 + 100] = this.address
                            mem[_2157 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2569 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2605 = mem[_2569]
                            require mem[_2569] <= test266151307()
                            require _2569 + return_data.size > _2569 + mem[_2569] + 31
                            _2641 = mem[_2569 + mem[_2569]]
                            if mem[_2569 + mem[_2569]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2569 + mem[_2569]]) + 1 < 0 or _2569 + ceil32(return_data.size) + ceil32(32 * mem[_2569 + mem[_2569]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2569 + ceil32(return_data.size) + ceil32(32 * mem[_2569 + mem[_2569]]) + 1
                            mem[_2569 + ceil32(return_data.size)] = _2641
                            require _2605 + (32 * _2641) + 32 <= return_data.size
                            v = _2569 + ceil32(return_data.size) + 32
                            u = _2569 + _2605 + 32
                            while u < _2569 + _2605 + (32 * _2641) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2641 < 1:
                                revert with 0, 17
                            if _2641 - 1 >= _2641:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] > !(mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] + (mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1454 - t
                            s = mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] + (mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1454
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1454 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _1454
                                continue 
                            _2189 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2189 + 68] = this.address
                            mem[_2189 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _1454 - t wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2567 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2603 = mem[_2567]
                            require mem[_2567] <= test266151307()
                            require _2567 + return_data.size > _2567 + mem[_2567] + 31
                            _2639 = mem[_2567 + mem[_2567]]
                            if mem[_2567 + mem[_2567]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2567 + mem[_2567]]) + 1 < 0 or _2567 + ceil32(return_data.size) + ceil32(32 * mem[_2567 + mem[_2567]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2567 + ceil32(return_data.size) + ceil32(32 * mem[_2567 + mem[_2567]]) + 1
                            mem[_2567 + ceil32(return_data.size)] = _2639
                            require _2603 + (32 * _2639) + 32 <= return_data.size
                            v = _2567 + ceil32(return_data.size) + 32
                            u = _2567 + _2603 + 32
                            while u < _2567 + _2603 + (32 * _2639) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2639 < 1:
                                revert with 0, 17
                            if _2639 - 1 >= _2639:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] > !(mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] + (mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1454 - t
                            s = mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] + (mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1454
                            continue 
                        _2170 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1454 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2170 + 100] = this.address
                        mem[_2170 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2568 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2604 = mem[_2568]
                        require mem[_2568] <= test266151307()
                        require _2568 + return_data.size > _2568 + mem[_2568] + 31
                        _2640 = mem[_2568 + mem[_2568]]
                        if mem[_2568 + mem[_2568]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2568 + mem[_2568]]) + 1 < 0 or _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1
                        mem[_2568 + ceil32(return_data.size)] = _2640
                        require _2604 + (32 * _2640) + 32 <= return_data.size
                        v = _2568 + ceil32(return_data.size) + 32
                        u = _2568 + _2604 + 32
                        while u < _2568 + _2604 + (32 * _2640) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2640 < 1:
                            revert with 0, 17
                        if _2640 - 1 >= _2640:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] > !(mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] + (mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1454 - t
                        s = mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] + (mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1454
                        continue 
            else:
                mem[96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[100] = cd[(('cd', 36)[0] + cd[36] + 132)]
                mem[132] = 0
                mem[164] = 160
                mem[260] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
                idx = 0
                s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
                t = 292
                while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[196] = this.address
                mem[228] = cd[68]
                call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[(('cd', 36)[0] + cd[36] + 132)], 0, 160, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[292 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _727 = mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32
                require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 <= test266151307()
                require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127
                _733 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
                if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _733
                require _727 + (32 * _733) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 128 len ceil32(32 * _733)] = mem[_727 + 128 len ceil32(32 * _733)]
                if _733 < 1:
                    revert with 0, 17
                if _733 - 1 >= _733:
                    revert with 0, 50
                _1455 = mem[(32 * _733 - 1) + ceil32(return_data.size) + 128]
                idx = 1
                s = 0
                s = 0
                s = 0
                t = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1455 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                        revert with 0, 17
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if idx != ('cd', 36).length - 1:
                        if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _2133 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2133 + 100] = this.address
                            mem[_2133 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2572 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2608 = mem[_2572]
                            require mem[_2572] <= test266151307()
                            require _2572 + return_data.size > _2572 + mem[_2572] + 31
                            _2644 = mem[_2572 + mem[_2572]]
                            if mem[_2572 + mem[_2572]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2572 + mem[_2572]]) + 1 < 0 or _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1
                            mem[_2572 + ceil32(return_data.size)] = _2644
                            require _2608 + (32 * _2644) + 32 <= return_data.size
                            v = _2572 + ceil32(return_data.size) + 32
                            u = _2572 + _2608 + 32
                            while u < _2572 + _2608 + (32 * _2644) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2644 < 1:
                                revert with 0, 17
                            if _2644 - 1 >= _2644:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] > !(mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] + (mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                            s = mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] + (mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000)
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000)
                                continue 
                            _2147 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2147 + 68] = this.address
                            mem[_2147 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2570 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2606 = mem[_2570]
                            require mem[_2570] <= test266151307()
                            require _2570 + return_data.size > _2570 + mem[_2570] + 31
                            _2642 = mem[_2570 + mem[_2570]]
                            if mem[_2570 + mem[_2570]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2570 + mem[_2570]]) + 1 < 0 or _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1
                            mem[_2570 + ceil32(return_data.size)] = _2642
                            require _2606 + (32 * _2642) + 32 <= return_data.size
                            v = _2570 + ceil32(return_data.size) + 32
                            u = _2570 + _2606 + 32
                            while u < _2570 + _2606 + (32 * _2642) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2642 < 1:
                                revert with 0, 17
                            if _2642 - 1 >= _2642:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] > !(mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] + (mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                            s = mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] + (mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000)
                            continue 
                        _2139 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2139 + 100] = this.address
                        mem[_2139 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2571 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2607 = mem[_2571]
                        require mem[_2571] <= test266151307()
                        require _2571 + return_data.size > _2571 + mem[_2571] + 31
                        _2643 = mem[_2571 + mem[_2571]]
                        if mem[_2571 + mem[_2571]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2571 + mem[_2571]]) + 1 < 0 or _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1
                        mem[_2571 + ceil32(return_data.size)] = _2643
                        require _2607 + (32 * _2643) + 32 <= return_data.size
                        v = _2571 + ceil32(return_data.size) + 32
                        u = _2571 + _2607 + 32
                        while u < _2571 + _2607 + (32 * _2643) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2643 < 1:
                            revert with 0, 17
                        if _2643 - 1 >= _2643:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] > !(mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] + (mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000
                        s = mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] + (mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1455 / 10000)
                        continue 
                    if _1455 <= t:
                        revert with 0, 'INVALID_IN'
                    if _1455 < t:
                        revert with 0, 17
                    if t > !(_1455 - t):
                        revert with 0, 17
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                    require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                        _2159 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1455 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2159 + 100] = this.address
                        mem[_2159 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2575 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2611 = mem[_2575]
                        require mem[_2575] <= test266151307()
                        require _2575 + return_data.size > _2575 + mem[_2575] + 31
                        _2647 = mem[_2575 + mem[_2575]]
                        if mem[_2575 + mem[_2575]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2575 + mem[_2575]]) + 1 < 0 or _2575 + ceil32(return_data.size) + ceil32(32 * mem[_2575 + mem[_2575]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2575 + ceil32(return_data.size) + ceil32(32 * mem[_2575 + mem[_2575]]) + 1
                        mem[_2575 + ceil32(return_data.size)] = _2647
                        require _2611 + (32 * _2647) + 32 <= return_data.size
                        v = _2575 + ceil32(return_data.size) + 32
                        u = _2575 + _2611 + 32
                        while u < _2575 + _2611 + (32 * _2647) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2647 < 1:
                            revert with 0, 17
                        if _2647 - 1 >= _2647:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] > !(mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] + (mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1455 - t
                        s = mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] + (mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1455
                        continue 
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                revert with 0, 17
                            if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1455 - t
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1455
                            continue 
                        _2193 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 164
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2193 + 68] = this.address
                        mem[_2193 + 100] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value _1455 - t wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2573 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2609 = mem[_2573]
                        require mem[_2573] <= test266151307()
                        require _2573 + return_data.size > _2573 + mem[_2573] + 31
                        _2645 = mem[_2573 + mem[_2573]]
                        if mem[_2573 + mem[_2573]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2573 + mem[_2573]]) + 1 < 0 or _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1
                        mem[_2573 + ceil32(return_data.size)] = _2645
                        require _2609 + (32 * _2645) + 32 <= return_data.size
                        v = _2573 + ceil32(return_data.size) + 32
                        u = _2573 + _2609 + 32
                        while u < _2573 + _2609 + (32 * _2645) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2645 < 1:
                            revert with 0, 17
                        if _2645 - 1 >= _2645:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] > !(mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] + (mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1455 - t
                        s = mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] + (mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1455
                        continue 
                    _2173 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1455 - t
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2173 + 100] = this.address
                    mem[_2173 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2574 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2610 = mem[_2574]
                    require mem[_2574] <= test266151307()
                    require _2574 + return_data.size > _2574 + mem[_2574] + 31
                    _2646 = mem[_2574 + mem[_2574]]
                    if mem[_2574 + mem[_2574]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2574 + mem[_2574]]) + 1 < 0 or _2574 + ceil32(return_data.size) + ceil32(32 * mem[_2574 + mem[_2574]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2574 + ceil32(return_data.size) + ceil32(32 * mem[_2574 + mem[_2574]]) + 1
                    mem[_2574 + ceil32(return_data.size)] = _2646
                    require _2610 + (32 * _2646) + 32 <= return_data.size
                    v = _2574 + ceil32(return_data.size) + 32
                    u = _2574 + _2610 + 32
                    while u < _2574 + _2610 + (32 * _2646) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2646 < 1:
                        revert with 0, 17
                    if _2646 - 1 >= _2646:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] > !(mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] + (mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1455 - t
                    s = mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] + (mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1455
                    continue 
    else:
        if stor1[msg.sender] != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is neither owner nor accessor'
        if stor2[cd[4]]:
            revert with 0, 'ALREADY_EXECUTED'
        mem[0] = cd[4]
        mem[32] = 2
        stor2[cd[4]] = 1
        if ('cd', 36).length <= 1:
            revert with 0, 'BRANCHES_TOO_SHORT'
        if not ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        require cd[(('cd', 36)[0] + cd[36] + 36)] == address(cd[(('cd', 36)[0] + cd[36] + 36)])
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] < calldata.size + -cd[36] - 227
        require cd[(('cd', 36)[0] + cd[36] + 68)] < calldata.size + -('cd', 36)[0] + -cd[36] - 67
        require cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)] <= test266151307()
        require ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)])
        if cd[(('cd', 36)[0] + cd[36] + 196)] == 1:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[(('cd', 36)[0] + cd[36] + 132)]
            mem[132] = 0
            mem[164] = 160
            mem[260] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
            idx = 0
            s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
            t = 292
            while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = this.address
            mem[228] = cd[68]
            call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(('cd', 36)[0] + cd[36] + 132)], 0, 160, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[292 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _731 = mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 <= test266151307()
            require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127
            _737 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _737
            require _731 + (32 * _737) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(32 * _737)] = mem[_731 + 128 len ceil32(32 * _737)]
            if _737 < 1:
                revert with 0, 17
            if _737 - 1 >= _737:
                revert with 0, 50
            _1459 = mem[(32 * _737 - 1) + ceil32(return_data.size) + 128]
            idx = 1
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1459 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                    revert with 0, 17
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if idx != ('cd', 36).length - 1:
                    if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000):
                        revert with 0, 17
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                    require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                        _2137 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2137 + 100] = this.address
                        mem[_2137 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2596 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2632 = mem[_2596]
                        require mem[_2596] <= test266151307()
                        require _2596 + return_data.size > _2596 + mem[_2596] + 31
                        _2668 = mem[_2596 + mem[_2596]]
                        if mem[_2596 + mem[_2596]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2596 + mem[_2596]]) + 1 < 0 or _2596 + ceil32(return_data.size) + ceil32(32 * mem[_2596 + mem[_2596]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2596 + ceil32(return_data.size) + ceil32(32 * mem[_2596 + mem[_2596]]) + 1
                        mem[_2596 + ceil32(return_data.size)] = _2668
                        require _2632 + (32 * _2668) + 32 <= return_data.size
                        v = _2596 + ceil32(return_data.size) + 32
                        u = _2596 + _2632 + 32
                        while u < _2596 + _2632 + (32 * _2668) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2668 < 1:
                            revert with 0, 17
                        if _2668 - 1 >= _2668:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] > !(mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] + (mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                        s = mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] + (mem[(32 * _2668 - 1) + _2596 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000)
                        continue 
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                revert with 0, 17
                            if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000)
                            continue 
                        _2155 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 164
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2155 + 68] = this.address
                        mem[_2155 + 100] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2594 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2630 = mem[_2594]
                        require mem[_2594] <= test266151307()
                        require _2594 + return_data.size > _2594 + mem[_2594] + 31
                        _2666 = mem[_2594 + mem[_2594]]
                        if mem[_2594 + mem[_2594]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2594 + mem[_2594]]) + 1 < 0 or _2594 + ceil32(return_data.size) + ceil32(32 * mem[_2594 + mem[_2594]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2594 + ceil32(return_data.size) + ceil32(32 * mem[_2594 + mem[_2594]]) + 1
                        mem[_2594 + ceil32(return_data.size)] = _2666
                        require _2630 + (32 * _2666) + 32 <= return_data.size
                        v = _2594 + ceil32(return_data.size) + 32
                        u = _2594 + _2630 + 32
                        while u < _2594 + _2630 + (32 * _2666) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2666 < 1:
                            revert with 0, 17
                        if _2666 - 1 >= _2666:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] > !(mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] + (mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                        s = mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] + (mem[(32 * _2666 - 1) + _2594 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000)
                        continue 
                    _2143 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2143 + 100] = this.address
                    mem[_2143 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2595 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2631 = mem[_2595]
                    require mem[_2595] <= test266151307()
                    require _2595 + return_data.size > _2595 + mem[_2595] + 31
                    _2667 = mem[_2595 + mem[_2595]]
                    if mem[_2595 + mem[_2595]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2595 + mem[_2595]]) + 1 < 0 or _2595 + ceil32(return_data.size) + ceil32(32 * mem[_2595 + mem[_2595]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2595 + ceil32(return_data.size) + ceil32(32 * mem[_2595 + mem[_2595]]) + 1
                    mem[_2595 + ceil32(return_data.size)] = _2667
                    require _2631 + (32 * _2667) + 32 <= return_data.size
                    v = _2595 + ceil32(return_data.size) + 32
                    u = _2595 + _2631 + 32
                    while u < _2595 + _2631 + (32 * _2667) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2667 < 1:
                        revert with 0, 17
                    if _2667 - 1 >= _2667:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] > !(mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] + (mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000
                    s = mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] + (mem[(32 * _2667 - 1) + _2595 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1459 / 10000)
                    continue 
                if _1459 <= t:
                    revert with 0, 'INVALID_IN'
                if _1459 < t:
                    revert with 0, 17
                if t > !(_1459 - t):
                    revert with 0, 17
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                    _2167 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1459 - t
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2167 + 100] = this.address
                    mem[_2167 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2599 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2635 = mem[_2599]
                    require mem[_2599] <= test266151307()
                    require _2599 + return_data.size > _2599 + mem[_2599] + 31
                    _2671 = mem[_2599 + mem[_2599]]
                    if mem[_2599 + mem[_2599]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2599 + mem[_2599]]) + 1 < 0 or _2599 + ceil32(return_data.size) + ceil32(32 * mem[_2599 + mem[_2599]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2599 + ceil32(return_data.size) + ceil32(32 * mem[_2599 + mem[_2599]]) + 1
                    mem[_2599 + ceil32(return_data.size)] = _2671
                    require _2635 + (32 * _2671) + 32 <= return_data.size
                    v = _2599 + ceil32(return_data.size) + 32
                    u = _2599 + _2635 + 32
                    while u < _2599 + _2635 + (32 * _2671) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2671 < 1:
                        revert with 0, 17
                    if _2671 - 1 >= _2671:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] > !(mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] + (mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1459 - t
                    s = mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] + (mem[(32 * _2671 - 1) + _2599 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1459
                    continue 
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                            revert with 0, 17
                        if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1459 - t
                        s = mem[(32 * mem[96] - 1) + 128]
                        s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1459
                        continue 
                    _2209 = mem[64]
                    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 164
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2209 + 68] = this.address
                    mem[_2209 + 100] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                       value _1459 - t wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2597 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2633 = mem[_2597]
                    require mem[_2597] <= test266151307()
                    require _2597 + return_data.size > _2597 + mem[_2597] + 31
                    _2669 = mem[_2597 + mem[_2597]]
                    if mem[_2597 + mem[_2597]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2597 + mem[_2597]]) + 1 < 0 or _2597 + ceil32(return_data.size) + ceil32(32 * mem[_2597 + mem[_2597]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2597 + ceil32(return_data.size) + ceil32(32 * mem[_2597 + mem[_2597]]) + 1
                    mem[_2597 + ceil32(return_data.size)] = _2669
                    require _2633 + (32 * _2669) + 32 <= return_data.size
                    v = _2597 + ceil32(return_data.size) + 32
                    u = _2597 + _2633 + 32
                    while u < _2597 + _2633 + (32 * _2669) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2669 < 1:
                        revert with 0, 17
                    if _2669 - 1 >= _2669:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] > !(mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] + (mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1459 - t
                    s = mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] + (mem[(32 * _2669 - 1) + _2597 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1459
                    continue 
                _2185 = mem[64]
                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1459 - t
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                u = 0
                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                w = mem[64] + 196
                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    require cd[v] == address(cd[v])
                    mem[w] = address(cd[v])
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_2185 + 100] = this.address
                mem[_2185 + 132] = cd[68]
                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2598 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2634 = mem[_2598]
                require mem[_2598] <= test266151307()
                require _2598 + return_data.size > _2598 + mem[_2598] + 31
                _2670 = mem[_2598 + mem[_2598]]
                if mem[_2598 + mem[_2598]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_2598 + mem[_2598]]) + 1 < 0 or _2598 + ceil32(return_data.size) + ceil32(32 * mem[_2598 + mem[_2598]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2598 + ceil32(return_data.size) + ceil32(32 * mem[_2598 + mem[_2598]]) + 1
                mem[_2598 + ceil32(return_data.size)] = _2670
                require _2634 + (32 * _2670) + 32 <= return_data.size
                v = _2598 + ceil32(return_data.size) + 32
                u = _2598 + _2634 + 32
                while u < _2598 + _2634 + (32 * _2670) + 32:
                    mem[v] = mem[u]
                    v = v + 32
                    u = u + 32
                    continue 
                if _2670 < 1:
                    revert with 0, 17
                if _2670 - 1 >= _2670:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] > !(mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                    revert with 0, 17
                if s > !(mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] + (mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1459 - t
                s = mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32]
                s = s + mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] + (mem[(32 * _2670 - 1) + _2598 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                t = _1459
                continue 
        else:
            if cd[(('cd', 36)[0] + cd[36] + 196)] != 2:
                if cd[(('cd', 36)[0] + cd[36] + 196)] != 3:
                    if mem[96] < 1:
                        revert with 0, 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 0, 50
                    _30 = mem[(32 * mem[96] - 1) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _30 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000):
                                revert with 0, 17
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                                _807 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 196
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_807 + 100] = this.address
                                mem[_807 + 132] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1432 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1447 = mem[_1432]
                                require mem[_1432] <= test266151307()
                                require _1432 + return_data.size > _1432 + mem[_1432] + 31
                                _1468 = mem[_1432 + mem[_1432]]
                                if mem[_1432 + mem[_1432]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1432 + mem[_1432]]) + 1 < 0 or _1432 + ceil32(return_data.size) + ceil32(32 * mem[_1432 + mem[_1432]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1432 + ceil32(return_data.size) + ceil32(32 * mem[_1432 + mem[_1432]]) + 1
                                mem[_1432 + ceil32(return_data.size)] = _1468
                                require _1447 + (32 * _1468) + 32 <= return_data.size
                                v = _1432 + ceil32(return_data.size) + 32
                                u = _1432 + _1447 + 32
                                while u < _1432 + _1447 + (32 * _1468) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _1468 < 1:
                                    revert with 0, 17
                                if _1468 - 1 >= _1468:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] > !(mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] + (mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                                s = mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] + (mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000)
                                continue 
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                    if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                        revert with 0, 17
                                    if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                        revert with 0, 17
                                    if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000)
                                    continue 
                                _813 = mem[64]
                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 164
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_813 + 68] = this.address
                                mem[_813 + 100] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1430 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1445 = mem[_1430]
                                require mem[_1430] <= test266151307()
                                require _1430 + return_data.size > _1430 + mem[_1430] + 31
                                _1466 = mem[_1430 + mem[_1430]]
                                if mem[_1430 + mem[_1430]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1430 + mem[_1430]]) + 1 < 0 or _1430 + ceil32(return_data.size) + ceil32(32 * mem[_1430 + mem[_1430]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1430 + ceil32(return_data.size) + ceil32(32 * mem[_1430 + mem[_1430]]) + 1
                                mem[_1430 + ceil32(return_data.size)] = _1466
                                require _1445 + (32 * _1466) + 32 <= return_data.size
                                v = _1430 + ceil32(return_data.size) + 32
                                u = _1430 + _1445 + 32
                                while u < _1430 + _1445 + (32 * _1466) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _1466 < 1:
                                    revert with 0, 17
                                if _1466 - 1 >= _1466:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] > !(mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] + (mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                                s = mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] + (mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000)
                                continue 
                            _809 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_809 + 100] = this.address
                            mem[_809 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1431 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1446 = mem[_1431]
                            require mem[_1431] <= test266151307()
                            require _1431 + return_data.size > _1431 + mem[_1431] + 31
                            _1467 = mem[_1431 + mem[_1431]]
                            if mem[_1431 + mem[_1431]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1431 + mem[_1431]]) + 1 < 0 or _1431 + ceil32(return_data.size) + ceil32(32 * mem[_1431 + mem[_1431]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1431 + ceil32(return_data.size) + ceil32(32 * mem[_1431 + mem[_1431]]) + 1
                            mem[_1431 + ceil32(return_data.size)] = _1467
                            require _1446 + (32 * _1467) + 32 <= return_data.size
                            v = _1431 + ceil32(return_data.size) + 32
                            u = _1431 + _1446 + 32
                            while u < _1431 + _1446 + (32 * _1467) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1467 < 1:
                                revert with 0, 17
                            if _1467 - 1 >= _1467:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] > !(mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] + (mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000
                            s = mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] + (mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _30 / 10000)
                            continue 
                        if _30 <= t:
                            revert with 0, 'INVALID_IN'
                        if _30 < t:
                            revert with 0, 17
                        if t > !(_30 - t):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _817 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _30 - t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_817 + 100] = this.address
                            mem[_817 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1435 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1450 = mem[_1435]
                            require mem[_1435] <= test266151307()
                            require _1435 + return_data.size > _1435 + mem[_1435] + 31
                            _1471 = mem[_1435 + mem[_1435]]
                            if mem[_1435 + mem[_1435]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1435 + mem[_1435]]) + 1 < 0 or _1435 + ceil32(return_data.size) + ceil32(32 * mem[_1435 + mem[_1435]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1435 + ceil32(return_data.size) + ceil32(32 * mem[_1435 + mem[_1435]]) + 1
                            mem[_1435 + ceil32(return_data.size)] = _1471
                            require _1450 + (32 * _1471) + 32 <= return_data.size
                            v = _1435 + ceil32(return_data.size) + 32
                            u = _1435 + _1450 + 32
                            while u < _1435 + _1450 + (32 * _1471) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1471 < 1:
                                revert with 0, 17
                            if _1471 - 1 >= _1471:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] > !(mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] + (mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _30 - t
                            s = mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] + (mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _30
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _30 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _30
                                continue 
                            _849 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_849 + 68] = this.address
                            mem[_849 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _30 - t wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1433 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1448 = mem[_1433]
                            require mem[_1433] <= test266151307()
                            require _1433 + return_data.size > _1433 + mem[_1433] + 31
                            _1469 = mem[_1433 + mem[_1433]]
                            if mem[_1433 + mem[_1433]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1433 + mem[_1433]]) + 1 < 0 or _1433 + ceil32(return_data.size) + ceil32(32 * mem[_1433 + mem[_1433]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1433 + ceil32(return_data.size) + ceil32(32 * mem[_1433 + mem[_1433]]) + 1
                            mem[_1433 + ceil32(return_data.size)] = _1469
                            require _1448 + (32 * _1469) + 32 <= return_data.size
                            v = _1433 + ceil32(return_data.size) + 32
                            u = _1433 + _1448 + 32
                            while u < _1433 + _1448 + (32 * _1469) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _1469 < 1:
                                revert with 0, 17
                            if _1469 - 1 >= _1469:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] > !(mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] + (mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _30 - t
                            s = mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] + (mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _30
                            continue 
                        _829 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _30 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_829 + 100] = this.address
                        mem[_829 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1434 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1449 = mem[_1434]
                        require mem[_1434] <= test266151307()
                        require _1434 + return_data.size > _1434 + mem[_1434] + 31
                        _1470 = mem[_1434 + mem[_1434]]
                        if mem[_1434 + mem[_1434]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1434 + mem[_1434]]) + 1 < 0 or _1434 + ceil32(return_data.size) + ceil32(32 * mem[_1434 + mem[_1434]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1434 + ceil32(return_data.size) + ceil32(32 * mem[_1434 + mem[_1434]]) + 1
                        mem[_1434 + ceil32(return_data.size)] = _1470
                        require _1449 + (32 * _1470) + 32 <= return_data.size
                        v = _1434 + ceil32(return_data.size) + 32
                        u = _1434 + _1449 + 32
                        while u < _1434 + _1449 + (32 * _1470) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _1470 < 1:
                            revert with 0, 17
                        if _1470 - 1 >= _1470:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] > !(mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] + (mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _30 - t
                        s = mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] + (mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _30
                        continue 
                else:
                    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    mem[132] = 128
                    mem[228] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
                    idx = 0
                    s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
                    t = 260
                    while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[164] = this.address
                    mem[196] = cd[68]
                    call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value cd[(('cd', 36)[0] + cd[36] + 132)] wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[260 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _729 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= test266151307()
                    require return_data.size + 96 > mem[96 len 4], 0 + 127
                    _735 = mem[mem[96 len 4], 0 + 96]
                    if mem[mem[96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
                    mem[ceil32(return_data.size) + 96] = _735
                    require _729 + (32 * _735) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 128 len ceil32(32 * _735)] = mem[_729 + 128 len ceil32(32 * _735)]
                    if _735 < 1:
                        revert with 0, 17
                    if _735 - 1 >= _735:
                        revert with 0, 50
                    _1457 = mem[(32 * _735 - 1) + ceil32(return_data.size) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1457 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000):
                                revert with 0, 17
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                                _2135 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 196
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2135 + 100] = this.address
                                mem[_2135 + 132] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2584 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2620 = mem[_2584]
                                require mem[_2584] <= test266151307()
                                require _2584 + return_data.size > _2584 + mem[_2584] + 31
                                _2656 = mem[_2584 + mem[_2584]]
                                if mem[_2584 + mem[_2584]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2584 + mem[_2584]]) + 1 < 0 or _2584 + ceil32(return_data.size) + ceil32(32 * mem[_2584 + mem[_2584]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2584 + ceil32(return_data.size) + ceil32(32 * mem[_2584 + mem[_2584]]) + 1
                                mem[_2584 + ceil32(return_data.size)] = _2656
                                require _2620 + (32 * _2656) + 32 <= return_data.size
                                v = _2584 + ceil32(return_data.size) + 32
                                u = _2584 + _2620 + 32
                                while u < _2584 + _2620 + (32 * _2656) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _2656 < 1:
                                    revert with 0, 17
                                if _2656 - 1 >= _2656:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] > !(mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] + (mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                                s = mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] + (mem[(32 * _2656 - 1) + _2584 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000)
                                continue 
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                    if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                        revert with 0, 17
                                    if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                        revert with 0, 17
                                    if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000)
                                    continue 
                                _2151 = mem[64]
                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                                u = 0
                                v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                                w = mem[64] + 164
                                while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                    require cd[v] == address(cd[v])
                                    mem[w] = address(cd[v])
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2151 + 68] = this.address
                                mem[_2151 + 100] = cd[68]
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2582 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2618 = mem[_2582]
                                require mem[_2582] <= test266151307()
                                require _2582 + return_data.size > _2582 + mem[_2582] + 31
                                _2654 = mem[_2582 + mem[_2582]]
                                if mem[_2582 + mem[_2582]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2582 + mem[_2582]]) + 1 < 0 or _2582 + ceil32(return_data.size) + ceil32(32 * mem[_2582 + mem[_2582]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2582 + ceil32(return_data.size) + ceil32(32 * mem[_2582 + mem[_2582]]) + 1
                                mem[_2582 + ceil32(return_data.size)] = _2654
                                require _2618 + (32 * _2654) + 32 <= return_data.size
                                v = _2582 + ceil32(return_data.size) + 32
                                u = _2582 + _2618 + 32
                                while u < _2582 + _2618 + (32 * _2654) + 32:
                                    mem[v] = mem[u]
                                    v = v + 32
                                    u = u + 32
                                    continue 
                                if _2654 < 1:
                                    revert with 0, 17
                                if _2654 - 1 >= _2654:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] > !(mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] + (mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                                s = mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] + (mem[(32 * _2654 - 1) + _2582 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000)
                                continue 
                            _2141 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2141 + 100] = this.address
                            mem[_2141 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2583 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2619 = mem[_2583]
                            require mem[_2583] <= test266151307()
                            require _2583 + return_data.size > _2583 + mem[_2583] + 31
                            _2655 = mem[_2583 + mem[_2583]]
                            if mem[_2583 + mem[_2583]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2583 + mem[_2583]]) + 1 < 0 or _2583 + ceil32(return_data.size) + ceil32(32 * mem[_2583 + mem[_2583]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2583 + ceil32(return_data.size) + ceil32(32 * mem[_2583 + mem[_2583]]) + 1
                            mem[_2583 + ceil32(return_data.size)] = _2655
                            require _2619 + (32 * _2655) + 32 <= return_data.size
                            v = _2583 + ceil32(return_data.size) + 32
                            u = _2583 + _2619 + 32
                            while u < _2583 + _2619 + (32 * _2655) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2655 < 1:
                                revert with 0, 17
                            if _2655 - 1 >= _2655:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] > !(mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] + (mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000
                            s = mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] + (mem[(32 * _2655 - 1) + _2583 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1457 / 10000)
                            continue 
                        if _1457 <= t:
                            revert with 0, 'INVALID_IN'
                        if _1457 < t:
                            revert with 0, 17
                        if t > !(_1457 - t):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _2163 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1457 - t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2163 + 100] = this.address
                            mem[_2163 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2587 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2623 = mem[_2587]
                            require mem[_2587] <= test266151307()
                            require _2587 + return_data.size > _2587 + mem[_2587] + 31
                            _2659 = mem[_2587 + mem[_2587]]
                            if mem[_2587 + mem[_2587]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2587 + mem[_2587]]) + 1 < 0 or _2587 + ceil32(return_data.size) + ceil32(32 * mem[_2587 + mem[_2587]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2587 + ceil32(return_data.size) + ceil32(32 * mem[_2587 + mem[_2587]]) + 1
                            mem[_2587 + ceil32(return_data.size)] = _2659
                            require _2623 + (32 * _2659) + 32 <= return_data.size
                            v = _2587 + ceil32(return_data.size) + 32
                            u = _2587 + _2623 + 32
                            while u < _2587 + _2623 + (32 * _2659) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2659 < 1:
                                revert with 0, 17
                            if _2659 - 1 >= _2659:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] > !(mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] + (mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1457 - t
                            s = mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] + (mem[(32 * _2659 - 1) + _2587 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1457
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1457 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _1457
                                continue 
                            _2201 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2201 + 68] = this.address
                            mem[_2201 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _1457 - t wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2585 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2621 = mem[_2585]
                            require mem[_2585] <= test266151307()
                            require _2585 + return_data.size > _2585 + mem[_2585] + 31
                            _2657 = mem[_2585 + mem[_2585]]
                            if mem[_2585 + mem[_2585]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2585 + mem[_2585]]) + 1 < 0 or _2585 + ceil32(return_data.size) + ceil32(32 * mem[_2585 + mem[_2585]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2585 + ceil32(return_data.size) + ceil32(32 * mem[_2585 + mem[_2585]]) + 1
                            mem[_2585 + ceil32(return_data.size)] = _2657
                            require _2621 + (32 * _2657) + 32 <= return_data.size
                            v = _2585 + ceil32(return_data.size) + 32
                            u = _2585 + _2621 + 32
                            while u < _2585 + _2621 + (32 * _2657) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2657 < 1:
                                revert with 0, 17
                            if _2657 - 1 >= _2657:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] > !(mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] + (mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1457 - t
                            s = mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] + (mem[(32 * _2657 - 1) + _2585 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1457
                            continue 
                        _2179 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1457 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2179 + 100] = this.address
                        mem[_2179 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2586 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2622 = mem[_2586]
                        require mem[_2586] <= test266151307()
                        require _2586 + return_data.size > _2586 + mem[_2586] + 31
                        _2658 = mem[_2586 + mem[_2586]]
                        if mem[_2586 + mem[_2586]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2586 + mem[_2586]]) + 1 < 0 or _2586 + ceil32(return_data.size) + ceil32(32 * mem[_2586 + mem[_2586]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2586 + ceil32(return_data.size) + ceil32(32 * mem[_2586 + mem[_2586]]) + 1
                        mem[_2586 + ceil32(return_data.size)] = _2658
                        require _2622 + (32 * _2658) + 32 <= return_data.size
                        v = _2586 + ceil32(return_data.size) + 32
                        u = _2586 + _2622 + 32
                        while u < _2586 + _2622 + (32 * _2658) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2658 < 1:
                            revert with 0, 17
                        if _2658 - 1 >= _2658:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] > !(mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] + (mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1457 - t
                        s = mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] + (mem[(32 * _2658 - 1) + _2586 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1457
                        continue 
            else:
                mem[96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[100] = cd[(('cd', 36)[0] + cd[36] + 132)]
                mem[132] = 0
                mem[164] = 160
                mem[260] = cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]
                idx = 0
                s = ('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 68
                t = 292
                while idx < cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[196] = this.address
                mem[228] = cd[68]
                call address(cd[(('cd', 36)[0] + cd[36] + 36)]).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[(('cd', 36)[0] + cd[36] + 132)], 0, 160, address(this.address), cd[68], cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)], mem[292 len 32 * cd[(('cd', 36)[0] + cd[36] + cd[(('cd', 36)[0] + cd[36] + 68)] + 36)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _730 = mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32
                require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 <= test266151307()
                require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127
                _736 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
                if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _736
                require _730 + (32 * _736) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 128 len ceil32(32 * _736)] = mem[_730 + 128 len ceil32(32 * _736)]
                if _736 < 1:
                    revert with 0, 17
                if _736 - 1 >= _736:
                    revert with 0, 50
                _1458 = mem[(32 * _736 - 1) + ceil32(return_data.size) + 128]
                idx = 1
                s = 0
                s = 0
                s = 0
                t = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1458 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                        revert with 0, 17
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if idx != ('cd', 36).length - 1:
                        if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000):
                            revert with 0, 17
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                        require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                        require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                            _2136 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 196
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2136 + 100] = this.address
                            mem[_2136 + 132] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2590 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2626 = mem[_2590]
                            require mem[_2590] <= test266151307()
                            require _2590 + return_data.size > _2590 + mem[_2590] + 31
                            _2662 = mem[_2590 + mem[_2590]]
                            if mem[_2590 + mem[_2590]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2590 + mem[_2590]]) + 1 < 0 or _2590 + ceil32(return_data.size) + ceil32(32 * mem[_2590 + mem[_2590]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2590 + ceil32(return_data.size) + ceil32(32 * mem[_2590 + mem[_2590]]) + 1
                            mem[_2590 + ceil32(return_data.size)] = _2662
                            require _2626 + (32 * _2662) + 32 <= return_data.size
                            v = _2590 + ceil32(return_data.size) + 32
                            u = _2590 + _2626 + 32
                            while u < _2590 + _2626 + (32 * _2662) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2662 < 1:
                                revert with 0, 17
                            if _2662 - 1 >= _2662:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] > !(mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] + (mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                            s = mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] + (mem[(32 * _2662 - 1) + _2590 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000)
                            continue 
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                            if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                                if mem[96] < 1:
                                    revert with 0, 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 0, 50
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                                if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                    revert with 0, 17
                                if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                    revert with 0, 17
                                if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000)
                                continue 
                            _2153 = mem[64]
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                            u = 0
                            v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                            w = mem[64] + 164
                            while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                                require cd[v] == address(cd[v])
                                mem[w] = address(cd[v])
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_2153 + 68] = this.address
                            mem[_2153 + 100] = cd[68]
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2588 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2624 = mem[_2588]
                            require mem[_2588] <= test266151307()
                            require _2588 + return_data.size > _2588 + mem[_2588] + 31
                            _2660 = mem[_2588 + mem[_2588]]
                            if mem[_2588 + mem[_2588]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2588 + mem[_2588]]) + 1 < 0 or _2588 + ceil32(return_data.size) + ceil32(32 * mem[_2588 + mem[_2588]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2588 + ceil32(return_data.size) + ceil32(32 * mem[_2588 + mem[_2588]]) + 1
                            mem[_2588 + ceil32(return_data.size)] = _2660
                            require _2624 + (32 * _2660) + 32 <= return_data.size
                            v = _2588 + ceil32(return_data.size) + 32
                            u = _2588 + _2624 + 32
                            while u < _2588 + _2624 + (32 * _2660) + 32:
                                mem[v] = mem[u]
                                v = v + 32
                                u = u + 32
                                continue 
                            if _2660 < 1:
                                revert with 0, 17
                            if _2660 - 1 >= _2660:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] > !(mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] + (mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                            s = mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] + (mem[(32 * _2660 - 1) + _2588 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000)
                            continue 
                        _2142 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2142 + 100] = this.address
                        mem[_2142 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2589 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2625 = mem[_2589]
                        require mem[_2589] <= test266151307()
                        require _2589 + return_data.size > _2589 + mem[_2589] + 31
                        _2661 = mem[_2589 + mem[_2589]]
                        if mem[_2589 + mem[_2589]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2589 + mem[_2589]]) + 1 < 0 or _2589 + ceil32(return_data.size) + ceil32(32 * mem[_2589 + mem[_2589]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2589 + ceil32(return_data.size) + ceil32(32 * mem[_2589 + mem[_2589]]) + 1
                        mem[_2589 + ceil32(return_data.size)] = _2661
                        require _2625 + (32 * _2661) + 32 <= return_data.size
                        v = _2589 + ceil32(return_data.size) + 32
                        u = _2589 + _2625 + 32
                        while u < _2589 + _2625 + (32 * _2661) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2661 < 1:
                            revert with 0, 17
                        if _2661 - 1 >= _2661:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] > !(mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] + (mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000
                        s = mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] + (mem[(32 * _2661 - 1) + _2589 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1458 / 10000)
                        continue 
                    if _1458 <= t:
                        revert with 0, 'INVALID_IN'
                    if _1458 < t:
                        revert with 0, 17
                    if t > !(_1458 - t):
                        revert with 0, 17
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
                    require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
                    require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] == 1:
                        _2165 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1458 - t
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 196
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2165 + 100] = this.address
                        mem[_2165 + 132] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2593 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2629 = mem[_2593]
                        require mem[_2593] <= test266151307()
                        require _2593 + return_data.size > _2593 + mem[_2593] + 31
                        _2665 = mem[_2593 + mem[_2593]]
                        if mem[_2593 + mem[_2593]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2593 + mem[_2593]]) + 1 < 0 or _2593 + ceil32(return_data.size) + ceil32(32 * mem[_2593 + mem[_2593]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2593 + ceil32(return_data.size) + ceil32(32 * mem[_2593 + mem[_2593]]) + 1
                        mem[_2593 + ceil32(return_data.size)] = _2665
                        require _2629 + (32 * _2665) + 32 <= return_data.size
                        v = _2593 + ceil32(return_data.size) + 32
                        u = _2593 + _2629 + 32
                        while u < _2593 + _2629 + (32 * _2665) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2665 < 1:
                            revert with 0, 17
                        if _2665 - 1 >= _2665:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] > !(mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] + (mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1458 - t
                        s = mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] + (mem[(32 * _2665 - 1) + _2593 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1458
                        continue 
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 2:
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 196)] != 3:
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                            if mem[(32 * mem[96] - 1) + 128] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * mem[96] - 1) + 128]:
                                revert with 0, 17
                            if mem[(32 * mem[96] - 1) + 128] > !(mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                                revert with 0, 17
                            if s > !(mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1458 - t
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1458
                            continue 
                        _2205 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                        u = 0
                        v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                        w = mem[64] + 164
                        while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                            require cd[v] == address(cd[v])
                            mem[w] = address(cd[v])
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_2205 + 68] = this.address
                        mem[_2205 + 100] = cd[68]
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value _1458 - t wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2591 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2627 = mem[_2591]
                        require mem[_2591] <= test266151307()
                        require _2591 + return_data.size > _2591 + mem[_2591] + 31
                        _2663 = mem[_2591 + mem[_2591]]
                        if mem[_2591 + mem[_2591]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2591 + mem[_2591]]) + 1 < 0 or _2591 + ceil32(return_data.size) + ceil32(32 * mem[_2591 + mem[_2591]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2591 + ceil32(return_data.size) + ceil32(32 * mem[_2591 + mem[_2591]]) + 1
                        mem[_2591 + ceil32(return_data.size)] = _2663
                        require _2627 + (32 * _2663) + 32 <= return_data.size
                        v = _2591 + ceil32(return_data.size) + 32
                        u = _2591 + _2627 + 32
                        while u < _2591 + _2627 + (32 * _2663) + 32:
                            mem[v] = mem[u]
                            v = v + 32
                            u = u + 32
                            continue 
                        if _2663 < 1:
                            revert with 0, 17
                        if _2663 - 1 >= _2663:
                            revert with 0, 50
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] > !(mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                            revert with 0, 17
                        if s > !(mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] + (mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1458 - t
                        s = mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] + (mem[(32 * _2663 - 1) + _2591 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1458
                        continue 
                    _2182 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1458 - t
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]
                    u = 0
                    v = cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68
                    w = mem[64] + 196
                    while u < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[v] == address(cd[v])
                        mem[w] = address(cd[v])
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_2182 + 100] = this.address
                    mem[_2182 + 132] = cd[68]
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len w + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2592 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2628 = mem[_2592]
                    require mem[_2592] <= test266151307()
                    require _2592 + return_data.size > _2592 + mem[_2592] + 31
                    _2664 = mem[_2592 + mem[_2592]]
                    if mem[_2592 + mem[_2592]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2592 + mem[_2592]]) + 1 < 0 or _2592 + ceil32(return_data.size) + ceil32(32 * mem[_2592 + mem[_2592]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2592 + ceil32(return_data.size) + ceil32(32 * mem[_2592 + mem[_2592]]) + 1
                    mem[_2592 + ceil32(return_data.size)] = _2664
                    require _2628 + (32 * _2664) + 32 <= return_data.size
                    v = _2592 + ceil32(return_data.size) + 32
                    u = _2592 + _2628 + 32
                    while u < _2592 + _2628 + (32 * _2664) + 32:
                        mem[v] = mem[u]
                        v = v + 32
                        u = u + 32
                        continue 
                    if _2664 < 1:
                        revert with 0, 17
                    if _2664 - 1 >= _2664:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] and cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] > -1 / mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] > !(mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000):
                        revert with 0, 17
                    if s > !(mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] + (mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1458 - t
                    s = mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] + (mem[(32 * _2664 - 1) + _2592 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1458
                    continue 
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] < calldata.size + -cd[36] - 227
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] < calldata.size + -cd[36] - 227
    if cd[(('cd', 36)[0] + cd[36] + 132)] and cd[(('cd', 36)[0] + cd[36] + 164)] > -1 / cd[(('cd', 36)[0] + cd[36] + 132)]:
        revert with 0, 17
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] < calldata.size + -cd[36] - 227
    if cd[(('cd', 36)[0] + cd[36] + 132)] < cd[(('cd', 36)[0] + cd[36] + 132)] * cd[(('cd', 36)[0] + cd[36] + 164)] / 10000:
        revert with 0, 17
    if cd[100]:
        if s <= cd[(('cd', 36)[0] + cd[36] + 132)] - (cd[(('cd', 36)[0] + cd[36] + 132)] * cd[(('cd', 36)[0] + cd[36] + 164)] / 10000):
            stor2[cd[4]] = 2
            return 0
    else:
        if s <= cd[(('cd', 36)[0] + cd[36] + 132)] - (cd[(('cd', 36)[0] + cd[36] + 132)] * cd[(('cd', 36)[0] + cd[36] + 164)] / 10000):
            revert with 0, 'WOULD_LOSE'
    ('gt', ('var', 1), ('add', ('cd', ('add', 132, ('cd', ('add', 36, ('cd', 36))), ('cd', 36))), ('mul', -1, ('div', ('mul', ('cd', ('add', 132, ('cd', ('add', 36, ('cd', 36))), ('cd', 36))), ('cd', ('add', 164, ('cd', ('add', 36, ('cd', 36))), ('cd', 36)))), 10000))))
    if s < cd[(('cd', 36)[0] + cd[36] + 132)] - (cd[(('cd', 36)[0] + cd[36] + 132)] * cd[(('cd', 36)[0] + cd[36] + 164)] / 10000):
        revert with 0, 17
    stor2[cd[4]] = 2
    return (s - cd[(('cd', 36)[0] + cd[36] + 132)] + (cd[(('cd', 36)[0] + cd[36] + 132)] * cd[(('cd', 36)[0] + cd[36] + 164)] / 10000))
}



}
