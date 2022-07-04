contract main {




// =====================  Runtime code  =====================


function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_7bc469fc(?) {
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

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 160
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), address(cd[(arg5 + 36)]), address(cd[(arg5 + 100)]), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x987becea927678a69ff056d0aba4d79ba59b2791)
    call 0x987becea927678a69ff056d0aba4d79ba59b2791.0xf3e6ea8a with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), ext_call.return_data[0], 1, address(cd[(arg5 + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    if cd[(arg5 + 132)] > -cd[(arg3 + 36)] - 1:
        revert with 'NH{q', 17
    call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, cd[(arg5 + 132)] + cd[(arg3 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(cd[(arg5 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg5 + 164)]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
