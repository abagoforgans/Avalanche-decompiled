contract main {




// =====================  Runtime code  =====================


address sub_635ab940Address;

function sub_635ab940(?) payable {
    return sub_635ab940Address
}

function _fallback() payable {
    revert
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

function sub_a1001a60(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 288
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if address(('cd', 4)[0]) != msg.sender:
        require ('cd', 4)[1] == address(('cd', 4)[1])
        if address(('cd', 4)[1]) != msg.sender:
            revert with 0, msg.sender
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[2] + 4)]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    require ('cd', 4)[5] == ('cd', 4)[5]
    require ('cd', 4)[6] == uint8(('cd', 4)[6])
    require ('cd', 4)[7] == uint8(('cd', 4)[7])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 452] = ('cd', 68).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 484 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ('cd', 68).length + 484] = 0
    require ext_code.size(sub_635ab940Address)
    call sub_635ab940Address.0xc92aeec1 with:
         gas gas_remaining wei
        args 0, 0, address(('cd', 4)[1]), 320, ('cd', 4).length, ('cd', 4)[3], address(('cd', 4)[4]), ('cd', 4)[5], ('cd', 4)[6] << 248, ('cd', 4)[7] << 248, ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 352, cd[(cd[4] + ('cd', 4)[2] + 4)], call.data[cd[4] + ('cd', 4)[2] + 36 len cd[(cd[4] + ('cd', 4)[2] + 4)]], 0, mem[cd[(cd[4] + ('cd', 4)[2] + 4)] + 484 len ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(('cd', 68).length) - cd[(cd[4] + ('cd', 4)[2] + 4)]]
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
    emit 0x49f89b2b: cd[36], block.timestamp, address(ext_call.return_data[0]), ext_call.return_data[0], msg.sender
    return ext_call.return_data[0]
}



}
