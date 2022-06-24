contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTo(address arg1, address arg2, uint256 arg3)
#  - approve(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;

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
    require ext_code.size(arg1)
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
    require ext_code.size(arg1)
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
        require ext_code.size(arg1)
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
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(arg1)
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
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
        require ext_code.size(arg1)
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
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(arg1)
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
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
        require ext_code.size(arg1)
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
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(arg1)
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
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
        require ext_code.size(arg1)
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
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(arg1)
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
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
        require ext_code.size(address(cd[4]))
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
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(address(cd[4]))
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
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
        require ext_code.size(address(cd[4]))
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
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < return_data.size + 96
        _32 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _32
        require return_data.size >= _30 + (32 * _32) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _32] = mem[_30 + 128 len 32 * _32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _32
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
    mem[0] = msg.sender
    mem[32] = 1
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
    require ext_code.size(address(cd[4]))
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
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < return_data.size + 96
    _33 = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _33
    require return_data.size >= _31 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _33] = mem[_31 + 128 len 32 * _33]
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
    require ext_code.size(address(cd[4]))
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _66 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require return_data.size >= _64 + (32 * _66) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _66] = mem[ceil32(return_data.size) + _64 + 128 len 32 * _66]
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
    require ext_code.size(address(cd[4]))
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
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _67 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    require return_data.size >= _65 + (32 * _67) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _67] = mem[ceil32(return_data.size) + _65 + 128 len 32 * _67]
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
        require ext_code.size(address(cd[4]))
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
            require ext_code.size(address(cd[4]))
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
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require return_data.size >= _210 + (32 * _214) + 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _214] = mem[ceil32(return_data.size) + _210 + 128 len 32 * _214]
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
            require ext_code.size(address(cd[4]))
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
            require _354 + mem[_354] + 31 < _354 + return_data.size
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307() or ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require return_data.size >= _358 + (32 * _362) + 32
            mem[_354 + ceil32(return_data.size) + 32 len 32 * _362] = mem[_354 + _358 + 32 len 32 * _362]
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        require return_data.size >= _211 + (32 * _215) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _215] = mem[ceil32(return_data.size) + _211 + 128 len 32 * _215]
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
        require ext_code.size(address(cd[4]))
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
        require _355 + mem[_355] + 31 < _355 + return_data.size
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307() or ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require return_data.size >= _359 + (32 * _363) + 32
        mem[_355 + ceil32(return_data.size) + 32 len 32 * _363] = mem[_355 + _359 + 32 len 32 * _363]
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
    require ext_code.size(address(cd[4]))
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require return_data.size >= _212 + (32 * _216) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _216] = mem[ceil32(return_data.size) + _212 + 128 len 32 * _216]
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
        require ext_code.size(address(cd[4]))
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
        require _356 + mem[_356] + 31 < _356 + return_data.size
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307() or ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require return_data.size >= _360 + (32 * _364) + 32
        mem[_356 + ceil32(return_data.size) + 32 len 32 * _364] = mem[_356 + _360 + 32 len 32 * _364]
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
    require ext_code.size(address(cd[4]))
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
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    require return_data.size >= _213 + (32 * _217) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _217] = mem[ceil32(return_data.size) + _213 + 128 len 32 * _217]
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
    require ext_code.size(address(cd[4]))
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
    require _357 + mem[_357] + 31 < _357 + return_data.size
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307() or ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require return_data.size >= _361 + (32 * _365) + 32
    mem[_357 + ceil32(return_data.size) + 32 len 32 * _365] = mem[_357 + _361 + 32 len 32 * _365]
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
        require ext_code.size(address(cd[4]))
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
            require ext_code.size(address(cd[4]))
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
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require return_data.size >= _210 + (32 * _214) + 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _214] = mem[ceil32(return_data.size) + _210 + 128 len 32 * _214]
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
            require ext_code.size(address(cd[4]))
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
            require _354 + mem[_354] + 31 < _354 + return_data.size
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307() or ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require return_data.size >= _358 + (32 * _362) + 32
            mem[_354 + ceil32(return_data.size) + 32 len 32 * _362] = mem[_354 + _358 + 32 len 32 * _362]
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        require return_data.size >= _211 + (32 * _215) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _215] = mem[ceil32(return_data.size) + _211 + 128 len 32 * _215]
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
        require ext_code.size(address(cd[4]))
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
        require _355 + mem[_355] + 31 < _355 + return_data.size
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307() or ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require return_data.size >= _359 + (32 * _363) + 32
        mem[_355 + ceil32(return_data.size) + 32 len 32 * _363] = mem[_355 + _359 + 32 len 32 * _363]
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
    require ext_code.size(address(cd[4]))
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require return_data.size >= _212 + (32 * _216) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _216] = mem[ceil32(return_data.size) + _212 + 128 len 32 * _216]
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
        require ext_code.size(address(cd[4]))
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
        require _356 + mem[_356] + 31 < _356 + return_data.size
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307() or ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require return_data.size >= _360 + (32 * _364) + 32
        mem[_356 + ceil32(return_data.size) + 32 len 32 * _364] = mem[_356 + _360 + 32 len 32 * _364]
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
    require ext_code.size(address(cd[4]))
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
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    require return_data.size >= _213 + (32 * _217) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _217] = mem[ceil32(return_data.size) + _213 + 128 len 32 * _217]
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
    require ext_code.size(address(cd[4]))
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
    require _357 + mem[_357] + 31 < _357 + return_data.size
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307() or ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require return_data.size >= _361 + (32 * _365) + 32
    mem[_357 + ceil32(return_data.size) + 32 len 32 * _365] = mem[_357 + _361 + 32 len 32 * _365]
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
        require ext_code.size(address(cd[4]))
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
            require ext_code.size(address(cd[4]))
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
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require return_data.size >= _210 + (32 * _214) + 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _214] = mem[ceil32(return_data.size) + _210 + 128 len 32 * _214]
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
            require ext_code.size(address(cd[4]))
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
            require _354 + mem[_354] + 31 < _354 + return_data.size
            _362 = mem[_354 + mem[_354]]
            if mem[_354 + mem[_354]] > test266151307():
                revert with 0, 65
            if _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307() or ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
            mem[_354 + ceil32(return_data.size)] = _362
            require return_data.size >= _358 + (32 * _362) + 32
            mem[_354 + ceil32(return_data.size) + 32 len 32 * _362] = mem[_354 + _358 + 32 len 32 * _362]
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        require return_data.size >= _211 + (32 * _215) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _215] = mem[ceil32(return_data.size) + _211 + 128 len 32 * _215]
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
        require ext_code.size(address(cd[4]))
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
        require _355 + mem[_355] + 31 < _355 + return_data.size
        _363 = mem[_355 + mem[_355]]
        if mem[_355 + mem[_355]] > test266151307():
            revert with 0, 65
        if _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307() or ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
        mem[_355 + ceil32(return_data.size)] = _363
        require return_data.size >= _359 + (32 * _363) + 32
        mem[_355 + ceil32(return_data.size) + 32 len 32 * _363] = mem[_355 + _359 + 32 len 32 * _363]
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
    require ext_code.size(address(cd[4]))
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
        require ext_code.size(address(cd[4]))
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
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require return_data.size >= _212 + (32 * _216) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _216] = mem[ceil32(return_data.size) + _212 + 128 len 32 * _216]
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
        require ext_code.size(address(cd[4]))
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
        require _356 + mem[_356] + 31 < _356 + return_data.size
        _364 = mem[_356 + mem[_356]]
        if mem[_356 + mem[_356]] > test266151307():
            revert with 0, 65
        if _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1 > test266151307() or ceil32(32 * mem[_356 + mem[_356]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _356 + ceil32(return_data.size) + ceil32(32 * mem[_356 + mem[_356]]) + 1
        mem[_356 + ceil32(return_data.size)] = _364
        require return_data.size >= _360 + (32 * _364) + 32
        mem[_356 + ceil32(return_data.size) + 32 len 32 * _364] = mem[_356 + _360 + 32 len 32 * _364]
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
    require ext_code.size(address(cd[4]))
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
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    require return_data.size >= _213 + (32 * _217) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _217] = mem[ceil32(return_data.size) + _213 + 128 len 32 * _217]
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
    require ext_code.size(address(cd[4]))
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
    require _357 + mem[_357] + 31 < _357 + return_data.size
    _365 = mem[_357 + mem[_357]]
    if mem[_357 + mem[_357]] > test266151307():
        revert with 0, 65
    if _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1 > test266151307() or ceil32(32 * mem[_357 + mem[_357]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _357 + ceil32(return_data.size) + ceil32(32 * mem[_357 + mem[_357]]) + 1
    mem[_357 + ceil32(return_data.size)] = _365
    require return_data.size >= _361 + (32 * _365) + 32
    mem[_357 + ceil32(return_data.size) + 32 len 32 * _365] = mem[_357 + _361 + 32 len 32 * _365]
    if _365 < 1:
        revert with 0, 17
    if _365 - 1 >= _365:
        revert with 0, 50
    return cd[132], mem[(32 * _365 - 1) + _357 + ceil32(return_data.size) + 32]
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
            require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
            require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127 < return_data.size + 96
            _734 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _734
            require return_data.size >= _728 + (32 * _734) + 32
            mem[ceil32(return_data.size) + 128 len 32 * _734] = mem[_728 + 128 len 32 * _734]
            if _734 < 1:
                revert with 0, 17
            if _734 - 1 >= _734:
                revert with 0, 50
            _1450 = mem[(32 * _734 - 1) + ceil32(return_data.size) + 128]
            idx = 1
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1450 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                    revert with 0, 17
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if idx != ('cd', 36).length - 1:
                    if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000):
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
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2578 + mem[_2578] + 31 < _2578 + return_data.size
                        _2650 = mem[_2578 + mem[_2578]]
                        if mem[_2578 + mem[_2578]] > test266151307():
                            revert with 0, 65
                        if _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1 > test266151307() or ceil32(32 * mem[_2578 + mem[_2578]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1
                        mem[_2578 + ceil32(return_data.size)] = _2650
                        require return_data.size >= _2614 + (32 * _2650) + 32
                        v = _2578 + _2614 + 32
                        w = _2578 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2650:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
                        s = mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] + (mem[(32 * _2650 - 1) + _2578 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000)
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
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000)
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000 wei
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
                        require _2576 + mem[_2576] + 31 < _2576 + return_data.size
                        _2648 = mem[_2576 + mem[_2576]]
                        if mem[_2576 + mem[_2576]] > test266151307():
                            revert with 0, 65
                        if _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1 > test266151307() or ceil32(32 * mem[_2576 + mem[_2576]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1
                        mem[_2576 + ceil32(return_data.size)] = _2648
                        require return_data.size >= _2612 + (32 * _2648) + 32
                        v = _2576 + _2612 + 32
                        w = _2576 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2648:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
                        s = mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] + (mem[(32 * _2648 - 1) + _2576 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000)
                        continue 
                    _2140 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2577 + mem[_2577] + 31 < _2577 + return_data.size
                    _2649 = mem[_2577 + mem[_2577]]
                    if mem[_2577 + mem[_2577]] > test266151307():
                        revert with 0, 65
                    if _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1 > test266151307() or ceil32(32 * mem[_2577 + mem[_2577]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1
                    mem[_2577 + ceil32(return_data.size)] = _2649
                    require return_data.size >= _2613 + (32 * _2649) + 32
                    v = _2577 + _2613 + 32
                    w = _2577 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2649:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000
                    s = mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] + (mem[(32 * _2649 - 1) + _2577 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1450 / 10000)
                    continue 
                if _1450 <= t:
                    revert with 0, 'INVALID_IN'
                if _1450 < t:
                    revert with 0, 17
                if t > !(_1450 - t):
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
                    mem[mem[64] + 4] = _1450 - t
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2581 + mem[_2581] + 31 < _2581 + return_data.size
                    _2653 = mem[_2581 + mem[_2581]]
                    if mem[_2581 + mem[_2581]] > test266151307():
                        revert with 0, 65
                    if _2581 + ceil32(return_data.size) + ceil32(32 * mem[_2581 + mem[_2581]]) + 1 > test266151307() or ceil32(32 * mem[_2581 + mem[_2581]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2581 + ceil32(return_data.size) + ceil32(32 * mem[_2581 + mem[_2581]]) + 1
                    mem[_2581 + ceil32(return_data.size)] = _2653
                    require return_data.size >= _2617 + (32 * _2653) + 32
                    v = _2581 + _2617 + 32
                    w = _2581 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2653:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    s = _1450 - t
                    s = mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] + (mem[(32 * _2653 - 1) + _2581 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1450
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
                        s = _1450 - t
                        s = mem[(32 * mem[96] - 1) + 128]
                        s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1450
                        continue 
                    _2194 = mem[64]
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
                    mem[_2194 + 68] = this.address
                    mem[_2194 + 100] = cd[68]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                       value _1450 - t wei
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
                    require _2579 + mem[_2579] + 31 < _2579 + return_data.size
                    _2651 = mem[_2579 + mem[_2579]]
                    if mem[_2579 + mem[_2579]] > test266151307():
                        revert with 0, 65
                    if _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1 > test266151307() or ceil32(32 * mem[_2579 + mem[_2579]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1
                    mem[_2579 + ceil32(return_data.size)] = _2651
                    require return_data.size >= _2615 + (32 * _2651) + 32
                    v = _2579 + _2615 + 32
                    w = _2579 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2651:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    s = _1450 - t
                    s = mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] + (mem[(32 * _2651 - 1) + _2579 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1450
                    continue 
                _2176 = mem[64]
                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1450 - t
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
                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                require _2580 + mem[_2580] + 31 < _2580 + return_data.size
                _2652 = mem[_2580 + mem[_2580]]
                if mem[_2580 + mem[_2580]] > test266151307():
                    revert with 0, 65
                if _2580 + ceil32(return_data.size) + ceil32(32 * mem[_2580 + mem[_2580]]) + 1 > test266151307() or ceil32(32 * mem[_2580 + mem[_2580]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _2580 + ceil32(return_data.size) + ceil32(32 * mem[_2580 + mem[_2580]]) + 1
                mem[_2580 + ceil32(return_data.size)] = _2652
                require return_data.size >= _2616 + (32 * _2652) + 32
                v = _2580 + _2616 + 32
                w = _2580 + ceil32(return_data.size) + 32
                u = 0
                while u < _2652:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u + 1
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
                s = _1450 - t
                s = mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32]
                s = s + mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] + (mem[(32 * _2652 - 1) + _2580 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                t = _1450
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1426 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1444 = mem[_1426]
                                require mem[_1426] <= test266151307()
                                require _1426 + mem[_1426] + 31 < _1426 + return_data.size
                                _1462 = mem[_1426 + mem[_1426]]
                                if mem[_1426 + mem[_1426]] > test266151307():
                                    revert with 0, 65
                                if _1426 + ceil32(return_data.size) + ceil32(32 * mem[_1426 + mem[_1426]]) + 1 > test266151307() or ceil32(32 * mem[_1426 + mem[_1426]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1426 + ceil32(return_data.size) + ceil32(32 * mem[_1426 + mem[_1426]]) + 1
                                mem[_1426 + ceil32(return_data.size)] = _1462
                                require return_data.size >= _1444 + (32 * _1462) + 32
                                v = _1426 + _1444 + 32
                                w = _1426 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _1462:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                                _1442 = mem[_1424]
                                require mem[_1424] <= test266151307()
                                require _1424 + mem[_1424] + 31 < _1424 + return_data.size
                                _1460 = mem[_1424 + mem[_1424]]
                                if mem[_1424 + mem[_1424]] > test266151307():
                                    revert with 0, 65
                                if _1424 + ceil32(return_data.size) + ceil32(32 * mem[_1424 + mem[_1424]]) + 1 > test266151307() or ceil32(32 * mem[_1424 + mem[_1424]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1424 + ceil32(return_data.size) + ceil32(32 * mem[_1424 + mem[_1424]]) + 1
                                mem[_1424 + ceil32(return_data.size)] = _1460
                                require return_data.size >= _1442 + (32 * _1460) + 32
                                v = _1424 + _1442 + 32
                                w = _1424 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _1460:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1425 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1443 = mem[_1425]
                            require mem[_1425] <= test266151307()
                            require _1425 + mem[_1425] + 31 < _1425 + return_data.size
                            _1461 = mem[_1425 + mem[_1425]]
                            if mem[_1425 + mem[_1425]] > test266151307():
                                revert with 0, 65
                            if _1425 + ceil32(return_data.size) + ceil32(32 * mem[_1425 + mem[_1425]]) + 1 > test266151307() or ceil32(32 * mem[_1425 + mem[_1425]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1425 + ceil32(return_data.size) + ceil32(32 * mem[_1425 + mem[_1425]]) + 1
                            mem[_1425 + ceil32(return_data.size)] = _1461
                            require return_data.size >= _1443 + (32 * _1461) + 32
                            v = _1425 + _1443 + 32
                            w = _1425 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1461:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            _839 = mem[64]
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
                            mem[_839 + 100] = this.address
                            mem[_839 + 132] = cd[68]
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1429 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1447 = mem[_1429]
                            require mem[_1429] <= test266151307()
                            require _1429 + mem[_1429] + 31 < _1429 + return_data.size
                            _1465 = mem[_1429 + mem[_1429]]
                            if mem[_1429 + mem[_1429]] > test266151307():
                                revert with 0, 65
                            if _1429 + ceil32(return_data.size) + ceil32(32 * mem[_1429 + mem[_1429]]) + 1 > test266151307() or ceil32(32 * mem[_1429 + mem[_1429]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1429 + ceil32(return_data.size) + ceil32(32 * mem[_1429 + mem[_1429]]) + 1
                            mem[_1429 + ceil32(return_data.size)] = _1465
                            require return_data.size >= _1447 + (32 * _1465) + 32
                            v = _1429 + _1447 + 32
                            w = _1429 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1465:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            _856 = mem[64]
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
                            mem[_856 + 68] = this.address
                            mem[_856 + 100] = cd[68]
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            _1445 = mem[_1427]
                            require mem[_1427] <= test266151307()
                            require _1427 + mem[_1427] + 31 < _1427 + return_data.size
                            _1463 = mem[_1427 + mem[_1427]]
                            if mem[_1427 + mem[_1427]] > test266151307():
                                revert with 0, 65
                            if _1427 + ceil32(return_data.size) + ceil32(32 * mem[_1427 + mem[_1427]]) + 1 > test266151307() or ceil32(32 * mem[_1427 + mem[_1427]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1427 + ceil32(return_data.size) + ceil32(32 * mem[_1427 + mem[_1427]]) + 1
                            mem[_1427 + ceil32(return_data.size)] = _1463
                            require return_data.size >= _1445 + (32 * _1463) + 32
                            v = _1427 + _1445 + 32
                            w = _1427 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1463:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                        _850 = mem[64]
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
                        mem[_850 + 100] = this.address
                        mem[_850 + 132] = cd[68]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1428 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1446 = mem[_1428]
                        require mem[_1428] <= test266151307()
                        require _1428 + mem[_1428] + 31 < _1428 + return_data.size
                        _1464 = mem[_1428 + mem[_1428]]
                        if mem[_1428 + mem[_1428]] > test266151307():
                            revert with 0, 65
                        if _1428 + ceil32(return_data.size) + ceil32(32 * mem[_1428 + mem[_1428]]) + 1 > test266151307() or ceil32(32 * mem[_1428 + mem[_1428]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _1428 + ceil32(return_data.size) + ceil32(32 * mem[_1428 + mem[_1428]]) + 1
                        mem[_1428 + ceil32(return_data.size)] = _1464
                        require return_data.size >= _1446 + (32 * _1464) + 32
                        v = _1428 + _1446 + 32
                        w = _1428 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _1464:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                    require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
                    require mem[96 len 4], 0 + 127 < return_data.size + 96
                    _732 = mem[mem[96 len 4], 0 + 96]
                    if mem[mem[96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
                    mem[ceil32(return_data.size) + 96] = _732
                    require return_data.size >= _726 + (32 * _732) + 32
                    mem[ceil32(return_data.size) + 128 len 32 * _732] = mem[_726 + 128 len 32 * _732]
                    if _732 < 1:
                        revert with 0, 17
                    if _732 - 1 >= _732:
                        revert with 0, 50
                    _1448 = mem[(32 * _732 - 1) + ceil32(return_data.size) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1448 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000):
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
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                                require _2566 + mem[_2566] + 31 < _2566 + return_data.size
                                _2638 = mem[_2566 + mem[_2566]]
                                if mem[_2566 + mem[_2566]] > test266151307():
                                    revert with 0, 65
                                if _2566 + ceil32(return_data.size) + ceil32(32 * mem[_2566 + mem[_2566]]) + 1 > test266151307() or ceil32(32 * mem[_2566 + mem[_2566]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _2566 + ceil32(return_data.size) + ceil32(32 * mem[_2566 + mem[_2566]]) + 1
                                mem[_2566 + ceil32(return_data.size)] = _2638
                                require return_data.size >= _2602 + (32 * _2638) + 32
                                v = _2566 + _2602 + 32
                                w = _2566 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _2638:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
                                s = mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] + (mem[(32 * _2638 - 1) + _2566 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000)
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
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000)
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000 wei
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
                                require _2564 + mem[_2564] + 31 < _2564 + return_data.size
                                _2636 = mem[_2564 + mem[_2564]]
                                if mem[_2564 + mem[_2564]] > test266151307():
                                    revert with 0, 65
                                if _2564 + ceil32(return_data.size) + ceil32(32 * mem[_2564 + mem[_2564]]) + 1 > test266151307() or ceil32(32 * mem[_2564 + mem[_2564]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _2564 + ceil32(return_data.size) + ceil32(32 * mem[_2564 + mem[_2564]]) + 1
                                mem[_2564 + ceil32(return_data.size)] = _2636
                                require return_data.size >= _2600 + (32 * _2636) + 32
                                v = _2564 + _2600 + 32
                                w = _2564 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _2636:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
                                s = mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] + (mem[(32 * _2636 - 1) + _2564 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000)
                                continue 
                            _2138 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2565 + mem[_2565] + 31 < _2565 + return_data.size
                            _2637 = mem[_2565 + mem[_2565]]
                            if mem[_2565 + mem[_2565]] > test266151307():
                                revert with 0, 65
                            if _2565 + ceil32(return_data.size) + ceil32(32 * mem[_2565 + mem[_2565]]) + 1 > test266151307() or ceil32(32 * mem[_2565 + mem[_2565]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2565 + ceil32(return_data.size) + ceil32(32 * mem[_2565 + mem[_2565]]) + 1
                            mem[_2565 + ceil32(return_data.size)] = _2637
                            require return_data.size >= _2601 + (32 * _2637) + 32
                            v = _2565 + _2601 + 32
                            w = _2565 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2637:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000
                            s = mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] + (mem[(32 * _2637 - 1) + _2565 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1448 / 10000)
                            continue 
                        if _1448 <= t:
                            revert with 0, 'INVALID_IN'
                        if _1448 < t:
                            revert with 0, 17
                        if t > !(_1448 - t):
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
                            mem[mem[64] + 4] = _1448 - t
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2569 + mem[_2569] + 31 < _2569 + return_data.size
                            _2641 = mem[_2569 + mem[_2569]]
                            if mem[_2569 + mem[_2569]] > test266151307():
                                revert with 0, 65
                            if _2569 + ceil32(return_data.size) + ceil32(32 * mem[_2569 + mem[_2569]]) + 1 > test266151307() or ceil32(32 * mem[_2569 + mem[_2569]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2569 + ceil32(return_data.size) + ceil32(32 * mem[_2569 + mem[_2569]]) + 1
                            mem[_2569 + ceil32(return_data.size)] = _2641
                            require return_data.size >= _2605 + (32 * _2641) + 32
                            v = _2569 + _2605 + 32
                            w = _2569 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2641:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = _1448 - t
                            s = mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] + (mem[(32 * _2641 - 1) + _2569 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1448
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
                                s = _1448 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _1448
                                continue 
                            _2188 = mem[64]
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
                            mem[_2188 + 68] = this.address
                            mem[_2188 + 100] = cd[68]
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _1448 - t wei
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
                            require _2567 + mem[_2567] + 31 < _2567 + return_data.size
                            _2639 = mem[_2567 + mem[_2567]]
                            if mem[_2567 + mem[_2567]] > test266151307():
                                revert with 0, 65
                            if _2567 + ceil32(return_data.size) + ceil32(32 * mem[_2567 + mem[_2567]]) + 1 > test266151307() or ceil32(32 * mem[_2567 + mem[_2567]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2567 + ceil32(return_data.size) + ceil32(32 * mem[_2567 + mem[_2567]]) + 1
                            mem[_2567 + ceil32(return_data.size)] = _2639
                            require return_data.size >= _2603 + (32 * _2639) + 32
                            v = _2567 + _2603 + 32
                            w = _2567 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2639:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = _1448 - t
                            s = mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] + (mem[(32 * _2639 - 1) + _2567 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1448
                            continue 
                        _2170 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1448 - t
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2568 + mem[_2568] + 31 < _2568 + return_data.size
                        _2640 = mem[_2568 + mem[_2568]]
                        if mem[_2568 + mem[_2568]] > test266151307():
                            revert with 0, 65
                        if _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1 > test266151307() or ceil32(32 * mem[_2568 + mem[_2568]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1
                        mem[_2568 + ceil32(return_data.size)] = _2640
                        require return_data.size >= _2604 + (32 * _2640) + 32
                        v = _2568 + _2604 + 32
                        w = _2568 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2640:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = _1448 - t
                        s = mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] + (mem[(32 * _2640 - 1) + _2568 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1448
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
                require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
                require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127 < return_data.size + 96
                _733 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
                if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _733
                require return_data.size >= _727 + (32 * _733) + 32
                mem[ceil32(return_data.size) + 128 len 32 * _733] = mem[_727 + 128 len 32 * _733]
                if _733 < 1:
                    revert with 0, 17
                if _733 - 1 >= _733:
                    revert with 0, 50
                _1449 = mem[(32 * _733 - 1) + ceil32(return_data.size) + 128]
                idx = 1
                s = 0
                s = 0
                s = 0
                t = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                    if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _1449 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                        revert with 0, 17
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if idx != ('cd', 36).length - 1:
                        if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000):
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
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2572 + mem[_2572] + 31 < _2572 + return_data.size
                            _2644 = mem[_2572 + mem[_2572]]
                            if mem[_2572 + mem[_2572]] > test266151307():
                                revert with 0, 65
                            if _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1 > test266151307() or ceil32(32 * mem[_2572 + mem[_2572]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1
                            mem[_2572 + ceil32(return_data.size)] = _2644
                            require return_data.size >= _2608 + (32 * _2644) + 32
                            v = _2572 + _2608 + 32
                            w = _2572 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2644:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
                            s = mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] + (mem[(32 * _2644 - 1) + _2572 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000)
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
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000)
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000 wei
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
                            require _2570 + mem[_2570] + 31 < _2570 + return_data.size
                            _2642 = mem[_2570 + mem[_2570]]
                            if mem[_2570 + mem[_2570]] > test266151307():
                                revert with 0, 65
                            if _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1 > test266151307() or ceil32(32 * mem[_2570 + mem[_2570]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1
                            mem[_2570 + ceil32(return_data.size)] = _2642
                            require return_data.size >= _2606 + (32 * _2642) + 32
                            v = _2570 + _2606 + 32
                            w = _2570 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2642:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
                            s = mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] + (mem[(32 * _2642 - 1) + _2570 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000)
                            continue 
                        _2139 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2571 + mem[_2571] + 31 < _2571 + return_data.size
                        _2643 = mem[_2571 + mem[_2571]]
                        if mem[_2571 + mem[_2571]] > test266151307():
                            revert with 0, 65
                        if _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1 > test266151307() or ceil32(32 * mem[_2571 + mem[_2571]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1
                        mem[_2571 + ceil32(return_data.size)] = _2643
                        require return_data.size >= _2607 + (32 * _2643) + 32
                        v = _2571 + _2607 + 32
                        w = _2571 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2643:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000
                        s = mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] + (mem[(32 * _2643 - 1) + _2571 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _1449 / 10000)
                        continue 
                    if _1449 <= t:
                        revert with 0, 'INVALID_IN'
                    if _1449 < t:
                        revert with 0, 17
                    if t > !(_1449 - t):
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
                        mem[mem[64] + 4] = _1449 - t
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2575 + mem[_2575] + 31 < _2575 + return_data.size
                        _2647 = mem[_2575 + mem[_2575]]
                        if mem[_2575 + mem[_2575]] > test266151307():
                            revert with 0, 65
                        if _2575 + ceil32(return_data.size) + ceil32(32 * mem[_2575 + mem[_2575]]) + 1 > test266151307() or ceil32(32 * mem[_2575 + mem[_2575]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2575 + ceil32(return_data.size) + ceil32(32 * mem[_2575 + mem[_2575]]) + 1
                        mem[_2575 + ceil32(return_data.size)] = _2647
                        require return_data.size >= _2611 + (32 * _2647) + 32
                        v = _2575 + _2611 + 32
                        w = _2575 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2647:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = _1449 - t
                        s = mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] + (mem[(32 * _2647 - 1) + _2575 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1449
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
                            s = _1449 - t
                            s = mem[(32 * mem[96] - 1) + 128]
                            s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _1449
                            continue 
                        _2191 = mem[64]
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
                        mem[_2191 + 68] = this.address
                        mem[_2191 + 100] = cd[68]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                           value _1449 - t wei
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
                        require _2573 + mem[_2573] + 31 < _2573 + return_data.size
                        _2645 = mem[_2573 + mem[_2573]]
                        if mem[_2573 + mem[_2573]] > test266151307():
                            revert with 0, 65
                        if _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1 > test266151307() or ceil32(32 * mem[_2573 + mem[_2573]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1
                        mem[_2573 + ceil32(return_data.size)] = _2645
                        require return_data.size >= _2609 + (32 * _2645) + 32
                        v = _2573 + _2609 + 32
                        w = _2573 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2645:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = _1449 - t
                        s = mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] + (mem[(32 * _2645 - 1) + _2573 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _1449
                        continue 
                    _2173 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1449 - t
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2574 + mem[_2574] + 31 < _2574 + return_data.size
                    _2646 = mem[_2574 + mem[_2574]]
                    if mem[_2574 + mem[_2574]] > test266151307():
                        revert with 0, 65
                    if _2574 + ceil32(return_data.size) + ceil32(32 * mem[_2574 + mem[_2574]]) + 1 > test266151307() or ceil32(32 * mem[_2574 + mem[_2574]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2574 + ceil32(return_data.size) + ceil32(32 * mem[_2574 + mem[_2574]]) + 1
                    mem[_2574 + ceil32(return_data.size)] = _2646
                    require return_data.size >= _2610 + (32 * _2646) + 32
                    v = _2574 + _2610 + 32
                    w = _2574 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2646:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    s = _1449 - t
                    s = mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32]
                    s = s + mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] + (mem[(32 * _2646 - 1) + _2574 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                    t = _1449
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
            require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
            require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127 < return_data.size + 96
            _737 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _737
            require return_data.size >= _731 + (32 * _737) + 32
            mem[ceil32(return_data.size) + 128 len 32 * _737] = mem[_731 + 128 len 32 * _737]
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2596 + mem[_2596] + 31 < _2596 + return_data.size
                        _2668 = mem[_2596 + mem[_2596]]
                        if mem[_2596 + mem[_2596]] > test266151307():
                            revert with 0, 65
                        if _2596 + ceil32(return_data.size) + ceil32(32 * mem[_2596 + mem[_2596]]) + 1 > test266151307() or ceil32(32 * mem[_2596 + mem[_2596]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2596 + ceil32(return_data.size) + ceil32(32 * mem[_2596 + mem[_2596]]) + 1
                        mem[_2596 + ceil32(return_data.size)] = _2668
                        require return_data.size >= _2632 + (32 * _2668) + 32
                        v = _2596 + _2632 + 32
                        w = _2596 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2668:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2594 + mem[_2594] + 31 < _2594 + return_data.size
                        _2666 = mem[_2594 + mem[_2594]]
                        if mem[_2594 + mem[_2594]] > test266151307():
                            revert with 0, 65
                        if _2594 + ceil32(return_data.size) + ceil32(32 * mem[_2594 + mem[_2594]]) + 1 > test266151307() or ceil32(32 * mem[_2594 + mem[_2594]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2594 + ceil32(return_data.size) + ceil32(32 * mem[_2594 + mem[_2594]]) + 1
                        mem[_2594 + ceil32(return_data.size)] = _2666
                        require return_data.size >= _2630 + (32 * _2666) + 32
                        v = _2594 + _2630 + 32
                        w = _2594 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2666:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2595 + mem[_2595] + 31 < _2595 + return_data.size
                    _2667 = mem[_2595 + mem[_2595]]
                    if mem[_2595 + mem[_2595]] > test266151307():
                        revert with 0, 65
                    if _2595 + ceil32(return_data.size) + ceil32(32 * mem[_2595 + mem[_2595]]) + 1 > test266151307() or ceil32(32 * mem[_2595 + mem[_2595]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2595 + ceil32(return_data.size) + ceil32(32 * mem[_2595 + mem[_2595]]) + 1
                    mem[_2595 + ceil32(return_data.size)] = _2667
                    require return_data.size >= _2631 + (32 * _2667) + 32
                    v = _2595 + _2631 + 32
                    w = _2595 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2667:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2599 + mem[_2599] + 31 < _2599 + return_data.size
                    _2671 = mem[_2599 + mem[_2599]]
                    if mem[_2599 + mem[_2599]] > test266151307():
                        revert with 0, 65
                    if _2599 + ceil32(return_data.size) + ceil32(32 * mem[_2599 + mem[_2599]]) + 1 > test266151307() or ceil32(32 * mem[_2599 + mem[_2599]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2599 + ceil32(return_data.size) + ceil32(32 * mem[_2599 + mem[_2599]]) + 1
                    mem[_2599 + ceil32(return_data.size)] = _2671
                    require return_data.size >= _2635 + (32 * _2671) + 32
                    v = _2599 + _2635 + 32
                    w = _2599 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2671:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                    _2203 = mem[64]
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
                    mem[_2203 + 68] = this.address
                    mem[_2203 + 100] = cd[68]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2597 + mem[_2597] + 31 < _2597 + return_data.size
                    _2669 = mem[_2597 + mem[_2597]]
                    if mem[_2597 + mem[_2597]] > test266151307():
                        revert with 0, 65
                    if _2597 + ceil32(return_data.size) + ceil32(32 * mem[_2597 + mem[_2597]]) + 1 > test266151307() or ceil32(32 * mem[_2597 + mem[_2597]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2597 + ceil32(return_data.size) + ceil32(32 * mem[_2597 + mem[_2597]]) + 1
                    mem[_2597 + ceil32(return_data.size)] = _2669
                    require return_data.size >= _2633 + (32 * _2669) + 32
                    v = _2597 + _2633 + 32
                    w = _2597 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2669:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                require _2598 + mem[_2598] + 31 < _2598 + return_data.size
                _2670 = mem[_2598 + mem[_2598]]
                if mem[_2598 + mem[_2598]] > test266151307():
                    revert with 0, 65
                if _2598 + ceil32(return_data.size) + ceil32(32 * mem[_2598 + mem[_2598]]) + 1 > test266151307() or ceil32(32 * mem[_2598 + mem[_2598]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _2598 + ceil32(return_data.size) + ceil32(32 * mem[_2598 + mem[_2598]]) + 1
                mem[_2598 + ceil32(return_data.size)] = _2670
                require return_data.size >= _2634 + (32 * _2670) + 32
                v = _2598 + _2634 + 32
                w = _2598 + ceil32(return_data.size) + 32
                u = 0
                while u < _2670:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u + 1
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
                    _29 = mem[(32 * mem[96] - 1) + 128]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < ('cd', 36).length:
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 227
                        if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] and _29 > -1 / cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)]:
                            revert with 0, 17
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if idx != ('cd', 36).length - 1:
                            if t > !(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000):
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
                                mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1432 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1453 = mem[_1432]
                                require mem[_1432] <= test266151307()
                                require _1432 + mem[_1432] + 31 < _1432 + return_data.size
                                _1468 = mem[_1432 + mem[_1432]]
                                if mem[_1432 + mem[_1432]] > test266151307():
                                    revert with 0, 65
                                if _1432 + ceil32(return_data.size) + ceil32(32 * mem[_1432 + mem[_1432]]) + 1 > test266151307() or ceil32(32 * mem[_1432 + mem[_1432]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1432 + ceil32(return_data.size) + ceil32(32 * mem[_1432 + mem[_1432]]) + 1
                                mem[_1432 + ceil32(return_data.size)] = _1468
                                require return_data.size >= _1453 + (32 * _1468) + 32
                                v = _1432 + _1453 + 32
                                w = _1432 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _1468:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
                                s = mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] + (mem[(32 * _1468 - 1) + _1432 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000)
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
                                    s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
                                    s = mem[(32 * mem[96] - 1) + 128]
                                    s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                    t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000)
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                                call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                   value cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len w + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1430 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1451 = mem[_1430]
                                require mem[_1430] <= test266151307()
                                require _1430 + mem[_1430] + 31 < _1430 + return_data.size
                                _1466 = mem[_1430 + mem[_1430]]
                                if mem[_1430 + mem[_1430]] > test266151307():
                                    revert with 0, 65
                                if _1430 + ceil32(return_data.size) + ceil32(32 * mem[_1430 + mem[_1430]]) + 1 > test266151307() or ceil32(32 * mem[_1430 + mem[_1430]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1430 + ceil32(return_data.size) + ceil32(32 * mem[_1430 + mem[_1430]]) + 1
                                mem[_1430 + ceil32(return_data.size)] = _1466
                                require return_data.size >= _1451 + (32 * _1466) + 32
                                v = _1430 + _1451 + 32
                                w = _1430 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _1466:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
                                s = mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32]
                                s = s + mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] + (mem[(32 * _1466 - 1) + _1430 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000)
                                continue 
                            _809 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1431 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1452 = mem[_1431]
                            require mem[_1431] <= test266151307()
                            require _1431 + mem[_1431] + 31 < _1431 + return_data.size
                            _1467 = mem[_1431 + mem[_1431]]
                            if mem[_1431 + mem[_1431]] > test266151307():
                                revert with 0, 65
                            if _1431 + ceil32(return_data.size) + ceil32(32 * mem[_1431 + mem[_1431]]) + 1 > test266151307() or ceil32(32 * mem[_1431 + mem[_1431]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1431 + ceil32(return_data.size) + ceil32(32 * mem[_1431 + mem[_1431]]) + 1
                            mem[_1431 + ceil32(return_data.size)] = _1467
                            require return_data.size >= _1452 + (32 * _1467) + 32
                            v = _1431 + _1452 + 32
                            w = _1431 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1467:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000
                            s = mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] + (mem[(32 * _1467 - 1) + _1431 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = t + (cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 100)] * _29 / 10000)
                            continue 
                        if _29 <= t:
                            revert with 0, 'INVALID_IN'
                        if _29 < t:
                            revert with 0, 17
                        if t > !(_29 - t):
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
                            _844 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _29 - t
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
                            mem[_844 + 100] = this.address
                            mem[_844 + 132] = cd[68]
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1435 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1456 = mem[_1435]
                            require mem[_1435] <= test266151307()
                            require _1435 + mem[_1435] + 31 < _1435 + return_data.size
                            _1471 = mem[_1435 + mem[_1435]]
                            if mem[_1435 + mem[_1435]] > test266151307():
                                revert with 0, 65
                            if _1435 + ceil32(return_data.size) + ceil32(32 * mem[_1435 + mem[_1435]]) + 1 > test266151307() or ceil32(32 * mem[_1435 + mem[_1435]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1435 + ceil32(return_data.size) + ceil32(32 * mem[_1435 + mem[_1435]]) + 1
                            mem[_1435 + ceil32(return_data.size)] = _1471
                            require return_data.size >= _1456 + (32 * _1471) + 32
                            v = _1435 + _1456 + 32
                            w = _1435 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1471:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = _29 - t
                            s = mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] + (mem[(32 * _1471 - 1) + _1435 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _29
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
                                s = _29 - t
                                s = mem[(32 * mem[96] - 1) + 128]
                                s = s + mem[(32 * mem[96] - 1) + 128] + (mem[(32 * mem[96] - 1) + 128] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                                t = _29
                                continue 
                            _862 = mem[64]
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
                            mem[_862 + 68] = this.address
                            mem[_862 + 100] = cd[68]
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                               value _29 - t wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len w + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1433 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1454 = mem[_1433]
                            require mem[_1433] <= test266151307()
                            require _1433 + mem[_1433] + 31 < _1433 + return_data.size
                            _1469 = mem[_1433 + mem[_1433]]
                            if mem[_1433 + mem[_1433]] > test266151307():
                                revert with 0, 65
                            if _1433 + ceil32(return_data.size) + ceil32(32 * mem[_1433 + mem[_1433]]) + 1 > test266151307() or ceil32(32 * mem[_1433 + mem[_1433]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1433 + ceil32(return_data.size) + ceil32(32 * mem[_1433 + mem[_1433]]) + 1
                            mem[_1433 + ceil32(return_data.size)] = _1469
                            require return_data.size >= _1454 + (32 * _1469) + 32
                            v = _1433 + _1454 + 32
                            w = _1433 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _1469:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            s = _29 - t
                            s = mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32]
                            s = s + mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] + (mem[(32 * _1469 - 1) + _1433 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                            t = _29
                            continue 
                        _853 = mem[64]
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _29 - t
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
                        mem[_853 + 100] = this.address
                        mem[_853 + 132] = cd[68]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len w + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1434 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1455 = mem[_1434]
                        require mem[_1434] <= test266151307()
                        require _1434 + mem[_1434] + 31 < _1434 + return_data.size
                        _1470 = mem[_1434 + mem[_1434]]
                        if mem[_1434 + mem[_1434]] > test266151307():
                            revert with 0, 65
                        if _1434 + ceil32(return_data.size) + ceil32(32 * mem[_1434 + mem[_1434]]) + 1 > test266151307() or ceil32(32 * mem[_1434 + mem[_1434]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _1434 + ceil32(return_data.size) + ceil32(32 * mem[_1434 + mem[_1434]]) + 1
                        mem[_1434 + ceil32(return_data.size)] = _1470
                        require return_data.size >= _1455 + (32 * _1470) + 32
                        v = _1434 + _1455 + 32
                        w = _1434 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _1470:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        s = _29 - t
                        s = mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32]
                        s = s + mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] + (mem[(32 * _1470 - 1) + _1434 + ceil32(return_data.size) + 32] * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 164)] / 10000)
                        t = _29
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
                    require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
                    require mem[96 len 4], 0 + 127 < return_data.size + 96
                    _735 = mem[mem[96 len 4], 0 + 96]
                    if mem[mem[96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
                    mem[ceil32(return_data.size) + 96] = _735
                    require return_data.size >= _729 + (32 * _735) + 32
                    mem[ceil32(return_data.size) + 128 len 32 * _735] = mem[_729 + 128 len 32 * _735]
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                                require _2584 + mem[_2584] + 31 < _2584 + return_data.size
                                _2656 = mem[_2584 + mem[_2584]]
                                if mem[_2584 + mem[_2584]] > test266151307():
                                    revert with 0, 65
                                if _2584 + ceil32(return_data.size) + ceil32(32 * mem[_2584 + mem[_2584]]) + 1 > test266151307() or ceil32(32 * mem[_2584 + mem[_2584]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _2584 + ceil32(return_data.size) + ceil32(32 * mem[_2584 + mem[_2584]]) + 1
                                mem[_2584 + ceil32(return_data.size)] = _2656
                                require return_data.size >= _2620 + (32 * _2656) + 32
                                v = _2584 + _2620 + 32
                                w = _2584 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _2656:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                                require _2582 + mem[_2582] + 31 < _2582 + return_data.size
                                _2654 = mem[_2582 + mem[_2582]]
                                if mem[_2582 + mem[_2582]] > test266151307():
                                    revert with 0, 65
                                if _2582 + ceil32(return_data.size) + ceil32(32 * mem[_2582 + mem[_2582]]) + 1 > test266151307() or ceil32(32 * mem[_2582 + mem[_2582]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _2582 + ceil32(return_data.size) + ceil32(32 * mem[_2582 + mem[_2582]]) + 1
                                mem[_2582 + ceil32(return_data.size)] = _2654
                                require return_data.size >= _2618 + (32 * _2654) + 32
                                v = _2582 + _2618 + 32
                                w = _2582 + ceil32(return_data.size) + 32
                                u = 0
                                while u < _2654:
                                    mem[w] = mem[v]
                                    v = v + 32
                                    w = w + 32
                                    u = u + 1
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2583 + mem[_2583] + 31 < _2583 + return_data.size
                            _2655 = mem[_2583 + mem[_2583]]
                            if mem[_2583 + mem[_2583]] > test266151307():
                                revert with 0, 65
                            if _2583 + ceil32(return_data.size) + ceil32(32 * mem[_2583 + mem[_2583]]) + 1 > test266151307() or ceil32(32 * mem[_2583 + mem[_2583]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2583 + ceil32(return_data.size) + ceil32(32 * mem[_2583 + mem[_2583]]) + 1
                            mem[_2583 + ceil32(return_data.size)] = _2655
                            require return_data.size >= _2619 + (32 * _2655) + 32
                            v = _2583 + _2619 + 32
                            w = _2583 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2655:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2587 + mem[_2587] + 31 < _2587 + return_data.size
                            _2659 = mem[_2587 + mem[_2587]]
                            if mem[_2587 + mem[_2587]] > test266151307():
                                revert with 0, 65
                            if _2587 + ceil32(return_data.size) + ceil32(32 * mem[_2587 + mem[_2587]]) + 1 > test266151307() or ceil32(32 * mem[_2587 + mem[_2587]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2587 + ceil32(return_data.size) + ceil32(32 * mem[_2587 + mem[_2587]]) + 1
                            mem[_2587 + ceil32(return_data.size)] = _2659
                            require return_data.size >= _2623 + (32 * _2659) + 32
                            v = _2587 + _2623 + 32
                            w = _2587 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2659:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2585 + mem[_2585] + 31 < _2585 + return_data.size
                            _2657 = mem[_2585 + mem[_2585]]
                            if mem[_2585 + mem[_2585]] > test266151307():
                                revert with 0, 65
                            if _2585 + ceil32(return_data.size) + ceil32(32 * mem[_2585 + mem[_2585]]) + 1 > test266151307() or ceil32(32 * mem[_2585 + mem[_2585]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2585 + ceil32(return_data.size) + ceil32(32 * mem[_2585 + mem[_2585]]) + 1
                            mem[_2585 + ceil32(return_data.size)] = _2657
                            require return_data.size >= _2621 + (32 * _2657) + 32
                            v = _2585 + _2621 + 32
                            w = _2585 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2657:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2586 + mem[_2586] + 31 < _2586 + return_data.size
                        _2658 = mem[_2586 + mem[_2586]]
                        if mem[_2586 + mem[_2586]] > test266151307():
                            revert with 0, 65
                        if _2586 + ceil32(return_data.size) + ceil32(32 * mem[_2586 + mem[_2586]]) + 1 > test266151307() or ceil32(32 * mem[_2586 + mem[_2586]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2586 + ceil32(return_data.size) + ceil32(32 * mem[_2586 + mem[_2586]]) + 1
                        mem[_2586 + ceil32(return_data.size)] = _2658
                        require return_data.size >= _2622 + (32 * _2658) + 32
                        v = _2586 + _2622 + 32
                        w = _2586 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2658:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                require ext_code.size(address(cd[(('cd', 36)[0] + cd[36] + 36)]))
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
                require mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 127 < return_data.size + 96
                _736 = mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]
                if mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[(('cd', 36)[0] + cd[36] + 132)]) >> 32 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _736
                require return_data.size >= _730 + (32 * _736) + 32
                mem[ceil32(return_data.size) + 128 len 32 * _736] = mem[_730 + 128 len 32 * _736]
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2590 + mem[_2590] + 31 < _2590 + return_data.size
                            _2662 = mem[_2590 + mem[_2590]]
                            if mem[_2590 + mem[_2590]] > test266151307():
                                revert with 0, 65
                            if _2590 + ceil32(return_data.size) + ceil32(32 * mem[_2590 + mem[_2590]]) + 1 > test266151307() or ceil32(32 * mem[_2590 + mem[_2590]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2590 + ceil32(return_data.size) + ceil32(32 * mem[_2590 + mem[_2590]]) + 1
                            mem[_2590 + ceil32(return_data.size)] = _2662
                            require return_data.size >= _2626 + (32 * _2662) + 32
                            v = _2590 + _2626 + 32
                            w = _2590 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2662:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                            require _2588 + mem[_2588] + 31 < _2588 + return_data.size
                            _2660 = mem[_2588 + mem[_2588]]
                            if mem[_2588 + mem[_2588]] > test266151307():
                                revert with 0, 65
                            if _2588 + ceil32(return_data.size) + ceil32(32 * mem[_2588 + mem[_2588]]) + 1 > test266151307() or ceil32(32 * mem[_2588 + mem[_2588]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2588 + ceil32(return_data.size) + ceil32(32 * mem[_2588 + mem[_2588]]) + 1
                            mem[_2588 + ceil32(return_data.size)] = _2660
                            require return_data.size >= _2624 + (32 * _2660) + 32
                            v = _2588 + _2624 + 32
                            w = _2588 + ceil32(return_data.size) + 32
                            u = 0
                            while u < _2660:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u + 1
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2589 + mem[_2589] + 31 < _2589 + return_data.size
                        _2661 = mem[_2589 + mem[_2589]]
                        if mem[_2589 + mem[_2589]] > test266151307():
                            revert with 0, 65
                        if _2589 + ceil32(return_data.size) + ceil32(32 * mem[_2589 + mem[_2589]]) + 1 > test266151307() or ceil32(32 * mem[_2589 + mem[_2589]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2589 + ceil32(return_data.size) + ceil32(32 * mem[_2589 + mem[_2589]]) + 1
                        mem[_2589 + ceil32(return_data.size)] = _2661
                        require return_data.size >= _2625 + (32 * _2661) + 32
                        v = _2589 + _2625 + 32
                        w = _2589 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2661:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2593 + mem[_2593] + 31 < _2593 + return_data.size
                        _2665 = mem[_2593 + mem[_2593]]
                        if mem[_2593 + mem[_2593]] > test266151307():
                            revert with 0, 65
                        if _2593 + ceil32(return_data.size) + ceil32(32 * mem[_2593 + mem[_2593]]) + 1 > test266151307() or ceil32(32 * mem[_2593 + mem[_2593]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2593 + ceil32(return_data.size) + ceil32(32 * mem[_2593 + mem[_2593]]) + 1
                        mem[_2593 + ceil32(return_data.size)] = _2665
                        require return_data.size >= _2629 + (32 * _2665) + 32
                        v = _2593 + _2629 + 32
                        w = _2593 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2665:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                        _2200 = mem[64]
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
                        mem[_2200 + 68] = this.address
                        mem[_2200 + 100] = cd[68]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                        require _2591 + mem[_2591] + 31 < _2591 + return_data.size
                        _2663 = mem[_2591 + mem[_2591]]
                        if mem[_2591 + mem[_2591]] > test266151307():
                            revert with 0, 65
                        if _2591 + ceil32(return_data.size) + ceil32(32 * mem[_2591 + mem[_2591]]) + 1 > test266151307() or ceil32(32 * mem[_2591 + mem[_2591]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2591 + ceil32(return_data.size) + ceil32(32 * mem[_2591 + mem[_2591]]) + 1
                        mem[_2591 + ceil32(return_data.size)] = _2663
                        require return_data.size >= _2627 + (32 * _2663) + 32
                        v = _2591 + _2627 + 32
                        w = _2591 + ceil32(return_data.size) + 32
                        u = 0
                        while u < _2663:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u + 1
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
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
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
                    require _2592 + mem[_2592] + 31 < _2592 + return_data.size
                    _2664 = mem[_2592 + mem[_2592]]
                    if mem[_2592 + mem[_2592]] > test266151307():
                        revert with 0, 65
                    if _2592 + ceil32(return_data.size) + ceil32(32 * mem[_2592 + mem[_2592]]) + 1 > test266151307() or ceil32(32 * mem[_2592 + mem[_2592]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2592 + ceil32(return_data.size) + ceil32(32 * mem[_2592 + mem[_2592]]) + 1
                    mem[_2592 + ceil32(return_data.size)] = _2664
                    require return_data.size >= _2628 + (32 * _2664) + 32
                    v = _2592 + _2628 + 32
                    w = _2592 + ceil32(return_data.size) + 32
                    u = 0
                    while u < _2664:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u + 1
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
