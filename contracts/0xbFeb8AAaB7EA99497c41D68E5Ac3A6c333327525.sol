contract main {




// =====================  Runtime code  =====================


address sub_0b9ec158Address;
address USDCAddress;
address WAVAXAddress;
address DEADAddress;
address pairAddress;
address routerAddress;
address routerAddress;

function DEAD() payable {
    return DEADAddress
}

function sub_0b9ec158(?) payable {
    return sub_0b9ec158Address
}

function routerAddress() payable {
    return routerAddress
}

function WAVAX() payable {
    return WAVAXAddress
}

function USDC() payable {
    return USDCAddress
}

function pair() payable {
    return pairAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_3263078e(?) payable {
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = 1
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    mem[(4 * ceil32(return_data.size)) + 164] = 0
    require ext_code.size(USDCAddress)
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 128] = USDCAddress
    mem[(6 * ceil32(return_data.size)) + 160] = WAVAXAddress
    require ext_code.size(USDCAddress)
    call USDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 0
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = 0
    idx = 0
    s = (7 * ceil32(return_data.size)) + 388
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, msg.sender, block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6cda198(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 160] = 'Amount in wallet currently, befo'
    mem[ceil32(return_data.size) + 192] = 're dividend collection: '
    emit Log(Array(len=56, data='Amount in wallet currently, befo', 're dividend collection: '));
    emit Amount(ext_call.return_data[0]);
    mem[ceil32(return_data.size) + 132] = 1
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    mem[(4 * ceil32(return_data.size)) + 164] = 0
    require ext_code.size(USDCAddress)
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Log(Array(len=26, data='collected usdc for swap : '));
    emit Amount(0);
    mem[(6 * ceil32(return_data.size)) + 128] = USDCAddress
    mem[(6 * ceil32(return_data.size)) + 160] = WAVAXAddress
    mem[(6 * ceil32(return_data.size)) + 192] = address(arg1)
    require ext_code.size(USDCAddress)
    call USDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 0
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Log('approved USDC on router spend for exact amount: ');
    emit Amount(0);
    mem[(7 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    idx = 0
    s = (7 * ceil32(return_data.size)) + 420
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, msg.sender, block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
