contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function witdhraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ba5f07b8(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == bool(arg8)
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    if not Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
        revert with 0, '0', 0
    s = 0
    idx = Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = s
    if s:
        mem[(2 * ceil32(return_data.size)) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        mem[t + (2 * ceil32(return_data.size)) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 132] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 196 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
    if ceil32(mem[(2 * ceil32(return_data.size)) + 96]) > mem[(2 * ceil32(return_data.size)) + 96]:
        mem[(2 * ceil32(return_data.size)) + ceil32(s) + mem[(2 * ceil32(return_data.size)) + 96] + 196] = 0
    revert with 0, 
                32,
                mem[(2 * ceil32(return_data.size)) + 96],
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 196 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
}



}
