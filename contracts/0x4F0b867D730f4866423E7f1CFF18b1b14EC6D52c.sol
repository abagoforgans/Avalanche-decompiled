contract main {




// =====================  Runtime code  =====================


address routerAddress;
address pairAddress;
address tokenAAddress;
address tokenBAddress;

function tokenA() {
    return tokenAAddress
}

function tokenB() {
    return tokenBAddress
}

function pair() {
    return pairAddress
}

function router() {
    return routerAddress
}

function getPair() {
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function _fallback() payable {
    if calldata.size < 4:
    if tokenA() == uint32(call.func_hash) >> 224:
        require not msg.value
        return tokenAAddress
    if unknown_0x5f64b55b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return tokenBAddress
    if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return pairAddress
    if uint32(call.func_hash) >> 224 != unknown_0xc1f1b1b5(?????):
        if uint32(call.func_hash) >> 224 != unknown_0xf887ea40(?????):
        require not msg.value
        return routerAddress
    require not msg.value
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}



}
