contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7bc469fc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.flashLoanSimple(address arg1, address arg2, uint256 arg3, bytes arg4, uint16 arg5) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2, 160, 0, 160, address(arg1), arg2, address(arg3), address(arg4), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_297fc767(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 160
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == ('cd', 4)[3]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(('cd', 4)[1]), address(('cd', 4)[0]), address(('cd', 4)[2]), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x987becea927678a69ff056d0aba4d79ba59b2791)
    call 0x987becea927678a69ff056d0aba4d79ba59b2791.0xf3e6ea8a with:
         gas gas_remaining wei
        args address(('cd', 4)[1]), ext_call.return_data[0], 1, address(('cd', 4)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 4)[3] and 9 > -1 / ('cd', 4)[3]:
        revert with 'NH{q', 17
    if ('cd', 4)[3] > -(9 * ('cd', 4)[3] / 100) - 1:
        revert with 'NH{q', 17
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ('cd', 4)[3] + (9 * ('cd', 4)[3] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[4]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
