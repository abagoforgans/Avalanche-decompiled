contract main {




// =====================  Runtime code  =====================


address pngAddress;

function png() payable {
    return pngAddress
}

function _fallback() payable {
    revert
}

function length() payable {
    mem[64] = 96
    idx = 0
    while idx < 9999:
        mem[mem[64] + 4] = idx
        require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
        staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x3ab98c8c with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            return idx
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == mem[_11 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_3ab98c8c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x3ab98c8c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).masterchef() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xebe2b12b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7b0a47ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        revert with 0, 'dead'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'dead'
    return address(ext_call.return_data[0])
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x3ab98c8c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).masterchef() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xebe2b12b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7b0a47ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        revert with 0, 'dead'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'dead'
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_8a45f0c5(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x3ab98c8c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).masterchef() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xebe2b12b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7b0a47ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        revert with 0, 'dead'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'dead'
    require ext_code.size(pngAddress)
    staticcall pngAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).masterchef() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).earned(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function symbol(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x3ab98c8c with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).masterchef() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xebe2b12b with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7b0a47ee with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        revert with 0, 'dead'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'dead'
    mem[(6 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(0x5728e8f450434558084e46db1c914e222e0fb6ff)
    staticcall 0x5728e8f450434558084e46db1c914e222e0fb6ff.0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _28 = mem[(7 * ceil32(return_data.size)) + 96]
    require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _29 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _29
    require _28 + _29 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 128 len ceil32(_29)] = mem[(7 * ceil32(return_data.size)) + _28 + 128 len ceil32(_29)]
    if ceil32(_29) <= _29:
        _43 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _29
        mem[mem[64] + 64 len ceil32(_29)] = mem[(8 * ceil32(return_data.size)) + 128 len ceil32(_29)]
        if ceil32(_29) <= _29:
            return Array(len=_29, data=mem[mem[64] + 64 len ceil32(_29)])
        mem[mem[64] + _29 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_29) + _43 + -mem[64] + 64
    mem[(8 * ceil32(return_data.size)) + _29 + 128] = 0
    _45 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _29
    mem[mem[64] + 64 len ceil32(_29)] = mem[(8 * ceil32(return_data.size)) + 128 len ceil32(_29)]
    if ceil32(_29) <= _29:
        return Array(len=_29, data=mem[mem[64] + 64 len ceil32(_29)])
    mem[mem[64] + _29 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_29) + _45 + -mem[64] + 64
}



}
