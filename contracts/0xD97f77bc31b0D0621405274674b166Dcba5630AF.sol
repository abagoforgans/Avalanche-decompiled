contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ce434861(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg1).0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(arg2)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'No pair'
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
    mem[(6 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = 0
    mem[(6 * ceil32(return_data.size)) + 228] = 128
    mem[(6 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 356
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 260] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 292] = block.timestamp
    if ext_call.return_data[0] * arg3 / arg4 < msg.value:
        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value ext_call.return_data[0] * arg3 / arg4 wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
        emit 0x56e2b1c9: (ext_call.return_data[0] * arg3 / arg4)
    else:
        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 32 <= return_data.size
        emit 0x56e2b1c9: msg.value
}



}
