contract main {




// =====================  Runtime code  =====================


address sub_23eed91cAddress;
address sub_8e46ad37Address;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 sub_ceeca984;
mapping of struct sub_edac4a84;
mapping of uint256 sub_a75ecd8f;
mapping of address sub_fc09048a;
array of struct sub_a7d7bbdd;
uint256 numContracts;
uint256 totalSupply;
uint256 lotteryCount;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
mapping of struct sub_a99f8971;
mapping of uint8 stor21;

function sub_01e0f748(?) payable {
    return totalSupply
}

function sub_23eed91c(?) payable {
    return sub_23eed91cAddress
}

function getWinner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_edac4a84[arg1].field_0, sub_edac4a84[arg1].field_256, sub_edac4a84[arg1].field_512, sub_edac4a84[arg1].field_768
}

function numContracts() payable {
    return numContracts
}

function sub_631a4460(?) payable {
    require calldata.size - 4 >= 32
    return sub_a99f8971[arg1].field_0, sub_a99f8971[arg1].field_256, sub_a99f8971[arg1].field_512, sub_a99f8971[arg1].field_768
}

function sub_8e46ad37(?) payable {
    return sub_8e46ad37Address
}

function sub_a75ecd8f(?) payable {
    require calldata.size - 4 >= 32
    return sub_a75ecd8f[arg1]
}

function sub_a7d7bbdd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a7d7bbdd.length
    return sub_a7d7bbdd[arg1].field_0
}

function sub_a99f8971(?) payable {
    require calldata.size - 4 >= 32
    return sub_a99f8971[arg1].field_0, sub_a99f8971[arg1].field_256, sub_a99f8971[arg1].field_512, sub_a99f8971[arg1].field_768
}

function totalWinners() payable {
    return sub_ceeca984
}

function getTotalSupply() payable {
    return totalSupply
}

function lotteryCount() payable {
    return lotteryCount
}

function sub_ccb6a1bb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_ceeca984(?) payable {
    return sub_ceeca984
}

function sub_edac4a84(?) payable {
    require calldata.size - 4 >= 32
    return sub_edac4a84[arg1].field_0, sub_edac4a84[arg1].field_256, sub_edac4a84[arg1].field_512, sub_edac4a84[arg1].field_768
}

function sub_fc09048a(?) payable {
    require calldata.size - 4 >= 32
    return sub_fc09048a[arg1]
}

function _fallback() payable {
    revert
}

function sub_0b19ae40(?) payable {
    require calldata.size - 4 >= 32
    stor21[arg1] = 1
}

function sub_120496ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_fc09048a[stor13] = address(arg1)
    if 1 > !numContracts:
        revert with 0, 17
    numContracts++
}

function sub_346e8034(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if 1 > !arg1:
        revert with 0, 17
    stor4 = arg1 + 1
    stor5 = arg2
    stor6 = arg3
    stor7 = address(arg4)
    sub_edac4a84[arg1 + 1].field_0 = arg1 + 1
    sub_edac4a84[arg1 + 1].field_256 = stor5
    sub_edac4a84[arg1 + 1].field_512 = stor6
    sub_edac4a84[arg1 + 1].field_768 = stor7
    if sub_ceeca984 == -1:
        revert with 0, 17
    sub_ceeca984++
}

function sub_0c3ce7e0(?) payable {
    require calldata.size - 4 >= 64
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Number of Bears must be greater than 0'
    if 1 > !lotteryCount:
        revert with 0, 17
    lotteryCount++
    stor16 = lotteryCount + 1
    stor17 = totalSupply
    stor18 = arg1
    stor19 = arg2
    sub_a99f8971[stor15 + 1].field_0 = lotteryCount + 1
    sub_a99f8971[stor15 + 1].field_256 = stor17
    sub_a99f8971[stor15 + 1].field_512 = stor18
    sub_a99f8971[stor15 + 1].field_768 = stor19
}

function sub_dcaf098f(?) payable {
    if sub_a7d7bbdd.length:
        mem[128] = uint256(sub_a7d7bbdd.field_0)
        idx = 128
        s = 0
        while (32 * sub_a7d7bbdd.length) + 96 > idx:
            mem[idx + 32] = sub_a7d7bbdd[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_a7d7bbdd.length, data=mem[128 len 32 * sub_a7d7bbdd.length])
    mem[(32 * sub_a7d7bbdd.length) + 128] = 32
    mem[(32 * sub_a7d7bbdd.length) + 160] = sub_a7d7bbdd.length
    mem[(32 * sub_a7d7bbdd.length) + 192 len 32 * sub_a7d7bbdd.length] = mem[128 len 32 * sub_a7d7bbdd.length]
    return memory
      from (32 * sub_a7d7bbdd.length) + 128
       len (96 * sub_a7d7bbdd.length) + 64
}

function setTotalSupply() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numContracts:
        mem[0] = idx
        mem[32] = 11
        require ext_code.size(sub_fc09048a[idx])
        staticcall sub_fc09048a[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_9]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_9]
        continue 
    totalSupply = s * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts
}

function sub_30a27228(?) payable {
    mem[0] = lotteryCount
    mem[32] = 20
    stor16 = sub_a99f8971[stor15].field_0
    stor17 = sub_a99f8971[stor15].field_256
    stor18 = sub_a99f8971[stor15].field_512
    stor19 = sub_a99f8971[stor15].field_768
    if sub_a99f8971[stor15].field_768 > test266151307():
        revert with 0, 65
    mem[96] = sub_a99f8971[stor15].field_768
    mem[64] = (32 * sub_a99f8971[stor15].field_768) + 128
    if not sub_a99f8971[stor15].field_768:
        idx = 0
        while idx < stor19:
            _64 = mem[64]
            mem[mem[64] + 32] = stor18
            mem[mem[64] + 64] = idx
            _68 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _70 = sha3(mem[_68 + 32 len mem[_68]])
            if not stor17:
                revert with 0, 18
            mem[_64 + 100] = sha3(mem[_68 + 32 len mem[_68]]) % stor17
            require ext_code.size(sub_23eed91cAddress)
            staticcall sub_23eed91cAddress.0x4f6ccce7 with:
                    gas gas_remaining wei
                   args (_70 % stor17)
            mem[_64 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[_64 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
            require ext_code.size(sub_23eed91cAddress)
            staticcall sub_23eed91cAddress.0x6352211e with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[_64 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            if 1 > !sub_ceeca984:
                revert with 0, 17
            mem[64] = _64 + (2 * ceil32(return_data.size)) + 224
            mem[_64 + (2 * ceil32(return_data.size)) + 96] = sub_ceeca984 + 1
            mem[_64 + (2 * ceil32(return_data.size)) + 128] = stor16
            mem[_64 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[_64 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            stor4 = sub_ceeca984 + 1
            stor5 = stor16
            stor6 = ext_call.return_data[0]
            stor7 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 9
            sub_edac4a84[stor8 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor8 + 1].field_256 = stor5
            sub_edac4a84[stor8 + 1].field_512 = stor6
            sub_edac4a84[stor8 + 1].field_768 = stor7
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_a99f8971[stor15].field_768] = call.data[calldata.size len 32 * sub_a99f8971[stor15].field_768]
        idx = 0
        while idx < stor19:
            _66 = mem[64]
            mem[mem[64] + 32] = stor18
            mem[mem[64] + 64] = idx
            _72 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _74 = sha3(mem[_72 + 32 len mem[_72]])
            if not stor17:
                revert with 0, 18
            mem[_66 + 100] = sha3(mem[_72 + 32 len mem[_72]]) % stor17
            require ext_code.size(sub_23eed91cAddress)
            staticcall sub_23eed91cAddress.0x4f6ccce7 with:
                    gas gas_remaining wei
                   args (_74 % stor17)
            mem[_66 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[_66 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
            require ext_code.size(sub_23eed91cAddress)
            staticcall sub_23eed91cAddress.0x6352211e with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[_66 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            if 1 > !sub_ceeca984:
                revert with 0, 17
            mem[64] = _66 + (2 * ceil32(return_data.size)) + 224
            mem[_66 + (2 * ceil32(return_data.size)) + 96] = sub_ceeca984 + 1
            mem[_66 + (2 * ceil32(return_data.size)) + 128] = stor16
            mem[_66 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[_66 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            stor4 = sub_ceeca984 + 1
            stor5 = stor16
            stor6 = ext_call.return_data[0]
            stor7 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 9
            sub_edac4a84[stor8 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor8 + 1].field_256 = stor5
            sub_edac4a84[stor8 + 1].field_512 = stor6
            sub_edac4a84[stor8 + 1].field_768 = stor7
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    sub_a7d7bbdd.length = mem[96]
    mem[0] = 12
    if not mem[96]:
        idx = 0
        while sub_a7d7bbdd.length > idx:
            sub_a7d7bbdd[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            sub_a7d7bbdd[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while sub_a7d7bbdd.length > idx:
            sub_a7d7bbdd[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
