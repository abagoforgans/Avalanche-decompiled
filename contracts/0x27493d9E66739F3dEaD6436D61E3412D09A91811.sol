contract main {




// =====================  Runtime code  =====================


#
#  - flashloan(uint256 arg1, uint256 arg2)
#
function _fallback() payable {
    revert
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
    require arg5.length >= 64
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, cd[(arg2 + 36)], address(cd[(arg5 + 36)]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0xc7198437980c041c805a1edcba50c1ce5db95118, cd[(arg5 + 68)], 2, 0, address(cd[(arg5 + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x58e57ca18b7a47112b877e31929798cd3d703b0f, cd[(arg5 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not cd[(arg5 + 68)]:
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        call 0x58e57ca18b7a47112b877e31929798cd3d703b0f.exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 2, 1, cd[(arg5 + 68)], 0
    else:
        if cd[(arg5 + 68)] and 99 > -1 / cd[(arg5 + 68)]:
            revert with 'NH{q', 17
        if not cd[(arg5 + 68)]:
            revert with 'NH{q', 18
        if 99 * cd[(arg5 + 68)] / cd[(arg5 + 68)] != 99:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        call 0x58e57ca18b7a47112b877e31929798cd3d703b0f.exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 2, 1, cd[(arg5 + 68)], 99 * cd[(arg5 + 68)] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, -1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if cd[(arg2 + 36)]:
        if cd[(arg2 + 36)] and 10009 > -1 / cd[(arg2 + 36)]:
            revert with 'NH{q', 17
        if not cd[(arg2 + 36)]:
            revert with 'NH{q', 18
        if 10009 * cd[(arg2 + 36)] / cd[(arg2 + 36)] != 10009:
            revert with 0, 'SafeMath: multiplication overflow'
    return 1
}



}
