contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_e4e56989(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation (c)'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Nui 8'
    if block.number < arg3:
        revert with 0, 'Onop 3'
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = arg1
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = arg4
    mem[292] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[356 len 64]), address(arg4), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = _20 + 224
    s = ceil32(return_data.size) + 224
    while idx < _20 + (32 * _21) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}



}
