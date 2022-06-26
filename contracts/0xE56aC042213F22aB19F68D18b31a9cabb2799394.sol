contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_ceeca984;
uint256 numContracts;
uint256 totalSupply;
uint256 stor13;
array of struct stor14;
mapping of address stor15;
mapping of uint8 stor16;
array of struct stor17;
mapping of uint8 stor18;
mapping of struct sub_84231261;
mapping of struct sub_edac4a84;

function sub_84231261(?) payable {
    require calldata.size - 4 >= 32
    return sub_84231261[arg1].field_0, sub_84231261[arg1].field_256, sub_84231261[arg1].field_512, sub_84231261[arg1].field_768
}

function owner() payable {
    return owner
}

function getTotalSupply() payable {
    return totalSupply
}

function sub_ceeca984(?) payable {
    return sub_ceeca984
}

function getNumContracts() payable {
    return numContracts
}

function sub_edac4a84(?) payable {
    require calldata.size - 4 >= 32
    return sub_edac4a84[arg1].field_0, 
           sub_edac4a84[arg1].field_256,
           sub_edac4a84[arg1].field_512,
           sub_edac4a84[arg1].field_768,
           sub_edac4a84[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_eee57bb9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[arg1] = address(arg2)
}

function sub_4067f75d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor18[address(arg1)]:
        revert with 0, 'address already added'
    stor18[address(arg1)] = 1
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

function sub_120496ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16[address(arg1)]:
        revert with 0, 'contract already added'
    if 1 > !numContracts:
        revert with 0, 17
    numContracts++
    stor15[stor11 + 1] = address(arg1)
    stor16[address(arg1)] = 1
}

function sub_0f8dd5c9(?) payable {
    require calldata.size - 4 >= 64
    if numContracts <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Number of Bears must be greater than 0'
    if not stor18[msg.sender]:
        revert with 0, 'you are not admin!'
    if 1 > !stor13:
        revert with 0, 17
    stor13++
    stor6 = stor13 + 1
    stor7 = totalSupply
    stor8 = arg1
    stor9 = arg2
    sub_84231261[stor13 + 1].field_0 = stor13 + 1
    sub_84231261[stor13 + 1].field_256 = stor7
    sub_84231261[stor13 + 1].field_512 = stor8
    sub_84231261[stor13 + 1].field_768 = stor9
}

function sub_515fe1b2(?) payable {
    if stor14.length:
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while (32 * stor14.length) + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor14.length, data=mem[128 len 32 * stor14.length])
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    mem[(32 * stor14.length) + 192 len 32 * stor14.length] = mem[128 len 32 * stor14.length]
    return memory
      from (32 * stor14.length) + 128
       len (96 * stor14.length) + 64
}

function sub_806d2c37(?) payable {
    require calldata.size - 4 >= 32
    if sub_84231261[arg1].field_768 > test266151307():
        revert with 0, 65
    if stor17[arg1].field_0:
        mem[(32 * sub_84231261[arg1].field_768) + 288] = stor17[arg1].field_0
        idx = (32 * sub_84231261[arg1].field_768) + 288
        s = 0
        while (32 * sub_84231261[arg1].field_768) + (32 * stor17[arg1].field_0) + 256 > idx:
            mem[idx + 32] = stor17[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor17[arg1].field_0, data=mem[(32 * sub_84231261[arg1].field_768) + 288 len 32 * stor17[arg1].field_0])
    mem[(32 * sub_84231261[arg1].field_768) + (32 * stor17[arg1].field_0) + 288] = 32
    mem[(32 * sub_84231261[arg1].field_768) + (32 * stor17[arg1].field_0) + 320] = stor17[arg1].field_0
    mem[(32 * sub_84231261[arg1].field_768) + (32 * stor17[arg1].field_0) + 352 len 32 * stor17[arg1].field_0] = mem[(32 * sub_84231261[arg1].field_768) + 288 len 32 * stor17[arg1].field_0]
    return memory
      from (32 * sub_84231261[arg1].field_768) + (32 * stor17[arg1].field_0) + 288
       len (96 * stor17[arg1].field_0) + 64
}

function setTotalSupply() payable {
    mem[64] = 96
    if numContracts <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No contracts, please addToContract()'
    mem[0] = msg.sender
    mem[32] = 18
    if not stor18[msg.sender]:
        revert with 0, 'you are not admin!'
    idx = 1
    s = 0
    while idx <= numContracts:
        mem[0] = idx
        mem[32] = 15
        require ext_code.size(stor15[idx])
        staticcall stor15[idx].totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_14]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_14]
        continue 
    totalSupply = s * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts * numContracts
}

function sub_22bfcb96(?) payable {
    require calldata.size - 4 >= 96
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _65 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _67 = sha3(mem[_65 + 32 len mem[_65]])
            if not arg3:
                revert with 0, 18
            s = 1
            while s <= numContracts:
                mem[0] = s
                mem[32] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _67 % arg3 > mem[_132]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[0] = s
                mem[32] = 15
                _137 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = idx
                _138 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _140 = sha3(mem[_138 + 32 len mem[_138]])
                if not arg3:
                    revert with 0, 18
                mem[_137 + 100] = sha3(mem[_138 + 32 len mem[_138]]) % arg3
                require ext_code.size(stor15[s])
                staticcall stor15[s].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_140 % arg3)
                mem[_137 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                mem[0] = s
                mem[32] = 15
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_137 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(stor15[s])
                staticcall stor15[s].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_137 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _137 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _69 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _71 = sha3(mem[_69 + 32 len mem[_69]])
            if not arg3:
                revert with 0, 18
            s = 1
            while s <= numContracts:
                mem[0] = s
                mem[32] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _71 % arg3 > mem[_133]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[0] = s
                mem[32] = 15
                _142 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = idx
                _143 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _145 = sha3(mem[_143 + 32 len mem[_143]])
                if not arg3:
                    revert with 0, 18
                mem[_142 + 100] = sha3(mem[_143 + 32 len mem[_143]]) % arg3
                require ext_code.size(stor15[s])
                staticcall stor15[s].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_145 % arg3)
                mem[_142 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                mem[0] = s
                mem[32] = 15
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_142 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(stor15[s])
                staticcall stor15[s].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_142 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _142 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
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
    if not stor18[msg.sender]:
        revert with 0, 'you are not admin!'
    mem[0] = stor13
    mem[32] = 19
    stor6 = sub_84231261[stor13].field_0
    stor7 = sub_84231261[stor13].field_256
    stor8 = sub_84231261[stor13].field_512
    stor9 = sub_84231261[stor13].field_768
    if sub_84231261[stor13].field_768 > test266151307():
        revert with 0, 65
    mem[96] = sub_84231261[stor13].field_768
    mem[64] = (32 * sub_84231261[stor13].field_768) + 128
    if not sub_84231261[stor13].field_768:
        idx = 0
        while idx < stor9:
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _133 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _135 = sha3(mem[_133 + 32 len mem[_133]])
            if not totalSupply:
                revert with 0, 18
            s = 1
            while s <= numContracts:
                mem[0] = s
                mem[32] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _135 % totalSupply > mem[_264]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[0] = s
                mem[32] = 15
                _284 = mem[64]
                mem[mem[64] + 32] = stor8
                mem[mem[64] + 64] = idx
                _285 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _287 = sha3(mem[_285 + 32 len mem[_285]])
                if not stor7:
                    revert with 0, 18
                mem[_284 + 100] = sha3(mem[_285 + 32 len mem[_285]]) % stor7
                require ext_code.size(stor15[s])
                staticcall stor15[s].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_287 % stor7)
                mem[_284 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_284 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(stor15[s])
                staticcall stor15[s].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_284 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _284 + (2 * ceil32(return_data.size)) + 256
                mem[_284 + (2 * ceil32(return_data.size)) + 96] = sub_ceeca984 + 1
                mem[_284 + (2 * ceil32(return_data.size)) + 128] = s
                mem[_284 + (2 * ceil32(return_data.size)) + 160] = stor6
                mem[_284 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                mem[_284 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                stor1 = sub_ceeca984 + 1
                stor2 = s
                stor3 = stor6
                stor4 = ext_call.return_data[0]
                stor5 = address(ext_call.return_data[0])
                mem[0] = sub_ceeca984 + 1
                mem[32] = 20
                sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
                sub_edac4a84[stor10 + 1].field_256 = stor2
                sub_edac4a84[stor10 + 1].field_512 = stor3
                sub_edac4a84[stor10 + 1].field_768 = stor4
                sub_edac4a84[stor10 + 1].field_1024 = stor5
                if sub_ceeca984 == -1:
                    revert with 0, 17
                sub_ceeca984++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _260 = mem[(32 * idx) + 128]
            if 1 > !sub_ceeca984:
                revert with 0, 17
            _277 = mem[64]
            mem[64] = mem[64] + 160
            mem[_277] = sub_ceeca984 + 1
            mem[_277 + 32] = 0
            mem[_277 + 64] = stor6
            mem[_277 + 96] = _260
            mem[_277 + 128] = 0
            stor1 = sub_ceeca984 + 1
            stor2 = 0
            stor3 = stor6
            stor4 = _260
            stor5 = 0
            mem[0] = sub_ceeca984 + 1
            mem[32] = 20
            sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor10 + 1].field_256 = stor2
            sub_edac4a84[stor10 + 1].field_512 = stor3
            sub_edac4a84[stor10 + 1].field_768 = stor4
            sub_edac4a84[stor10 + 1].field_1024 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_84231261[stor13].field_768] = call.data[calldata.size len 32 * sub_84231261[stor13].field_768]
        idx = 0
        while idx < stor9:
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _137 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _139 = sha3(mem[_137 + 32 len mem[_137]])
            if not totalSupply:
                revert with 0, 18
            s = 1
            while s <= numContracts:
                mem[0] = s
                mem[32] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _139 % totalSupply > mem[_267]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[0] = s
                mem[32] = 15
                _290 = mem[64]
                mem[mem[64] + 32] = stor8
                mem[mem[64] + 64] = idx
                _291 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _293 = sha3(mem[_291 + 32 len mem[_291]])
                if not stor7:
                    revert with 0, 18
                mem[_290 + 100] = sha3(mem[_291 + 32 len mem[_291]]) % stor7
                require ext_code.size(stor15[s])
                staticcall stor15[s].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_293 % stor7)
                mem[_290 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_290 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(stor15[s])
                staticcall stor15[s].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_290 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _290 + (2 * ceil32(return_data.size)) + 256
                mem[_290 + (2 * ceil32(return_data.size)) + 96] = sub_ceeca984 + 1
                mem[_290 + (2 * ceil32(return_data.size)) + 128] = s
                mem[_290 + (2 * ceil32(return_data.size)) + 160] = stor6
                mem[_290 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                mem[_290 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                stor1 = sub_ceeca984 + 1
                stor2 = s
                stor3 = stor6
                stor4 = ext_call.return_data[0]
                stor5 = address(ext_call.return_data[0])
                mem[0] = sub_ceeca984 + 1
                mem[32] = 20
                sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
                sub_edac4a84[stor10 + 1].field_256 = stor2
                sub_edac4a84[stor10 + 1].field_512 = stor3
                sub_edac4a84[stor10 + 1].field_768 = stor4
                sub_edac4a84[stor10 + 1].field_1024 = stor5
                if sub_ceeca984 == -1:
                    revert with 0, 17
                sub_ceeca984++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _261 = mem[(32 * idx) + 128]
            if 1 > !sub_ceeca984:
                revert with 0, 17
            _280 = mem[64]
            mem[64] = mem[64] + 160
            mem[_280] = sub_ceeca984 + 1
            mem[_280 + 32] = 0
            mem[_280 + 64] = stor6
            mem[_280 + 96] = _261
            mem[_280 + 128] = 0
            stor1 = sub_ceeca984 + 1
            stor2 = 0
            stor3 = stor6
            stor4 = _261
            stor5 = 0
            mem[0] = sub_ceeca984 + 1
            mem[32] = 20
            sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor10 + 1].field_256 = stor2
            sub_edac4a84[stor10 + 1].field_512 = stor3
            sub_edac4a84[stor10 + 1].field_768 = stor4
            sub_edac4a84[stor10 + 1].field_1024 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor14.length = mem[96]
    if not mem[96]:
        idx = 0
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            stor14[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor17[stor6].field_0 = mem[96]
    mem[0] = sha3(stor6, 17)
    if not mem[96]:
        idx = 0
        while stor17[stor6].field_0 > idx:
            stor17[stor6][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            stor17[stor6][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor17[stor6].field_0 > idx:
            stor17[stor6][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_6a45453d(?) payable {
    if not stor18[msg.sender]:
        revert with 0, 'you are not admin!'
    stor6 = sub_84231261[stor13].field_0
    stor7 = sub_84231261[stor13].field_256
    stor8 = sub_84231261[stor13].field_512
    stor9 = sub_84231261[stor13].field_768
    if sub_84231261[stor13].field_768 > test266151307():
        revert with 0, 65
    mem[96] = sub_84231261[stor13].field_768
    if not sub_84231261[stor13].field_768:
        mem[0] = 1
        mem[32] = 15
        require ext_code.size(stor15[1])
        staticcall stor15[1].totalSupply() with:
                gas gas_remaining wei
        mem[(32 * sub_84231261[stor13].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_84231261[stor13].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _157 = mem[64]
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _161 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _163 = sha3(mem[_161 + 32 len mem[_161]])
            if not totalSupply:
                revert with 0, 18
            if numContracts > 1:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].totalSupply() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_311]:
                        revert with 0, 17
                    if _163 % totalSupply > t + mem[_311]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_311]
                        continue 
                    if t + mem[_311] < _163 % totalSupply:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_311] - (_163 % totalSupply)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _361 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args _361
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _380 = mem[_377]
                    require mem[_377] == mem[_377 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _384 = mem[(32 * idx) + 128]
                    if 1 > !sub_ceeca984:
                        revert with 0, 17
                    _386 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_386] = sub_ceeca984 + 1
                    mem[_386 + 32] = s
                    mem[_386 + 64] = stor6
                    mem[_386 + 96] = _384
                    mem[_386 + 128] = address(_380)
                    stor1 = sub_ceeca984 + 1
                    stor2 = s
                    stor3 = stor6
                    stor4 = _384
                    stor5 = address(_380)
                    mem[0] = sub_ceeca984 + 1
                    mem[32] = 20
                    sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
                    sub_edac4a84[stor10 + 1].field_256 = stor2
                    sub_edac4a84[stor10 + 1].field_512 = stor3
                    sub_edac4a84[stor10 + 1].field_768 = stor4
                    sub_edac4a84[stor10 + 1].field_1024 = stor5
                    if sub_ceeca984 == -1:
                        revert with 0, 17
                    sub_ceeca984++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _310 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                _327 = mem[64]
                mem[64] = mem[64] + 160
                mem[_327] = sub_ceeca984 + 1
                mem[_327 + 32] = 0
                mem[_327 + 64] = stor6
                mem[_327 + 96] = _310
                mem[_327 + 128] = 0
                stor1 = sub_ceeca984 + 1
                stor2 = 0
                stor3 = stor6
                stor4 = _310
                stor5 = 0
            else:
                mem[_157 + 128] = stor8
                mem[_157 + 160] = idx
                mem[_157 + 96] = 64
                if not stor7:
                    revert with 0, 18
                mem[_157 + 196] = sha3(stor8, idx) % stor7
                require ext_code.size(stor15[1])
                staticcall stor15[1].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(stor8, idx) % stor7)
                mem[_157 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_157 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(stor15[1])
                staticcall stor15[1].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_157 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _157 + (2 * ceil32(return_data.size)) + 352
                mem[_157 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_157 + (2 * ceil32(return_data.size)) + 224] = 1
                mem[_157 + (2 * ceil32(return_data.size)) + 256] = stor6
                mem[_157 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                mem[_157 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                stor1 = sub_ceeca984 + 1
                stor2 = 1
                stor3 = stor6
                stor4 = ext_call.return_data[0]
                stor5 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 20
            sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor10 + 1].field_256 = stor2
            sub_edac4a84[stor10 + 1].field_512 = stor3
            sub_edac4a84[stor10 + 1].field_768 = stor4
            sub_edac4a84[stor10 + 1].field_1024 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_84231261[stor13].field_768] = call.data[calldata.size len 32 * sub_84231261[stor13].field_768]
        mem[0] = 1
        mem[32] = 15
        require ext_code.size(stor15[1])
        staticcall stor15[1].totalSupply() with:
                gas gas_remaining wei
        mem[(32 * sub_84231261[stor13].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_84231261[stor13].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _159 = mem[64]
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _165 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _167 = sha3(mem[_165 + 32 len mem[_165]])
            if not totalSupply:
                revert with 0, 18
            if numContracts > 1:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].totalSupply() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_315]:
                        revert with 0, 17
                    if _167 % totalSupply > t + mem[_315]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_315]
                        continue 
                    if t + mem[_315] < _167 % totalSupply:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_315] - (_167 % totalSupply)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _366 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args _366
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _381 = mem[_379]
                    require mem[_379] == mem[_379 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _385 = mem[(32 * idx) + 128]
                    if 1 > !sub_ceeca984:
                        revert with 0, 17
                    _388 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_388] = sub_ceeca984 + 1
                    mem[_388 + 32] = s
                    mem[_388 + 64] = stor6
                    mem[_388 + 96] = _385
                    mem[_388 + 128] = address(_381)
                    stor1 = sub_ceeca984 + 1
                    stor2 = s
                    stor3 = stor6
                    stor4 = _385
                    stor5 = address(_381)
                    mem[0] = sub_ceeca984 + 1
                    mem[32] = 20
                    sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
                    sub_edac4a84[stor10 + 1].field_256 = stor2
                    sub_edac4a84[stor10 + 1].field_512 = stor3
                    sub_edac4a84[stor10 + 1].field_768 = stor4
                    sub_edac4a84[stor10 + 1].field_1024 = stor5
                    if sub_ceeca984 == -1:
                        revert with 0, 17
                    sub_ceeca984++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _314 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                _330 = mem[64]
                mem[64] = mem[64] + 160
                mem[_330] = sub_ceeca984 + 1
                mem[_330 + 32] = 0
                mem[_330 + 64] = stor6
                mem[_330 + 96] = _314
                mem[_330 + 128] = 0
                stor1 = sub_ceeca984 + 1
                stor2 = 0
                stor3 = stor6
                stor4 = _314
                stor5 = 0
            else:
                mem[_159 + 128] = stor8
                mem[_159 + 160] = idx
                mem[_159 + 96] = 64
                if not stor7:
                    revert with 0, 18
                mem[_159 + 196] = sha3(stor8, idx) % stor7
                require ext_code.size(stor15[1])
                staticcall stor15[1].tokenByIndex(uint256 arg1) with:
                        gas gas_remaining wei
                       args (sha3(stor8, idx) % stor7)
                mem[_159 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_159 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(stor15[1])
                staticcall stor15[1].ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_159 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _159 + (2 * ceil32(return_data.size)) + 352
                mem[_159 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_159 + (2 * ceil32(return_data.size)) + 224] = 1
                mem[_159 + (2 * ceil32(return_data.size)) + 256] = stor6
                mem[_159 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                mem[_159 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                stor1 = sub_ceeca984 + 1
                stor2 = 1
                stor3 = stor6
                stor4 = ext_call.return_data[0]
                stor5 = address(ext_call.return_data[0])
            mem[0] = sub_ceeca984 + 1
            mem[32] = 20
            sub_edac4a84[stor10 + 1].field_0 = sub_ceeca984 + 1
            sub_edac4a84[stor10 + 1].field_256 = stor2
            sub_edac4a84[stor10 + 1].field_512 = stor3
            sub_edac4a84[stor10 + 1].field_768 = stor4
            sub_edac4a84[stor10 + 1].field_1024 = stor5
            if sub_ceeca984 == -1:
                revert with 0, 17
            sub_ceeca984++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor14.length = mem[96]
    if not mem[96]:
        idx = 0
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            stor14[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor17[stor6].field_0 = mem[96]
    mem[0] = sha3(stor6, 17)
    if not mem[96]:
        idx = 0
        while stor17[stor6].field_0 > idx:
            stor17[stor6][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            stor17[stor6][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor17[stor6].field_0 > idx:
            stor17[stor6][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
