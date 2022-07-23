contract main {




// =====================  Runtime code  =====================


const name = 'Pangolin-Stake-Resolver-v1', 0

const sub_4b7f6363(?) = 0x1f806f7c8ded893fd3cae279191ad7aa3798e928

const sub_d4efe4e6(?) = 0x1f806f7c8ded893fd3cae279191ad7aa3798e928


function _fallback() payable {
    revert
}

function sub_17845140(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).rewards(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xd1af0c7d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], mem[300 len 20], ext_call.return_data[0]
}

function sub_b121d8d4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x93f1a40b with:
            gas gas_remaining wei
           args arg2, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 288 <= test266151307())
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg2, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args 0x1f806f7c8ded893fd3cae279191ad7aa3798e928
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_cd920d07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.addedTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(return_data.size) + 96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.mem[var38003 len 4] with:
            gas gas_remaining wei
           args mem[var38003 + 4 len var38004 - 4]
    mem[var38005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var42002 - var42001 >= 32
    if var46002 >= var46001:
        return 0
    mem[(2 * ceil32(return_data.size)) + 96] = 0x78ed5d1f00000000000000000000000000000000000000000000000000000000
    mem[var50001] = var50002
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.mem[var54003 len 4] with:
            gas gas_remaining wei
           args mem[var54003 + 4 len var54004 - 4]
    mem[var54005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require var58002 - var58001 >= 32
    require mem[var60002] == mem[var60002 + 12 len 20]
    s = mem[var60002]
    idx = mem[var60002]
    s = var60002
    s = var60003
    s = var60006
    while address(idx) != address(arg1):
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.poolLength() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s + 1 >= mem[_188]:
            return 0
        mem[mem[64] + 4] = s + 1
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.lpToken(uint256 arg1) with:
                gas gas_remaining wei
               args (s + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_195] == mem[_195 + 12 len 20]
        s = mem[_195]
        idx = mem[_195]
        s = _195
        s = _195 + return_data.size
        s = s + 1
        continue 
    return s, 1
}



}
