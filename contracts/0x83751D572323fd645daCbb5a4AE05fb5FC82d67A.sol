contract main {




// =====================  Runtime code  =====================


#
#  - sub_95b076b0(?)
#  - sub_975130d0(?)
#  - sub_a8fe96c3(?)
#
mapping of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_de85a8b4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 0x4391e81bf449c584ee01f5503cb40573c53442d1 == msg.sender:
        stor1[address(arg1)] = arg2
        emit 0x33aa104f: address(arg1), arg2
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_5867bf2a(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    staticcall address(arg2).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no balance'
    if ext_call.return_data[0] >= arg3:
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x376d16c7de138b01455a51da79ad65806e9cd694, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x376d16c7de138b01455a51da79ad65806e9cd694)
        call 0x376d16c7de138b01455a51da79ad65806e9cd694.liquidate(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg1, address(arg2), arg3
    else:
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x376d16c7de138b01455a51da79ad65806e9cd694, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x376d16c7de138b01455a51da79ad65806e9cd694)
        call 0x376d16c7de138b01455a51da79ad65806e9cd694.liquidate(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg1, address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0x376d16c7de138b01455a51da79ad65806e9cd694.getPositionInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    staticcall address(ext_call.return_data[32]).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'get reward fail'
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).burn(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[64], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04a61b5a(?) payable {
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xb599c3590f42f8f995ecfa0f85d2980b76862fc1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 10^12 <= ext_call.return_data[0] / 10^12:
        if ext_call.return_data[0] / 10^12 <= ext_call.return_data[0] / 10^12:
            if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                    if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                        if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                            return 0x130966628846bfd36ff31a822705796e8cb8c18d, ext_call.return_data[0] / 10^12
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                    ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xb599c3590f42f8f995ecfa0f85d2980b76862fc1, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
        else:
            if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                    if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                        if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                            return 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, ext_call.return_data[0] / 10^12
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                    ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xb599c3590f42f8f995ecfa0f85d2980b76862fc1, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
    else:
        if ext_call.return_data[0] / 10^12 <= ext_call.return_data[0] / 10^12:
            if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                    if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                        if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                            return 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0] / 10^12
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                    ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xb599c3590f42f8f995ecfa0f85d2980b76862fc1, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
        else:
            if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                    if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                        if ext_call.return_data[0] <= ext_call.return_data[0] / 10^12:
                            return 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, ext_call.return_data[0] / 10^12
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                    ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xb599c3590f42f8f995ecfa0f85d2980b76862fc1, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0xc7198437980c041c805a1edcba50c1ce5db95118, ext_call.return_data[0]
                ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
    return 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, ext_call.return_data[0]
}

function sub_7f14526f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(cd[4]).bentoBox() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(cd[4]).masterContract() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(cd[4]).collateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 164] = this.address
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0x130966628846bfd36ff31a822705796e8cb8c18d, address(this.address), address(this.address), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(8 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 228] = ('cd', 36).length
    idx = 0
    s = (8 * ceil32(return_data.size)) + 260
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 260] = ('cd', 68).length
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 292] = 0
    mem[(8 * ceil32(return_data.size)) + 164] = this.address
    mem[(8 * ceil32(return_data.size)) + 196] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).liquidate(address[] arg1, uint256[] arg2, address arg3, address arg4) with:
         gas gas_remaining wei
        args 128, (32 * ('cd', 36).length) + 160, address(this.address), 0, ('cd', 36).length, mem[(8 * ceil32(return_data.size)) + 260 len (32 * ('cd', 36).length) + 32], call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), this.address
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no collateralToken got!'
    mem[(10 * ceil32(return_data.size)) + 164] = this.address
    mem[(10 * ceil32(return_data.size)) + 196] = 0
    mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    call address(ext_call.return_data[0]).withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(this.address), address(this.address), 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not -address(ext_call.return_data[0]) + 0xda67235dd5787d67955420c84ca1cecd4e5bb3b:
            staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'get wMEMO fail'
            staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[0] and 9970 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if 9970 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[0]):
                revert with 0, 17
            if not 19970 * ext_call.return_data[0]:
                revert with 0, 18
            call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x4d308c46ea9f234ea515cc51f16fba776451cac8, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
            call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'no profit'
        else:
            if not -address(ext_call.return_data[0]) + 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'no xjoe got'
                mem[(13 * ceil32(return_data.size)) + 164 len 64] = 0, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 164 len 28]
                call address(ext_call.return_data[0]).mem[(13 * ceil32(return_data.size)) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[(13 * ceil32(return_data.size)) + 168]
                if not ext_call.success:
                    revert with 0, '!leave'
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'no joe got'
                staticcall 0x454e67025631c065d3cfad6d71e6892f74487a15.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[0] and 9970 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if 9970 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[0]):
                    revert with 0, 17
                if not 19970 * ext_call.return_data[0]:
                    revert with 0, 18
                call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x454e67025631c065d3cfad6d71e6892f74487a15, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
                if not return_data.size:
                    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0, None
                else:
                    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[(12 * ceil32(return_data.size)) + 164] = this.address
        mem[(12 * ceil32(return_data.size)) + 196] = 0
        mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        call address(ext_call.return_data[0]).withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0x130966628846bfd36ff31a822705796e8cb8c18d, address(this.address), address(this.address), 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not -address(ext_call.return_data[0]) + 0xda67235dd5787d67955420c84ca1cecd4e5bb3b:
            staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'get wMEMO fail'
            staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[0] and 9970 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if 9970 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[0]):
                revert with 0, 17
            if not 19970 * ext_call.return_data[0]:
                revert with 0, 18
            call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x4d308c46ea9f234ea515cc51f16fba776451cac8, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
            call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'no profit'
        else:
            if not -address(ext_call.return_data[0]) + 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'no xjoe got'
                mem[(14 * ceil32(return_data.size)) + 164 len 64] = 0, ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 164 len 28]
                call address(ext_call.return_data[0]).mem[(14 * ceil32(return_data.size)) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[(14 * ceil32(return_data.size)) + 168]
                if not ext_call.success:
                    revert with 0, '!leave'
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'no joe got'
                staticcall 0x454e67025631c065d3cfad6d71e6892f74487a15.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[0] and 9970 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if 9970 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 9970 * ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if 10000 * ext_call.return_data[0] > !(9970 * ext_call.return_data[0]):
                    revert with 0, 17
                if not 19970 * ext_call.return_data[0]:
                    revert with 0, 18
                call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x454e67025631c065d3cfad6d71e6892f74487a15, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x454e67025631c065d3cfad6d71e6892f74487a15)
                if not return_data.size:
                    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0
                else:
                    call 0x454e67025631c065d3cfad6d71e6892f74487a15.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 9970 * ext_call.return_data[0] * ext_call.return_data[32] / 19970 * ext_call.return_data[0], address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
