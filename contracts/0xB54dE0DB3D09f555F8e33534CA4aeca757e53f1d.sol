contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a0d3c9c5(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[36]
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[36]
    mem[ceil32(return_data.size) + 132] = cd[68]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = cd[132]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _21 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _22 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _22
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _21 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _21 + (32 * _22) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _22 < 1:
        revert with 'NH{q', 17
    if _22 - 1 >= _22:
        revert with 'NH{q', 50
    if address(cd[164]):
        require ext_code.size(address(cd[164]))
        call address(cd[164]).stake(uint256 arg1) with:
             gas gas_remaining wei
            args mem[(32 * _22 - 1) + (2 * ceil32(return_data.size)) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if address(cd[196]):
            mem[mem[64] + 4] = mem[(32 * _22 - 1) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(address(cd[196]))
            call address(cd[196]).stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
