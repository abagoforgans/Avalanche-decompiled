contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Only owner can use this function'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Only owner can use this function'
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

function sub_4789545a(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require ext_code.size(this.address)
    staticcall this.address.0xc0eef99 with:
            gas gas_remaining wei
           args address(arg1), address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    staticcall this.address.0xc0eef99 with:
            gas gas_remaining wei
           args address(arg2), address(arg4), address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    staticcall this.address.0xc0eef99 with:
            gas gas_remaining wei
           args address(arg2), address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    staticcall this.address.0xc0eef99 with:
            gas gas_remaining wei
           args address(arg1), address(arg4), address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return Array(len=2, data=ext_call.return_data[0], ext_call.return_data[0])
}

function sub_0c0eef99(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = _20 + 224
    t = ceil32(return_data.size) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _21:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}



}
