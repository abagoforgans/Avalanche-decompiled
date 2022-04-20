contract main {




// =====================  Runtime code  =====================


address sub_635ab940Address;

function sub_635ab940(?) payable {
    return sub_635ab940Address
}

function _fallback() payable {
    revert
}

function sub_25117178(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == address(arg7)
    require calldata.size - 228 >= 96
    if address(arg2) != msg.sender:
        if address(arg3) != msg.sender:
            revert with 0, msg.sender
    require arg8 == arg8
    require arg9 == uint8(arg9)
    require arg10 == uint8(arg10)
    require ext_code.size(sub_635ab940Address)
    call sub_635ab940Address.0x987b22be with:
         gas gas_remaining wei
        args address(arg2), address(arg3), 288, arg1, arg6, address(arg7), arg8, arg9 << 248, uint8(arg10), arg4.length, arg4[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_635ab940Address)
    staticcall sub_635ab940Address.0x5e39986f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x49f89b2b: arg5, block.timestamp, address(ext_call.return_data[0]), ext_call.return_data[0], msg.sender
    return ext_call.return_data[0]
}

function sub_4fbb8987(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_635ab940Address)
    staticcall sub_635ab940Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_635ab940Address)
    staticcall sub_635ab940Address.0x5aef2447 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] < 5
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    require return_data.size - 192 >= 96
    if not bool((2 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    if address(ext_call.return_data[0]) != msg.sender:
        if ext_call.return_data[140 len 20] != msg.sender:
            revert with 0, msg.sender
    require ext_code.size(sub_635ab940Address)
    staticcall sub_635ab940Address.0x5e39986f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x49f89b2b: arg2, block.timestamp, address(ext_call.return_data[0]), arg1, msg.sender
}



}
