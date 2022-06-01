contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9; offset 32
uint256 stor9;
uint256 stor10;

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
    stor10 = arg1
}

function setParameters(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == stor0
    stor1 = arg1
    stor8 = arg2
    uint256(stor9.field_0) = arg3
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
    staticcall stor6.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor9.field_0)
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = stor0
    mem[ceil32(return_data.size) + 292] = block.timestamp
    require ext_code.size(stor6)
    call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor8 wei
         gas gas_remaining wei
        args uint256(stor9.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), stor0, block.timestamp
    if ext_call.success:
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _30 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32)
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
        _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]
        require _30 + (32 * _31) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _30 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _31:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = uint256(stor9.field_0)
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 324] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 260] = stor0
        mem[ceil32(return_data.size) + 292] = block.timestamp
        require ext_code.size(stor7)
        call stor7.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value stor8 wei
             gas gas_remaining wei
            args uint256(stor9.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), stor0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _46 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32)
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
        _47 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor9.field_32) + 192]
        require _46 + (32 * _47) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _46 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _47:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
