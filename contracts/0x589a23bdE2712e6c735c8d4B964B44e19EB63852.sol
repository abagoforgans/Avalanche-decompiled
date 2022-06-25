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

function sub_4de8ff21(?) payable {
    emit 0x66743038: msg.sender
    mem[100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = 1
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 3
    mem[(6 * ceil32(return_data.size)) + 128] = USDCAddress
    mem[(6 * ceil32(return_data.size)) + 160] = WAVAXAddress
    mem[(6 * ceil32(return_data.size)) + 192] = sub_0b9ec158Address
    mem[(6 * ceil32(return_data.size)) + 228] = routerAddress
    mem[(6 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(USDCAddress)
    call USDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 0
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x46c654e9: 0
    mem[(7 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    mem[(7 * ceil32(return_data.size)) + 260] = 0
    mem[(7 * ceil32(return_data.size)) + 292] = 160
    mem[(7 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (7 * ceil32(return_data.size)) + 420
    t = (6 * ceil32(return_data.size)) + 128
    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 324] = this.address
    mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_0b9ec158Address)
    staticcall sub_0b9ec158Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _52 = mem[_51]
    mem[mem[64]] = mem[_51]
    emit 0x33875cc4: mem[mem[64]]
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0x658d4b7f with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _52
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _52
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_59] == bool(mem[_59])
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0x658d4b7f with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
