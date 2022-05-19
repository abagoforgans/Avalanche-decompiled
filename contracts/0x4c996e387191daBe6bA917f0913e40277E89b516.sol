contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor6;
uint256 stor7; offset 32
uint256 stor7;
uint256 stor8;
uint256 stor9;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor6 = arg1
}

function setMaxLoop(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor9 = arg1
}

function setParameters(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == stor0
    stor1 = arg1
    uint256(stor7.field_0) = arg2
    stor8 = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap() {
    mem[96] = 2
    require ext_code.size(stor6)
    staticcall stor6.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor7.field_0)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor7.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _32 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _33 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor7.field_32) + 192]
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _32 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _33 < 1:
        revert with 'NH{q', 17
    if _33 - 1 >= _33:
        revert with 'NH{q', 50
    if mem[(32 * _33 - 1) + (2 * ceil32(return_data.size)) + 224] >= stor8:
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor8
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
        mem[mem[64] + 68] = stor0
        mem[mem[64] + 100] = block.timestamp + 600
        require ext_code.size(stor6)
        call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value uint256(stor7.field_0) wei
             gas gas_remaining wei
            args stor8, Array(len=2, data=mem[mem[64] + 164 len 64]), stor0, block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _64 = mem[_63]
        require mem[_63] <= test266151307()
        require _63 + mem[_63] + 31 < _63 + return_data.size
        _65 = mem[_63 + mem[_63]]
        if mem[_63 + mem[_63]] > test266151307():
            revert with 'NH{q', 65
        if _63 + ceil32(return_data.size) + floor32(mem[_63 + mem[_63]]) + 1 > test266151307() or floor32(mem[_63 + mem[_63]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _63 + ceil32(return_data.size) + floor32(mem[_63 + mem[_63]]) + 1
        mem[_63 + ceil32(return_data.size)] = _65
        require _64 + (32 * _65) + 32 <= return_data.size
        idx = 0
        s = _63 + _64 + 32
        t = _63 + ceil32(return_data.size) + 32
        while idx < _65:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
