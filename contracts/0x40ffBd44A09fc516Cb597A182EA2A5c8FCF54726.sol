contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
address stor1;
address stor3;
address stor4;
address stor5;
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getAccountLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor5)
    staticcall stor5.0x5ec88c79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[0]:
        revert with 0, 'error'
    return ext_call.return_data[32], ext_call.return_data[64]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not enough balance'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function liquidate(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor5)
    staticcall stor5.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor5)
    staticcall stor5.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(stor5)
        staticcall stor5.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        if arg2 == stor1:
            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if arg2 == stor4:
                require ext_code.size(stor3)
                call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
            else:
                if arg3 == stor4:
                    require ext_code.size(stor3)
                    call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                else:
                    require ext_code.size(stor4)
                    call stor4.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
        else:
            if arg3 == stor1:
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 == stor4:
                    require ext_code.size(stor3)
                    call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                else:
                    if arg3 == stor4:
                        require ext_code.size(stor3)
                        call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                    else:
                        require ext_code.size(stor4)
                        call stor4.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
            else:
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(stor1)
                call stor1.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0], 128, 96, address(arg1), address(arg2), arg3
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor5)
        staticcall stor5.liquidationIncentiveMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] and 10^18 > -1 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(stor5)
        staticcall stor5.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        if arg2 == stor1:
            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if arg2 == stor4:
                require ext_code.size(stor3)
                call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
            else:
                if arg3 == stor4:
                    require ext_code.size(stor3)
                    call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                else:
                    require ext_code.size(stor4)
                    call stor4.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
        else:
            if arg3 == stor1:
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if arg2 == stor4:
                    require ext_code.size(stor3)
                    call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                else:
                    if arg3 == stor4:
                        require ext_code.size(stor3)
                        call stor3.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
                    else:
                        require ext_code.size(stor4)
                        call stor4.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / 10^18 / 10^12, 128, 96, address(arg1), address(arg2), arg3
            else:
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(stor1)
                call stor1.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), ext_call.return_data[0] * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0], 128, 96, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
