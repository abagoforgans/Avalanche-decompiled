contract main {




// =====================  Runtime code  =====================


const sub_458fd396(?) = eth.balance(this.address)


address stor1;
address stor2;
address stor4;
address stor5;
address stor6;
address stor7;

function unwrap() {
  stop
}

function _fallback() payable {
  stop
}

function wrap() {
    require ext_code.size(stor6)
    call stor6.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c204af93(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_eaa7c891(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a3f9a085(?) {
    mem[96] = 2
    mem[128] = stor6
    mem[160] = stor1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = eth.balance(this.address)
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args eth.balance(this.address), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _27 = mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < return_data.size + 192
    _28 = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    require _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = _27 + 224
    t = ceil32(return_data.size) + 224
    while idx < _28:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _28:
        revert with 'NH{q', 50
    _44 = mem[ceil32(return_data.size) + 256]
    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _44
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(stor5)
    call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args _44, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _56 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _57 = mem[_56]
    require mem[_56] <= test266151307()
    require _56 + mem[_56] + 31 < _56 + return_data.size
    _58 = mem[_56 + mem[_56]]
    if mem[_56 + mem[_56]] > test266151307():
        revert with 'NH{q', 65
    if _56 + ceil32(return_data.size) + floor32(mem[_56 + mem[_56]]) + 1 > test266151307() or floor32(mem[_56 + mem[_56]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _56 + ceil32(return_data.size) + floor32(mem[_56 + mem[_56]]) + 1
    mem[_56 + ceil32(return_data.size)] = _58
    require _57 + (32 * _58) + 32 <= return_data.size
    idx = 0
    s = _56 + _57 + 32
    t = _56 + ceil32(return_data.size) + 32
    while idx < _58:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_07305f2e(?) {
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = stor6
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _43 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _44 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _44
    require _43 + (32 * _44) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _43 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _44:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _66 = mem[_65]
    require mem[_65] == mem[_65]
    if 1 >= _44:
        revert with 'NH{q', 50
    _68 = mem[(6 * ceil32(return_data.size)) + 256]
    _69 = mem[64]
    mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _66
    mem[mem[64] + 36] = _68
    mem[mem[64] + 68] = 160
    _70 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _70:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_69 + 100] = this.address
    mem[_69 + 132] = block.timestamp
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _69 + (32 * _70) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    require mem[_80] <= test266151307()
    require _80 + mem[_80] + 31 < _80 + return_data.size
    _82 = mem[_80 + mem[_80]]
    if mem[_80 + mem[_80]] > test266151307():
        revert with 'NH{q', 65
    if _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1 > test266151307() or floor32(mem[_80 + mem[_80]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1
    mem[_80 + ceil32(return_data.size)] = _82
    require _81 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = _80 + _81 + 32
    t = _80 + ceil32(return_data.size) + 32
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
