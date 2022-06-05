contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_73d8e3a7(?) {
    require calldata.size - 4 >= 32
    if 10^18 == arg1:
        return stor0
    if 10 * 10^18 == arg1:
        return stor1
    if arg1 != 100 * 10^18:
        return 0
    return stor2
}

function sub_7ebab2d3(?) payable {
    require calldata.size - 4 >= 64
    if arg1 / 100000 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    require msg.value == 3 * arg1 / 100000
    if 10^18 == arg1:
        require ext_code.size(stor0)
        call stor0.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), arg1, 96, 32, arg2
    else:
        if 10 * 10^18 == arg1:
            require ext_code.size(stor1)
            call stor1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(this.address), arg1, 96, 32, arg2
        else:
            if arg1 != 100 * 10^18:
                require ext_code.size(0)
                call 0x0.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(this.address), arg1, 96, 32, arg2
            else:
                require ext_code.size(stor2)
                call stor2.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(this.address), arg1, 96, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cb92f93c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 32
    if 10^18 == msg.value:
        require ext_code.size(stor0)
        call stor0.deposit(bytes32 arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args ('cd', 4)[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value / 100000 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        require ext_code.size(stor0)
        call stor0.payBack() with:
           value 3 * msg.value / 100000 wei
             gas gas_remaining wei
    else:
        if 10 * 10^18 == msg.value:
            require ext_code.size(stor1)
            call stor1.deposit(bytes32 arg1) with:
               value msg.value wei
                 gas gas_remaining wei
                args ('cd', 4)[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value / 100000 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            require ext_code.size(stor1)
            call stor1.payBack() with:
               value 3 * msg.value / 100000 wei
                 gas gas_remaining wei
        else:
            if msg.value != 100 * 10^18:
                require ext_code.size(0)
                call 0x0.deposit(bytes32 arg1) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args ('cd', 4)[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value / 100000 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                require ext_code.size(0)
                call 0x0.payBack() with:
                   value 3 * msg.value / 100000 wei
                     gas gas_remaining wei
            else:
                require ext_code.size(stor2)
                call stor2.deposit(bytes32 arg1) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args ('cd', 4)[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value / 100000 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                require ext_code.size(stor2)
                call stor2.payBack() with:
                   value 3 * msg.value / 100000 wei
                     gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
