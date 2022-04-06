contract main {




// =====================  Runtime code  =====================


address joeAddress;
array of address contracts;
array of struct stor2;

function contracts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < contracts.length
    return contracts[arg1]
}

function joe() payable {
    return joeAddress
}

function _fallback() payable {
    revert
}

function sub_3ab98c8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    return address(ext_call.return_data[0])
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
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
    require arg1 == arg1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'dead'
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).pendingTokens(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function action(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor2.length
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
        if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
            mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
    if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
        mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
}

function symbol(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1526fe27 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
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
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
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
