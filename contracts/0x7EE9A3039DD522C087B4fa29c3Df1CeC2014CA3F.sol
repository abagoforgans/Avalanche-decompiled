contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if owner != msg.sender:
            if 1 > !stor4:
                revert with 'NH{q', 17
            stor4++
            call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 5 < stor4 + 1:
                selfdestruct(owner)
            if stor1 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 'NH{q', 17
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, 10 * stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor2.tokenToBnbSwapInput(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if unknown_0x84cdb2e9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0xcae270b6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            stor2 = address(arg1)
            stor3 = address(arg2)
            stor1 = arg3
            call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 'NH{q', 17
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 10 * arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor2.tokenToBnbSwapInput(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_84cdb2e9(?) {
    call stor2.tokenToBnbSwapInput(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sell(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    stor2 = arg1
    stor3 = arg2
    stor1 = arg3
    call arg2.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 'NH{q', 17
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 10 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor2.tokenToBnbSwapInput(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
