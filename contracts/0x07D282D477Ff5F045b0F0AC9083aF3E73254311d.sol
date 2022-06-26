contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_fc09048a;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 sub_ceeca984;
mapping of struct sub_edac4a84;
mapping of uint256 sub_a75ecd8f;
array of struct sub_a7d7bbdd;
uint256 numContracts;
uint256 totalSupply;
uint256 lotteryCount;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of struct sub_a99f8971;
mapping of uint8 stor18;
address storFECC;

function sub_01e0f748(?) payable {
    return totalSupply
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

function owner() payable {
    return owner
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
    return bool(stor18[arg1])
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
    stor18[arg1] = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_120496ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !numContracts:
        revert with 0, 17
    numContracts++
    sub_fc09048a[stor10 + 1] = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_346e8034(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if 1 > !arg1:
        revert with 0, 17
    stor2 = arg1 + 1
    stor3 = arg2
    stor4 = arg3
    stor5 = address(arg4)
    sub_edac4a84[arg1 + 1].field_0 = arg1 + 1
    sub_edac4a84[arg1 + 1].field_256 = stor3
    sub_edac4a84[arg1 + 1].field_512 = stor4
    sub_edac4a84[arg1 + 1].field_768 = stor5
    if sub_ceeca984 == -1:
        revert with 0, 17
    sub_ceeca984++
}

function sub_0c3ce7e0(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Number of Bears must be greater than 0'
    if 1 > !lotteryCount:
        revert with 0, 17
    lotteryCount++
    stor13 = lotteryCount + 1
    stor14 = totalSupply
    stor15 = arg1
    stor16 = arg2
    sub_a99f8971[stor12 + 1].field_0 = lotteryCount + 1
    sub_a99f8971[stor12 + 1].field_256 = stor14
    sub_a99f8971[stor12 + 1].field_512 = stor15
    sub_a99f8971[stor12 + 1].field_768 = stor16
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    s = 0
    while idx <= numContracts:
        mem[0] = idx
        mem[32] = 1
        require ext_code.size(sub_fc09048a[idx])
        staticcall sub_fc09048a[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_11]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_11]
        continue 
    totalSupply = s * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts
}

function sub_40c75be2(?) payable {
    require calldata.size - 4 >= 96
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    if not arg2:
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _35 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not arg3:
                revert with 0, 18
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = sha3(mem[_35 + 32 len mem[_35]]) % arg3
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _39 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not arg3:
                revert with 0, 18
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = sha3(mem[_39 + 32 len mem[_39]]) % arg3
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function expand(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    if not arg2:
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < arg2:
            _54 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _57 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not arg3:
                revert with 0, 18
            if sha3(mem[_57 + 32 len mem[_57]]) % arg3 > ext_call.return_data[0]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = sha3(mem[_57 + 32 len mem[_57]]) % arg3
            else:
                mem[32] = 1
                mem[0] = 1
                mem[_54 + 128] = arg1
                mem[_54 + 160] = idx
                mem[_54 + 96] = 64
                if not arg3:
                    revert with 0, 18
                mem[_54 + 196] = sha3(arg1, idx) % arg3
                require ext_code.size(storFECC)
                staticcall storFECC.tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(arg1, idx) % arg3)
                mem[_54 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _54 + ceil32(return_data.size) + 192
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < arg2:
            _55 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _61 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not arg3:
                revert with 0, 18
            if sha3(mem[_61 + 32 len mem[_61]]) % arg3 > ext_call.return_data[0]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = sha3(mem[_61 + 32 len mem[_61]]) % arg3
            else:
                mem[32] = 1
                mem[0] = 1
                mem[_55 + 128] = arg1
                mem[_55 + 160] = idx
                mem[_55 + 96] = 64
                if not arg3:
                    revert with 0, 18
                mem[_55 + 196] = sha3(arg1, idx) % arg3
                require ext_code.size(storFECC)
                staticcall storFECC.tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(arg1, idx) % arg3)
                mem[_55 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _55 + ceil32(return_data.size) + 192
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_30a27228(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = sub_a99f8971[stor12].field_0
    stor14 = sub_a99f8971[stor12].field_256
    stor15 = sub_a99f8971[stor12].field_512
    stor16 = sub_a99f8971[stor12].field_768
    if sub_a99f8971[stor12].field_768 > test266151307():
        revert with 0, 65
    mem[96] = sub_a99f8971[stor12].field_768
    if not sub_a99f8971[stor12].field_768:
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * sub_a99f8971[stor12].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_a99f8971[stor12].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor16:
            _120 = mem[64]
            mem[mem[64] + 32] = stor15
            mem[mem[64] + 64] = idx
            _121 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sha3(mem[_121 + 32 len mem[_121]]) % ext_call.return_data[0] > ext_call.return_data[0]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = sha3(mem[_121 + 32 len mem[_121]]) % ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                _153 = mem[(32 * idx) + 128]
                mem[_120 + 100] = mem[(32 * idx) + 128]
                require ext_code.size(storFECC)
                staticcall storFECC.0x6352211e with:
                        gas gas_remaining wei
                       args _153
                mem[_120 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                _197 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _120 + ceil32(return_data.size) + 224
                mem[_120 + ceil32(return_data.size) + 96] = sub_ceeca984 + 1
                mem[_120 + ceil32(return_data.size) + 128] = stor13
                mem[_120 + ceil32(return_data.size) + 160] = _197
                mem[_120 + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
                stor2 = sub_ceeca984 + 1
                stor3 = stor13
                stor4 = _197
            else:
                mem[_120 + 128] = stor15
                mem[_120 + 160] = idx
                mem[_120 + 96] = 64
                if not stor14:
                    revert with 0, 18
                mem[_120 + 196] = sha3(stor15, idx) % stor14
                require ext_code.size(storFECC)
                staticcall storFECC.tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(stor15, idx) % stor14)
                mem[_120 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_120 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFECC)
                staticcall storFECC.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_120 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _120 + (2 * ceil32(return_data.size)) + 320
                mem[_120 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_120 + (2 * ceil32(return_data.size)) + 224] = stor13
                mem[_120 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                mem[_120 + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                stor2 = sub_ceeca984 + 1
                stor3 = stor13
                stor4 = ext_call.return_data[0]
            stor5 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 7
            sub_edac4a84[stor6 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor6 + 1].field_256 = stor3
            sub_edac4a84[stor6 + 1].field_512 = stor4
            sub_edac4a84[stor6 + 1].field_768 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_a99f8971[stor12].field_768] = call.data[calldata.size len 32 * sub_a99f8971[stor12].field_768]
        mem[32] = 1
        mem[0] = 1
        require ext_code.size(storFECC)
        staticcall storFECC.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * sub_a99f8971[stor12].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_a99f8971[stor12].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor16:
            _125 = mem[64]
            mem[mem[64] + 32] = stor15
            mem[mem[64] + 64] = idx
            _126 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sha3(mem[_126 + 32 len mem[_126]]) % ext_call.return_data[0] > ext_call.return_data[0]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = sha3(mem[_126 + 32 len mem[_126]]) % ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                _155 = mem[(32 * idx) + 128]
                mem[_125 + 100] = mem[(32 * idx) + 128]
                require ext_code.size(storFECC)
                staticcall storFECC.0x6352211e with:
                        gas gas_remaining wei
                       args _155
                mem[_125 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                _200 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _125 + ceil32(return_data.size) + 224
                mem[_125 + ceil32(return_data.size) + 96] = sub_ceeca984 + 1
                mem[_125 + ceil32(return_data.size) + 128] = stor13
                mem[_125 + ceil32(return_data.size) + 160] = _200
                mem[_125 + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
                stor2 = sub_ceeca984 + 1
                stor3 = stor13
                stor4 = _200
            else:
                mem[_125 + 128] = stor15
                mem[_125 + 160] = idx
                mem[_125 + 96] = 64
                if not stor14:
                    revert with 0, 18
                mem[_125 + 196] = sha3(stor15, idx) % stor14
                require ext_code.size(storFECC)
                staticcall storFECC.tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(stor15, idx) % stor14)
                mem[_125 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_125 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFECC)
                staticcall storFECC.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_125 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _125 + (2 * ceil32(return_data.size)) + 320
                mem[_125 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_125 + (2 * ceil32(return_data.size)) + 224] = stor13
                mem[_125 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                mem[_125 + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                stor2 = sub_ceeca984 + 1
                stor3 = stor13
                stor4 = ext_call.return_data[0]
            stor5 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 7
            sub_edac4a84[stor6 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor6 + 1].field_256 = stor3
            sub_edac4a84[stor6 + 1].field_512 = stor4
            sub_edac4a84[stor6 + 1].field_768 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    sub_a7d7bbdd.length = mem[96]
    mem[0] = 9
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
