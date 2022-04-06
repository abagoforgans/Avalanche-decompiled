contract main {




// =====================  Runtime code  =====================


const length = ext_call.return_data[0]


address joeAddress;

function joe() payable {
    return joeAddress
}

function _fallback() payable {
    revert
}

function sub_3ab98c8c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x3ab98c8c with:
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
    staticcall address(ext_call.return_data[0]).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    return address(ext_call.return_data[0])
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x3ab98c8c with:
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
    staticcall address(ext_call.return_data[0]).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x8c64ea4a with:
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
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x3ab98c8c with:
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
    staticcall address(ext_call.return_data[0]).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
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
    staticcall address(ext_call.return_data[0]).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).pendingTokens(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
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
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x3ab98c8c with:
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
    staticcall address(ext_call.return_data[0]).pid() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    mem[(6 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(0xda8ee1642b7a58171116b55ceb4f291473500119)
    staticcall 0xda8ee1642b7a58171116b55ceb4f291473500119.0x8c64ea4a with:
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
    _29 = mem[(7 * ceil32(return_data.size)) + 96]
    require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _30 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _30
    require _29 + _30 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 128 len ceil32(_30)] = mem[(7 * ceil32(return_data.size)) + _29 + 128 len ceil32(_30)]
    if ceil32(_30) > _30:
        mem[(8 * ceil32(return_data.size)) + _30 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _30
    mem[mem[64] + 64 len ceil32(_30)] = mem[(8 * ceil32(return_data.size)) + 128 len ceil32(_30)]
    if ceil32(_30) > _30:
        mem[mem[64] + _30 + 64] = 0
    return Array(len=_30, data=mem[mem[64] + 64 len ceil32(_30)])
}



}
