contract main {




// =====================  Runtime code  =====================


const getAmountOutMin = mem[mem[64]]


function _fallback() payable {
    revert
}

function swap() payable {
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = 10^18
    require ext_code.size(0xd00ae08403b9bbb9124bb305c09058e32c39a48c)
    call 0xd00ae08403b9bbb9124bb305c09058e32c39a48c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 0x2d99abd9008dc933ff5c0cd271b88309593ab921
    mem[ceil32(return_data.size) + 132] = 10^18
    require ext_code.size(0x6d0a79756774c7cbac6ce5c5e3b0f40b0ccccb20)
    call 0x6d0a79756774c7cbac6ce5c5e3b0f40b0ccccb20.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x2d99abd9008dc933ff5c0cd271b88309593ab921, 10^18
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = 0xd00ae08403b9bbb9124bb305c09058e32c39a48c
    mem[(2 * ceil32(return_data.size)) + 160] = 0x6d0a79756774c7cbac6ce5c5e3b0f40b0ccccb20
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 10^18
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x2d99abd9008dc933ff5c0cd271b88309593ab921)
    staticcall 0x2d99abd9008dc933ff5c0cd271b88309593ab921.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[(2 * ceil32(return_data.size)) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _39 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _40 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232830643 + 192]
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _39 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[(2 * ceil32(return_data.size)) + 96] < 1:
        revert with 'NH{q', 17
    if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _40:
        revert with 'NH{q', 50
    _61 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
    _62 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_62]:
        revert with 'NH{q', 50
    mem[_62 + 32] = 0xd00ae08403b9bbb9124bb305c09058e32c39a48c
    if 1 >= mem[_62]:
        revert with 'NH{q', 50
    mem[_62 + 64] = 0x6d0a79756774c7cbac6ce5c5e3b0f40b0ccccb20
    mem[_62 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_62 + 100] = 10^18
    mem[_62 + 132] = _61
    mem[_62 + 164] = 160
    mem[_62 + 260] = mem[_62]
    idx = 0
    s = _62 + 32
    t = _62 + 292
    while idx < mem[_62]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_62 + 196] = msg.sender
    mem[_62 + 228] = block.timestamp
    require ext_code.size(0x2d99abd9008dc933ff5c0cd271b88309593ab921)
    call 0x2d99abd9008dc933ff5c0cd271b88309593ab921.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _62 + (32 * mem[_62]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _77 = mem[_76]
    require mem[_76] <= test266151307()
    require _76 + mem[_76] + 31 < _76 + return_data.size
    _78 = mem[_76 + mem[_76]]
    if mem[_76 + mem[_76]] > test266151307():
        revert with 'NH{q', 65
    if _76 + ceil32(return_data.size) + (32 * mem[_76 + mem[_76]]) + 32 > test266151307() or (32 * mem[_76 + mem[_76]]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = _76 + ceil32(return_data.size) + (32 * mem[_76 + mem[_76]]) + 32
    mem[_76 + ceil32(return_data.size)] = _78
    require _77 + (32 * _78) + 32 <= return_data.size
    idx = 0
    s = _76 + _77 + 32
    t = _76 + ceil32(return_data.size) + 32
    while idx < _78:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
