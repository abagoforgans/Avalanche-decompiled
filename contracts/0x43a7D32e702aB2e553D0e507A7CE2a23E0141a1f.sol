contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address wethAddress;

function weth() {
    return wethAddress
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonTokenWethRouter: No ETH supplied'
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.depositFor(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
    return ext_call.return_data[0]
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send ETH'
    stor0 = 1
    return arg2
}

function burnAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(arg1)
    call arg1.transferAllFrom(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.burnAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send ETH'
    stor0 = 1
    return ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if wethAddress != msg.sender:
            revert with 0, 'ButtonTokenWethRouter: unexpected receive'
    if unknown_0x3fc8cef3(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return wethAddress
    if unknown_0x7e9d2ac1(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        require ext_code.size(address(arg1))
        call address(arg1).transferAllFrom(address arg1, address arg2) with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).burnAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wethAddress)
        call wethAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send ETH'
        stor0 = 1
        return ext_call.return_data[0]
    if uint32(call.func_hash) >> 224 != unknown_0x9dc29fac(?????):
        require unknown_0xf340fa01(?????) == uint32(call.func_hash) >> 224
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        if not msg.value:
            revert with 0, 'ButtonTokenWethRouter: No ETH supplied'
        require ext_code.size(wethAddress)
        call wethAddress.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wethAddress)
        call wethAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).depositFor(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0 = 1
        return ext_call.return_data[0]
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send ETH'
    stor0 = 1
    return arg2
}



}
