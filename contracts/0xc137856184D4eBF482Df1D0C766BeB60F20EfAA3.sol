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
address storFE16;

function sub_84231261(?) {
    require calldata.size - 4 >= 32
    return sub_84231261[arg1].field_0, sub_84231261[arg1].field_256, sub_84231261[arg1].field_512, sub_84231261[arg1].field_768
}

function owner() {
    return owner
}

function getTotalSupply() {
    return totalSupply
}

function sub_ceeca984(?) {
    return sub_ceeca984
}

function getNumContracts() {
    return numContracts
}

function sub_edac4a84(?) {
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_eee57bb9(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[arg1] = address(arg2)
}

function sub_4067f75d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor18[address(arg1)]:
        revert with 0, 'address already added'
    stor18[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_120496ec(?) {
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

function sub_0f8dd5c9(?) {
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

function sub_515fe1b2(?) {
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

function sub_806d2c37(?) {
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
        staticcall stor15[idx].0x18160ddd with:
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

function sub_22bfcb96(?) {
    require calldata.size - 4 >= 96
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    if not arg2:
        mem[32] = 15
        mem[0] = 1
        require ext_code.size(storFE16)
        staticcall storFE16.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _94 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _97 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _99 = sha3(mem[_97 + 32 len mem[_97]])
            if not arg3:
                revert with 0, 18
            if sha3(mem[_97 + 32 len mem[_97]]) % arg3 >= ext_call.return_data[0]:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_184]:
                        revert with 0, 17
                    if _99 % arg3 > t + mem[_184]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_184]
                        continue 
                    if t + mem[_184] < _99 % arg3:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_184] - (_99 % arg3)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _194 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x6352211e with:
                            gas gas_remaining wei
                           args _194
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_200] == mem[_200 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[_94 + 128] = arg1
                mem[_94 + 160] = idx
                mem[_94 + 96] = 64
                if not arg3:
                    revert with 0, 18
                mem[_94 + 196] = sha3(arg1, idx) % arg3
                require ext_code.size(storFE16)
                staticcall storFE16.0x4f6ccce7 with:
                        gas gas_remaining wei
                       args (sha3(arg1, idx) % arg3)
                mem[_94 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                mem[32] = 15
                mem[0] = 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_94 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFE16)
                staticcall storFE16.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_94 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _94 + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        mem[32] = 15
        mem[0] = 1
        require ext_code.size(storFE16)
        staticcall storFE16.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _95 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _101 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _103 = sha3(mem[_101 + 32 len mem[_101]])
            if not arg3:
                revert with 0, 18
            if sha3(mem[_101 + 32 len mem[_101]]) % arg3 >= ext_call.return_data[0]:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_185]:
                        revert with 0, 17
                    if _103 % arg3 > t + mem[_185]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_185]
                        continue 
                    if t + mem[_185] < _103 % arg3:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_185] - (_103 % arg3)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _196 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x6352211e with:
                            gas gas_remaining wei
                           args _196
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_201] == mem[_201 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[_95 + 128] = arg1
                mem[_95 + 160] = idx
                mem[_95 + 96] = 64
                if not arg3:
                    revert with 0, 18
                mem[_95 + 196] = sha3(arg1, idx) % arg3
                require ext_code.size(storFE16)
                staticcall storFE16.0x4f6ccce7 with:
                        gas gas_remaining wei
                       args (sha3(arg1, idx) % arg3)
                mem[_95 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                mem[32] = 15
                mem[0] = 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_95 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFE16)
                staticcall storFE16.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_95 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _95 + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_30a27228(?) {
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
        mem[32] = 15
        mem[0] = 1
        require ext_code.size(storFE16)
        staticcall storFE16.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * sub_84231261[stor13].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_84231261[stor13].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _169 = mem[64]
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _173 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _175 = sha3(mem[_173 + 32 len mem[_173]])
            if not totalSupply:
                revert with 0, 18
            if sha3(mem[_173 + 32 len mem[_173]]) % totalSupply >= ext_call.return_data[0]:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_331]:
                        revert with 0, 17
                    if _175 % totalSupply >= t + mem[_331]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_331]
                        continue 
                    if t + mem[_331] < _175 % totalSupply:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_331] - (_175 % totalSupply)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _374 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x6352211e with:
                            gas gas_remaining wei
                           args _374
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _399 = mem[_393]
                    require mem[_393] == mem[_393 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _404 = mem[(32 * idx) + 128]
                    if 1 > !sub_ceeca984:
                        revert with 0, 17
                    _406 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_406] = sub_ceeca984 + 1
                    mem[_406 + 32] = s
                    mem[_406 + 64] = stor6
                    mem[_406 + 96] = _404
                    mem[_406 + 128] = address(_399)
                    stor1 = sub_ceeca984 + 1
                    stor2 = s
                    stor3 = stor6
                    stor4 = _404
                    stor5 = address(_399)
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
                _330 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                _346 = mem[64]
                mem[64] = mem[64] + 160
                mem[_346] = sub_ceeca984 + 1
                mem[_346 + 32] = 0
                mem[_346 + 64] = stor6
                mem[_346 + 96] = _330
                mem[_346 + 128] = 0
                stor1 = sub_ceeca984 + 1
                stor2 = 0
                stor3 = stor6
                stor4 = _330
                stor5 = 0
            else:
                mem[_169 + 128] = stor8
                mem[_169 + 160] = idx
                mem[_169 + 96] = 64
                if not stor7:
                    revert with 0, 18
                mem[_169 + 196] = sha3(stor8, idx) % stor7
                require ext_code.size(storFE16)
                staticcall storFE16.0x4f6ccce7 with:
                        gas gas_remaining wei
                       args (sha3(stor8, idx) % stor7)
                mem[_169 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_169 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFE16)
                staticcall storFE16.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_169 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _169 + (2 * ceil32(return_data.size)) + 352
                mem[_169 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_169 + (2 * ceil32(return_data.size)) + 224] = 1
                mem[_169 + (2 * ceil32(return_data.size)) + 256] = stor6
                mem[_169 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                mem[_169 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
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
        mem[32] = 15
        mem[0] = 1
        require ext_code.size(storFE16)
        staticcall storFE16.0x18160ddd with:
                gas gas_remaining wei
        mem[(32 * sub_84231261[stor13].field_768) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * sub_84231261[stor13].field_768) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < stor9:
            _171 = mem[64]
            mem[mem[64] + 32] = stor8
            mem[mem[64] + 64] = idx
            _177 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _179 = sha3(mem[_177 + 32 len mem[_177]])
            if not totalSupply:
                revert with 0, 18
            if sha3(mem[_177 + 32 len mem[_177]]) % totalSupply >= ext_call.return_data[0]:
                s = 2
                t = ext_call.return_data[0]
                while s <= numContracts:
                    mem[0] = s
                    mem[32] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_335]:
                        revert with 0, 17
                    if _179 % totalSupply >= t + mem[_335]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_335]
                        continue 
                    if t + mem[_335] < _179 % totalSupply:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = t + mem[_335] - (_179 % totalSupply)
                    mem[0] = s
                    mem[32] = 15
                    if idx >= mem[96]:
                        revert with 0, 50
                    _378 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].0x6352211e with:
                            gas gas_remaining wei
                           args _378
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _395 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _401 = mem[_395]
                    require mem[_395] == mem[_395 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _405 = mem[(32 * idx) + 128]
                    if 1 > !sub_ceeca984:
                        revert with 0, 17
                    _408 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_408] = sub_ceeca984 + 1
                    mem[_408 + 32] = s
                    mem[_408 + 64] = stor6
                    mem[_408 + 96] = _405
                    mem[_408 + 128] = address(_401)
                    stor1 = sub_ceeca984 + 1
                    stor2 = s
                    stor3 = stor6
                    stor4 = _405
                    stor5 = address(_401)
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
                _334 = mem[(32 * idx) + 128]
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                _350 = mem[64]
                mem[64] = mem[64] + 160
                mem[_350] = sub_ceeca984 + 1
                mem[_350 + 32] = 0
                mem[_350 + 64] = stor6
                mem[_350 + 96] = _334
                mem[_350 + 128] = 0
                stor1 = sub_ceeca984 + 1
                stor2 = 0
                stor3 = stor6
                stor4 = _334
                stor5 = 0
            else:
                mem[_171 + 128] = stor8
                mem[_171 + 160] = idx
                mem[_171 + 96] = 64
                if not stor7:
                    revert with 0, 18
                mem[_171 + 196] = sha3(stor8, idx) % stor7
                require ext_code.size(storFE16)
                staticcall storFE16.0x4f6ccce7 with:
                        gas gas_remaining wei
                       args (sha3(stor8, idx) % stor7)
                mem[_171 + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_171 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                require ext_code.size(storFE16)
                staticcall storFE16.0x6352211e with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[_171 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 > !sub_ceeca984:
                    revert with 0, 17
                mem[64] = _171 + (2 * ceil32(return_data.size)) + 352
                mem[_171 + (2 * ceil32(return_data.size)) + 192] = sub_ceeca984 + 1
                mem[_171 + (2 * ceil32(return_data.size)) + 224] = 1
                mem[_171 + (2 * ceil32(return_data.size)) + 256] = stor6
                mem[_171 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                mem[_171 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
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
