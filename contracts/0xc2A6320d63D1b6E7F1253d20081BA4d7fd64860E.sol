contract main {




// =====================  Runtime code  =====================


address tokenSwapRouterAddress;
address owner;
address tokenSwapPairAddress;
address tokenAddress;

function tokenSwapRouter() {
    return tokenSwapRouterAddress
}

function owner() {
    return owner
}

function tokenSwapPair() {
    return tokenSwapPairAddress
}

function token() {
    return tokenAddress
}

function sub_33630b8a(?) payable {
    call owner with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer the funds, aborting.'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to transfer the funds, aborting.'
    ('bool', 'ext_call.success')
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args tokenSwapPairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args tokenSwapPairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args msg.value, ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args owner, tx.origin, 0
    else:
        if ext_call.return_data[0] and 90 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 90 * ext_call.return_data[0] / ext_call.return_data[0] != 90:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args owner, tx.origin, 90 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x161b822c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return tokenSwapRouterAddress
        if uint32(call.func_hash) >> 224 != unknown_0x33630b8a(?????):
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xdd816c87(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return tokenSwapPairAddress
            require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return tokenAddress
        call owner with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to transfer the funds, aborting.'
        require ext_code.size(tokenSwapRouterAddress)
        staticcall tokenSwapRouterAddress.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args tokenSwapPairAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args tokenSwapPairAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenSwapRouterAddress)
        staticcall tokenSwapRouterAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args msg.value, ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args owner, tx.origin, 0
        else:
            if ext_call.return_data[0] and 90 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 90 * ext_call.return_data[0] / ext_call.return_data[0] != 90:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args owner, tx.origin, 90 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
