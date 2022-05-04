contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_4a1ba3b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 128] = stor2
    mem[ceil32(return_data.size) + 196] = stor0
    mem[ceil32(return_data.size) + 228] = arg1
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 1
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 1, 0, 160, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _25 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _24 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
