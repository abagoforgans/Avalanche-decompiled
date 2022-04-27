contract main {




// =====================  Runtime code  =====================


address factoryAddress;

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function sub_158c3a60(?) payable {
    mem[64] = 96
    idx = 0
    while idx < 9999:
        mem[mem[64] + 4] = idx
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x3ab98c8c with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require mem[_15] == mem[_15 + 12 len 20]
        require ext_code.size(mem[_15 + 12 len 20])
        staticcall mem[_15 + 12 len 20].0x21d16b8c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == mem[_19 + 12 len 20]
            if mem[_19 + 12 len 20]:
                return address(_16)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}



}
