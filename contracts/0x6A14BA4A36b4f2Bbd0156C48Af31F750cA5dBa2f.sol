contract main {




// =====================  Runtime code  =====================


address factoryAddress;
address chefAddress;

function chef() payable {
    return chefAddress
}

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
        require ext_code.size(chefAddress)
        staticcall chefAddress.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if mem[_21] != 0:
            mem[mem[64] + 4] = idx
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x3ab98c8c with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            require mem[_27] == mem[_27 + 12 len 20]
            require ext_code.size(mem[_27 + 12 len 20])
            staticcall mem[_27 + 12 len 20].0x21d16b8c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_31] == mem[_31 + 12 len 20]
                if mem[_31 + 12 len 20]:
                    return address(_28), idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function data(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.vaults(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(chefAddress)
    staticcall chefAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(2 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _14 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _15
    require _14 + _15 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_15)] = mem[(2 * ceil32(return_data.size)) + _14 + 128 len ceil32(_15)]
    if ceil32(_15) <= _15:
        _29 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _15
        mem[mem[64] + 96 len ceil32(_15)] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_15)]
        if ceil32(_15) > _15:
            mem[mem[64] + _15 + 96] = 0
        mem[mem[64] + 32] = ext_call.return_data[0]
        return memory
          from mem[64]
           len ceil32(_15) + _29 + -mem[64] + 96
    mem[(4 * ceil32(return_data.size)) + _15 + 128] = 0
    _31 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _15
    mem[mem[64] + 96 len ceil32(_15)] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_15)]
    if ceil32(_15) > _15:
        mem[mem[64] + _15 + 96] = 0
    mem[mem[64] + 32] = ext_call.return_data[0]
    return memory
      from mem[64]
       len ceil32(_15) + _31 + -mem[64] + 96
}



}
