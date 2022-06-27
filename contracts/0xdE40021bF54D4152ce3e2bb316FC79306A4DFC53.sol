contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_eeafbddc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    return 0xeeafbddc00000000000000000000000000000000000000000000000000000000
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transferNFT(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_798760e8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor0
    mem[260 len arg3.length] = arg3[all]
    mem[arg3.length + 260] = 0
    require ext_code.size(address(arg1))
    call address(arg1).0xb88d4fde with:
         gas gas_remaining wei
        args 0, 0, 0x11ac3118309a7215c6d87c7c396e2df333ae3a9c, arg2, 128, arg3.length, arg3[all], mem[arg3.length + 260 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x11ac3118309a7215c6d87c7c396e2df333ae3a9c)
    staticcall 0x11ac3118309a7215c6d87c7c396e2df333ae3a9c.getTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    require ext_code.size(0x11ac3118309a7215c6d87c7c396e2df333ae3a9c)
    call 0x11ac3118309a7215c6d87c7c396e2df333ae3a9c.cancel(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
