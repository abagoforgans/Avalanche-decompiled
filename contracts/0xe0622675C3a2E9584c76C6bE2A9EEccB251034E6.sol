contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_d9dd08ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '403'
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3943e736(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0, '403'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_63f6781e(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if stor3 != msg.sender:
        revert with 0, '403'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if Mask(112, 0, ext_call.return_data[0]) > -Mask(112, 0, ext_call.return_data[32]) - 1:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) + Mask(112, 0, ext_call.return_data[32]) == arg4:
        if ext_call.return_data[18 len 14] > -ext_call.return_data[50 len 14] - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14] == arg5:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg6 > -2:
                revert with 'NH{q', 17
            require ext_code.size(stor1)
            call stor1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg6 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg2))
            if stor0 < address(arg1):
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg7, address(this.address), 128, 0
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg7, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg8 < 1:
                revert with 'NH{q', 17
            if stor0 >= address(arg1):
                require ext_code.size(address(arg3))
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg8 - 1, address(this.address), 128, 0
            else:
                if stor0 < address(arg1):
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg8 - 1, 0, address(this.address), 128, 0
                else:
                    if arg8 < 1:
                        revert with 'NH{q', 17
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg8 - 1, arg8 - 1, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, '500'
}



}
