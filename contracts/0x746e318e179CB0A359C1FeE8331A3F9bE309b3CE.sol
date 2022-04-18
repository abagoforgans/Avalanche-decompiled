contract main {




// =====================  Runtime code  =====================


const name = 'DSA-Resolver-v1', 0

const version = 1


address indexAddress;
address listAddress;
address connectorsAddress;
address stor4;
address stor5;
array of address gnosisFactoryContracts;

function list() payable {
    return listAddress
}

function index() payable {
    return indexAddress
}

function connectors() payable {
    return connectorsAddress
}

function gnosisFactoryContracts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < gnosisFactoryContracts.length
    return gnosisFactoryContracts[arg1]
}

function _fallback() payable {
    revert
}

function isShield(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.sheild() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getAccount(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.0x60330d79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getID(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.accountID(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    return ext_call.return_data[24 len 8]
}

function getContractCode(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 97] = 32
    mem[ceil32(ext_code.size(arg1)) + 129] = ext_code.size(arg1)
    mem[ceil32(ext_code.size(arg1)) + 161 len ceil32(ext_code.size(arg1))] = mem[128 len ceil32(ext_code.size(arg1))]
    if ceil32(ext_code.size(arg1)) > ext_code.size(arg1):
        mem[ceil32(ext_code.size(arg1)) + ext_code.size(arg1) + 161] = 0
    return memory
      from ceil32(ext_code.size(arg1)) + 97
       len ceil32(ext_code.size(arg1)) + 64
}

function getAccountVersions(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x54fd4d50 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_66] == mem[_66]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_66]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _68 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 64 len 32 * _68] = mem[(32 * arg1.length) + 160 len 32 * _68]
        return 32, mem[mem[64] + 32 len (32 * _68) + 32]
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[12895 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x54fd4d50 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] == mem[_67]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_67]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _69 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len 32 * _69] = mem[(32 * arg1.length) + 160 len 32 * _69]
    return 32, mem[mem[64] + 32 len (32 * _69) + 32]
}

function getStaticConnectors() payable {
    require ext_code.size(stor5)
    staticcall stor5.staticConnectorLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0xf2e18049 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_32] == mem[_32 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_32 + 12 len 20]
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _28:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _26 + (32 * _28) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = code.data[12895 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor5)
        staticcall stor5.0xf2e18049 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_33 + 12 len 20]
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _29 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _29:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _27 + (32 * _29) + -mem[64] + 64
}

function getAuthorityIDs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(stor4)
    staticcall stor4.0xf227a99f with:
            gas gas_remaining wei
           args arg1
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[56 len 8]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[88 len 8]
    mem[64] = ceil32(return_data.size) + (32 * uint64(ext_call.return_data[64])) + 320
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[ceil32(return_data.size) + 192]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[ceil32(return_data.size) + 288]
            mem[(32 * idx) + ceil32(return_data.size) + 320] = uint64(s)
            _47 = mem[64]
            mem[64] = mem[64] + 64
            mem[_47] = 0
            mem[_47 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _61 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_59] == mem[_59 + 24 len 8]
            mem[_61] = mem[_59]
            require mem[_59 + 32] == mem[_59 + 56 len 8]
            mem[_61 + 32] = mem[_59 + 32]
            idx = idx + 1
            s = mem[_61 + 32]
            continue 
        _45 = mem[64]
        mem[mem[64]] = 32
        _51 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 288]
        idx = 0
        s = ceil32(return_data.size) + 320
        t = mem[64] + 64
        while idx < _51:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _45 + (32 * _51) + -mem[64] + 64
    mem[ceil32(return_data.size) + 320 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[ceil32(return_data.size) + 192]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[ceil32(return_data.size) + 288]
        mem[(32 * idx) + ceil32(return_data.size) + 320] = uint64(s)
        _48 = mem[64]
        mem[64] = mem[64] + 64
        mem[_48] = 0
        mem[_48 + 32] = 0
        mem[mem[64] + 36] = uint64(s)
        require ext_code.size(stor4)
        staticcall stor4.0x748e6e18 with:
                gas gas_remaining wei
               args address(arg1), uint64(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _62 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_60] == mem[_60 + 24 len 8]
        mem[_62] = mem[_60]
        require mem[_60 + 32] == mem[_60 + 56 len 8]
        mem[_62 + 32] = mem[_60 + 32]
        idx = idx + 1
        s = mem[_62 + 32]
        continue 
    _46 = mem[64]
    mem[mem[64]] = 32
    _52 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 288]
    idx = 0
    s = ceil32(return_data.size) + 320
    t = mem[64] + 64
    while idx < _52:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _46 + (32 * _52) + -mem[64] + 64
}

function getIDAuthorities(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(stor4)
    staticcall stor4.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(arg1)
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[88 len 8]
    mem[64] = ceil32(return_data.size) + (32 * uint64(ext_call.return_data[64])) + 320
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[ceil32(return_data.size) + 192]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[ceil32(return_data.size) + 288]
            mem[(32 * idx) + ceil32(return_data.size) + 320] = address(s)
            _47 = mem[64]
            mem[64] = mem[64] + 64
            mem[_47] = 0
            mem[_47 + 32] = 0
            mem[mem[64] + 36] = address(s)
            require ext_code.size(stor4)
            staticcall stor4.0x5f3c37f9 with:
                    gas gas_remaining wei
                   args arg1 << 192, address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _61 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_59] == mem[_59 + 12 len 20]
            mem[_61] = mem[_59]
            require mem[_59 + 32] == mem[_59 + 44 len 20]
            mem[_61 + 32] = mem[_59 + 32]
            idx = idx + 1
            s = mem[_61 + 32]
            continue 
        _45 = mem[64]
        mem[mem[64]] = 32
        _51 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 288]
        idx = 0
        s = ceil32(return_data.size) + 320
        t = mem[64] + 64
        while idx < _51:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _45 + (32 * _51) + -mem[64] + 64
    mem[ceil32(return_data.size) + 320 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[ceil32(return_data.size) + 192]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[ceil32(return_data.size) + 288]
        mem[(32 * idx) + ceil32(return_data.size) + 320] = address(s)
        _48 = mem[64]
        mem[64] = mem[64] + 64
        mem[_48] = 0
        mem[_48 + 32] = 0
        mem[mem[64] + 36] = address(s)
        require ext_code.size(stor4)
        staticcall stor4.0x5f3c37f9 with:
                gas gas_remaining wei
               args arg1 << 192, address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _62 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_60] == mem[_60 + 12 len 20]
        mem[_62] = mem[_60]
        require mem[_60 + 32] == mem[_60 + 44 len 20]
        mem[_62 + 32] = mem[_60 + 32]
        idx = idx + 1
        s = mem[_62 + 32]
        continue 
    _46 = mem[64]
    mem[mem[64]] = 32
    _52 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 288]
    idx = 0
    s = ceil32(return_data.size) + 320
    t = mem[64] + 64
    while idx < _52:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _46 + (32 * _52) + -mem[64] + 64
}

function getAccountAuthorities(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.accountID(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    require ext_code.size(stor4)
    staticcall stor4.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((2 * ceil32(return_data.size)) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[88 len 8]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * uint64(ext_call.return_data[64])) + 320
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[(2 * ceil32(return_data.size)) + 192]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320] = address(s)
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = 0
            mem[_50 + 32] = 0
            mem[mem[64] + 36] = address(s)
            require ext_code.size(stor4)
            staticcall stor4.0x5f3c37f9 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 192, address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _65 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_63] == mem[_63 + 12 len 20]
            mem[_65] = mem[_63]
            require mem[_63 + 32] == mem[_63 + 44 len 20]
            mem[_65 + 32] = mem[_63 + 32]
            idx = idx + 1
            s = mem[_65 + 32]
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _55 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 288]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 320
        t = mem[64] + 64
        while idx < _55:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _49 + (32 * _55) + -mem[64] + 64
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[(2 * ceil32(return_data.size)) + 192]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[(2 * ceil32(return_data.size)) + 288]
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320] = address(s)
        _52 = mem[64]
        mem[64] = mem[64] + 64
        mem[_52] = 0
        mem[_52 + 32] = 0
        mem[mem[64] + 36] = address(s)
        require ext_code.size(stor4)
        staticcall stor4.0x5f3c37f9 with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 192, address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _66 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_64] == mem[_64 + 12 len 20]
        mem[_66] = mem[_64]
        require mem[_64 + 32] == mem[_64 + 44 len 20]
        mem[_66 + 32] = mem[_64 + 32]
        idx = idx + 1
        s = mem[_66 + 32]
        continue 
    _51 = mem[64]
    mem[mem[64]] = 32
    _56 = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 288]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 320
    t = mem[64] + 64
    while idx < _56:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _51 + (32 * _56) + -mem[64] + 64
}

function getEnabledConnectors() payable {
    require ext_code.size(stor5)
    staticcall stor5.connectorCount() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(stor5)
        staticcall stor5.connectorLength() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0x867fa45 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _51 = mem[_48]
            require mem[_48] == mem[_48 + 12 len 20]
            mem[mem[64] + 4] = mem[_48 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.connectors(address rg1) with:
                    gas gas_remaining wei
                   args address(_51)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == bool(mem[_60])
            if not mem[_60]:
                idx = idx + 1
                s = s
                continue 
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = address(_51)
            idx = idx + 1
            s = s + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _44:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _42 + (32 * _44) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = code.data[12895 len 32 * ext_call.return_data[0]]
    require ext_code.size(stor5)
    staticcall stor5.connectorLength() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor5)
        staticcall stor5.0x867fa45 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _53 = mem[_49]
        require mem[_49] == mem[_49 + 12 len 20]
        mem[mem[64] + 4] = mem[_49 + 12 len 20]
        require ext_code.size(stor5)
        staticcall stor5.connectors(address rg1) with:
                gas gas_remaining wei
               args address(_53)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == bool(mem[_61])
        if not mem[_61]:
            idx = idx + 1
            s = s
            continue 
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = address(_53)
        idx = idx + 1
        s = s + 1
        continue 
    _43 = mem[64]
    mem[mem[64]] = 32
    _45 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _45:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _43 + (32 * _45) + -mem[64] + 64
}

function getAccountDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[228] = arg1
    require ext_code.size(stor4)
    staticcall stor4.accountID(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 256] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x54fd4d50 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 352] = 0
    mem[(2 * ceil32(return_data.size)) + 384] = 0
    mem[(2 * ceil32(return_data.size)) + 416] = 0
    require ext_code.size(stor4)
    staticcall stor4.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 448 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((4 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(4 * ceil32(return_data.size)) + 512] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[88 len 8]
    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint64(ext_call.return_data[64])) + 576
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[(4 * ceil32(return_data.size)) + 448]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[(4 * ceil32(return_data.size)) + 544]
            mem[(32 * idx) + (4 * ceil32(return_data.size)) + 576] = address(s)
            _64 = mem[64]
            mem[64] = mem[64] + 64
            mem[_64] = 0
            mem[_64 + 32] = 0
            mem[mem[64] + 36] = address(s)
            require ext_code.size(stor4)
            staticcall stor4.0x5f3c37f9 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 192, address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _83 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_77] == mem[_77 + 12 len 20]
            mem[_83] = mem[_77]
            require mem[_77 + 32] == mem[_77 + 44 len 20]
            mem[_83 + 32] = mem[_77 + 32]
            idx = idx + 1
            s = mem[_83 + 32]
            continue 
        mem[ceil32(return_data.size) + 320] = (4 * ceil32(return_data.size)) + 544
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 268 len 20]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 128] = 128
        _81 = mem[(4 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 160] = mem[(4 * ceil32(return_data.size)) + 544]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 576
        t = mem[64] + 192
        while idx < _81:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, mem[mem[64] + 32 len 96], 128, mem[mem[64] + 160 len (32 * _81) + 32]
    mem[(4 * ceil32(return_data.size)) + 576 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[(4 * ceil32(return_data.size)) + 448]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[(4 * ceil32(return_data.size)) + 544]
        mem[(32 * idx) + (4 * ceil32(return_data.size)) + 576] = address(s)
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = 0
        mem[_66 + 32] = 0
        mem[mem[64] + 36] = address(s)
        require ext_code.size(stor4)
        staticcall stor4.0x5f3c37f9 with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 192, address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _84 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_78] == mem[_78 + 12 len 20]
        mem[_84] = mem[_78]
        require mem[_78 + 32] == mem[_78 + 44 len 20]
        mem[_84 + 32] = mem[_78 + 32]
        idx = idx + 1
        s = mem[_84 + 32]
        continue 
    mem[ceil32(return_data.size) + 320] = (4 * ceil32(return_data.size)) + 544
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 268 len 20]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 128] = 128
    _82 = mem[(4 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 160] = mem[(4 * ceil32(return_data.size)) + 544]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 576
    t = mem[64] + 192
    while idx < _82:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, mem[mem[64] + 32 len 96], 128, mem[mem[64] + 160 len (32 * _82) + 32]
}

function getAccountIdDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[228] = uint64(arg1)
    require ext_code.size(stor4)
    staticcall stor4.0x60330d79 with:
            gas gas_remaining wei
           args uint64(arg1)
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 224] = arg1
    mem[ceil32(return_data.size) + 256] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x54fd4d50 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 352] = 0
    mem[(2 * ceil32(return_data.size)) + 384] = 0
    mem[(2 * ceil32(return_data.size)) + 416] = 0
    require ext_code.size(stor4)
    staticcall stor4.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(arg1)
    mem[(2 * ceil32(return_data.size)) + 448 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((4 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(4 * ceil32(return_data.size)) + 512] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[88 len 8]
    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint64(ext_call.return_data[64])) + 576
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[(4 * ceil32(return_data.size)) + 448]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[(4 * ceil32(return_data.size)) + 544]
            mem[(32 * idx) + (4 * ceil32(return_data.size)) + 576] = address(s)
            _64 = mem[64]
            mem[64] = mem[64] + 64
            mem[_64] = 0
            mem[_64 + 32] = 0
            mem[mem[64] + 36] = address(s)
            require ext_code.size(stor4)
            staticcall stor4.0x5f3c37f9 with:
                    gas gas_remaining wei
                   args arg1 << 192, address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _83 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_77] == mem[_77 + 12 len 20]
            mem[_83] = mem[_77]
            require mem[_77 + 32] == mem[_77 + 44 len 20]
            mem[_83 + 32] = mem[_77 + 32]
            idx = idx + 1
            s = mem[_83 + 32]
            continue 
        mem[ceil32(return_data.size) + 320] = (4 * ceil32(return_data.size)) + 544
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 268 len 20]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 128] = 128
        _81 = mem[(4 * ceil32(return_data.size)) + 544]
        mem[mem[64] + 160] = mem[(4 * ceil32(return_data.size)) + 544]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 576
        t = mem[64] + 192
        while idx < _81:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, mem[mem[64] + 32 len 96], 128, mem[mem[64] + 160 len (32 * _81) + 32]
    mem[(4 * ceil32(return_data.size)) + 576 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[(4 * ceil32(return_data.size)) + 448]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[(4 * ceil32(return_data.size)) + 544]
        mem[(32 * idx) + (4 * ceil32(return_data.size)) + 576] = address(s)
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = 0
        mem[_66 + 32] = 0
        mem[mem[64] + 36] = address(s)
        require ext_code.size(stor4)
        staticcall stor4.0x5f3c37f9 with:
                gas gas_remaining wei
               args arg1 << 192, address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _84 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_78] == mem[_78 + 12 len 20]
        mem[_84] = mem[_78]
        require mem[_78 + 32] == mem[_78 + 44 len 20]
        mem[_84 + 32] = mem[_78 + 32]
        idx = idx + 1
        s = mem[_84 + 32]
        continue 
    mem[ceil32(return_data.size) + 320] = (4 * ceil32(return_data.size)) + 544
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 268 len 20]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 128] = 128
    _82 = mem[(4 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 160] = mem[(4 * ceil32(return_data.size)) + 544]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 576
    t = mem[64] + 192
    while idx < _82:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, mem[mem[64] + 32 len 96], 128, mem[mem[64] + 160 len (32 * _82) + 32]
}

function getStaticConnectorsData() payable {
    require ext_code.size(stor5)
    staticcall stor5.staticConnectorLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0xf2e18049 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_60]
            require mem[_60] == mem[_60 + 12 len 20]
            _73 = mem[64]
            mem[64] = mem[64] + 96
            mem[_73] = address(_63)
            mem[_73 + 32] = idx + 1
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_63))
            staticcall address(_63).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_76]
            require mem[_76] <= test266151307()
            require _76 + mem[_76] + 31 < _76 + return_data.size
            _84 = mem[_76 + mem[_76]]
            require mem[_76 + mem[_76]] <= test266151307()
            require _76 + ceil32(return_data.size) + ceil32(mem[_76 + mem[_76]]) + 32 <= test266151307() and ceil32(mem[_76 + mem[_76]]) + 32 >= 0
            mem[64] = _76 + ceil32(return_data.size) + ceil32(mem[_76 + mem[_76]]) + 32
            mem[_76 + ceil32(return_data.size)] = _84
            require _78 + _84 + 32 <= return_data.size
            s = 0
            while s < _84:
                mem[_76 + ceil32(return_data.size) + s + 32] = mem[_76 + _78 + s + 32]
                s = s + 32
                continue 
            if ceil32(_84) > _84:
                mem[_76 + ceil32(return_data.size) + _84 + 32] = 0
            mem[_73 + 64] = _76 + ceil32(return_data.size)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _73
            idx = idx + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _56 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _56) + 64
        u = mem[64] + 64
        while idx < _56:
            mem[u] = t + -_55 - 64
            _101 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_101 + 32]
            _112 = mem[_101 + 64]
            mem[t + 64] = 96
            _114 = mem[_112]
            mem[t + 96] = mem[_112]
            v = 0
            while v < _114:
                mem[t + v + 128] = mem[_112 + v + 32]
                v = v + 32
                continue 
            if ceil32(_114) > _114:
                mem[t + _114 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_114) + 128
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
        mem[var19001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0xf2e18049 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _141 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            _145 = mem[64]
            mem[64] = mem[64] + 96
            mem[_145] = address(_141)
            mem[_145 + 32] = idx + 1
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_141))
            staticcall address(_141).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_148]
            require mem[_148] <= test266151307()
            require _148 + mem[_148] + 31 < _148 + return_data.size
            _152 = mem[_148 + mem[_148]]
            require mem[_148 + mem[_148]] <= test266151307()
            require _148 + ceil32(return_data.size) + ceil32(mem[_148 + mem[_148]]) + 32 <= test266151307() and ceil32(mem[_148 + mem[_148]]) + 32 >= 0
            mem[64] = _148 + ceil32(return_data.size) + ceil32(mem[_148 + mem[_148]]) + 32
            mem[_148 + ceil32(return_data.size)] = _152
            require _150 + _152 + 32 <= return_data.size
            s = 0
            while s < _152:
                mem[_148 + ceil32(return_data.size) + s + 32] = mem[_148 + _150 + s + 32]
                s = s + 32
                continue 
            if ceil32(_152) > _152:
                mem[_148 + ceil32(return_data.size) + _152 + 32] = 0
            mem[_145 + 64] = _148 + ceil32(return_data.size)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _145
            idx = idx + 1
            continue 
        _136 = mem[64]
        mem[mem[64]] = 32
        _137 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _137) + 64
        u = mem[64] + 64
        while idx < _137:
            mem[u] = t + -_136 - 64
            _158 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_158 + 32]
            _165 = mem[_158 + 64]
            mem[t + 64] = 96
            _166 = mem[_165]
            mem[t + 96] = mem[_165]
            v = 0
            while v < _166:
                mem[t + v + 128] = mem[_165 + v + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_166) + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getAuthorityAccounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(stor4)
    staticcall stor4.0xf227a99f with:
            gas gas_remaining wei
           args arg1
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[56 len 8]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[88 len 8]
    mem[64] = ceil32(return_data.size) + (32 * uint64(ext_call.return_data[64])) + 320
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[ceil32(return_data.size) + 192]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[ceil32(return_data.size) + 288]
            mem[(32 * idx) + ceil32(return_data.size) + 320] = uint64(s)
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 0
            mem[_93 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _145 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_137] == mem[_137 + 24 len 8]
            mem[_145] = mem[_137]
            require mem[_137 + 32] == mem[_137 + 56 len 8]
            mem[_145 + 32] = mem[_137 + 32]
            idx = idx + 1
            s = mem[_145 + 32]
            continue 
        _89 = mem[ceil32(return_data.size) + 288]
        _90 = mem[64]
        mem[mem[64]] = mem[ceil32(return_data.size) + 288]
        mem[64] = mem[64] + (32 * _89) + 32
        if not _89:
            _157 = mem[ceil32(return_data.size) + 288]
            idx = 0
            while idx < _157:
                require idx < mem[ceil32(return_data.size) + 288]
                _166 = mem[(32 * idx) + ceil32(return_data.size) + 320]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 344 len 8]
                require ext_code.size(stor4)
                staticcall stor4.0x60330d79 with:
                        gas gas_remaining wei
                       args (_166 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_185] == mem[_185 + 12 len 20]
                require idx < mem[_90]
                mem[(32 * idx) + _90 + 32] = mem[_185 + 12 len 20]
                _157 = mem[ceil32(return_data.size) + 288]
                idx = idx + 1
                continue 
            _165 = mem[64]
            mem[mem[64]] = 32
            _177 = mem[_90]
            mem[mem[64] + 32] = mem[_90]
            idx = 0
            s = _90 + 32
            t = mem[64] + 64
            while idx < _177:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _165 + (32 * _177) + -mem[64] + 64
        mem[_90 + 32 len 32 * _89] = code.data[12895 len 32 * _89]
        _158 = mem[ceil32(return_data.size) + 288]
        idx = 0
        while idx < _158:
            require idx < mem[ceil32(return_data.size) + 288]
            _168 = mem[(32 * idx) + ceil32(return_data.size) + 320]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 344 len 8]
            require ext_code.size(stor4)
            staticcall stor4.0x60330d79 with:
                    gas gas_remaining wei
                   args (_168 << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_186] == mem[_186 + 12 len 20]
            require idx < mem[_90]
            mem[(32 * idx) + _90 + 32] = mem[_186 + 12 len 20]
            _158 = mem[ceil32(return_data.size) + 288]
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = 32
        _178 = mem[_90]
        mem[mem[64] + 32] = mem[_90]
        idx = 0
        s = _90 + 32
        t = mem[64] + 64
        while idx < _178:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _167 + (32 * _178) + -mem[64] + 64
    mem[ceil32(return_data.size) + 320 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[ceil32(return_data.size) + 192]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[ceil32(return_data.size) + 288]
        mem[(32 * idx) + ceil32(return_data.size) + 320] = uint64(s)
        _94 = mem[64]
        mem[64] = mem[64] + 64
        mem[_94] = 0
        mem[_94 + 32] = 0
        mem[mem[64] + 36] = uint64(s)
        require ext_code.size(stor4)
        staticcall stor4.0x748e6e18 with:
                gas gas_remaining wei
               args address(arg1), uint64(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _146 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_140] == mem[_140 + 24 len 8]
        mem[_146] = mem[_140]
        require mem[_140 + 32] == mem[_140 + 56 len 8]
        mem[_146 + 32] = mem[_140 + 32]
        idx = idx + 1
        s = mem[_146 + 32]
        continue 
    _91 = mem[ceil32(return_data.size) + 288]
    _92 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 288]
    mem[64] = mem[64] + (32 * _91) + 32
    if not _91:
        _159 = mem[ceil32(return_data.size) + 288]
        idx = 0
        while idx < _159:
            require idx < mem[ceil32(return_data.size) + 288]
            _170 = mem[(32 * idx) + ceil32(return_data.size) + 320]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 344 len 8]
            require ext_code.size(stor4)
            staticcall stor4.0x60330d79 with:
                    gas gas_remaining wei
                   args (_170 << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_187] == mem[_187 + 12 len 20]
            require idx < mem[_92]
            mem[(32 * idx) + _92 + 32] = mem[_187 + 12 len 20]
            _159 = mem[ceil32(return_data.size) + 288]
            idx = idx + 1
            continue 
        _169 = mem[64]
        mem[mem[64]] = 32
        _179 = mem[_92]
        mem[mem[64] + 32] = mem[_92]
        idx = 0
        s = _92 + 32
        t = mem[64] + 64
        while idx < _179:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _169 + (32 * _179) + -mem[64] + 64
    mem[_92 + 32 len 32 * _91] = code.data[12895 len 32 * _91]
    _160 = mem[ceil32(return_data.size) + 288]
    idx = 0
    while idx < _160:
        require idx < mem[ceil32(return_data.size) + 288]
        _172 = mem[(32 * idx) + ceil32(return_data.size) + 320]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 344 len 8]
        require ext_code.size(stor4)
        staticcall stor4.0x60330d79 with:
                gas gas_remaining wei
               args (_172 << 192)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 12 len 20]
        require idx < mem[_92]
        mem[(32 * idx) + _92 + 32] = mem[_188 + 12 len 20]
        _160 = mem[ceil32(return_data.size) + 288]
        idx = idx + 1
        continue 
    _171 = mem[64]
    mem[mem[64]] = 32
    _180 = mem[_92]
    mem[mem[64] + 32] = mem[_92]
    idx = 0
    s = _92 + 32
    t = mem[64] + 64
    while idx < _180:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _171 + (32 * _180) + -mem[64] + 64
}

function getEnabledConnectorsData() payable {
    require ext_code.size(stor5)
    staticcall stor5.connectorCount() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(stor5)
        staticcall stor5.connectorLength() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0x867fa45 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _80 = mem[_77]
            require mem[_77] == mem[_77 + 12 len 20]
            mem[mem[64] + 4] = mem[_77 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.connectors(address rg1) with:
                    gas gas_remaining wei
                   args address(_80)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == bool(mem[_95])
            if not mem[_95]:
                idx = idx + 1
                s = s
                continue 
            _103 = mem[64]
            mem[64] = mem[64] + 96
            mem[_103] = address(_80)
            mem[_103 + 32] = idx + 1
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_80))
            staticcall address(_80).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_107]
            require mem[_107] <= test266151307()
            require _107 + mem[_107] + 31 < _107 + return_data.size
            _111 = mem[_107 + mem[_107]]
            require mem[_107 + mem[_107]] <= test266151307()
            require _107 + ceil32(return_data.size) + ceil32(mem[_107 + mem[_107]]) + 32 <= test266151307() and ceil32(mem[_107 + mem[_107]]) + 32 >= 0
            mem[64] = _107 + ceil32(return_data.size) + ceil32(mem[_107 + mem[_107]]) + 32
            mem[_107 + ceil32(return_data.size)] = _111
            require _108 + _111 + 32 <= return_data.size
            t = 0
            while t < _111:
                mem[_107 + ceil32(return_data.size) + t + 32] = mem[_107 + _108 + t + 32]
                t = t + 32
                continue 
            if ceil32(_111) > _111:
                mem[_107 + ceil32(return_data.size) + _111 + 32] = 0
            mem[_103 + 64] = _107 + ceil32(return_data.size)
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = _103
            idx = idx + 1
            s = s + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _74) + 64
        u = mem[64] + 64
        while idx < _74:
            mem[u] = t + -_71 - 64
            _129 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_129 + 32]
            _140 = mem[_129 + 64]
            mem[t + 64] = 96
            _141 = mem[_140]
            mem[t + 96] = mem[_140]
            v = 0
            while v < _141:
                mem[t + v + 128] = mem[_140 + v + 32]
                v = v + 32
                continue 
            if ceil32(_141) > _141:
                mem[t + _141 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_141) + 128
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
        mem[var19001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        require ext_code.size(stor5)
        staticcall stor5.connectorLength() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_136]
        require mem[_136] == mem[_136]
        idx = 0
        s = 0
        while idx < _138:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor5)
            staticcall stor5.0x867fa45 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _177 = mem[_175]
            require mem[_175] == mem[_175 + 12 len 20]
            mem[mem[64] + 4] = mem[_175 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.connectors(address rg1) with:
                    gas gas_remaining wei
                   args address(_177)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_185] == bool(mem[_185])
            if not mem[_185]:
                idx = idx + 1
                s = s
                continue 
            _188 = mem[64]
            mem[64] = mem[64] + 96
            mem[_188] = address(_177)
            mem[_188 + 32] = idx + 1
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_177))
            staticcall address(_177).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _191 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _192 = mem[_191]
            require mem[_191] <= test266151307()
            require _191 + mem[_191] + 31 < _191 + return_data.size
            _193 = mem[_191 + mem[_191]]
            require mem[_191 + mem[_191]] <= test266151307()
            require _191 + ceil32(return_data.size) + ceil32(mem[_191 + mem[_191]]) + 32 <= test266151307() and ceil32(mem[_191 + mem[_191]]) + 32 >= 0
            mem[64] = _191 + ceil32(return_data.size) + ceil32(mem[_191 + mem[_191]]) + 32
            mem[_191 + ceil32(return_data.size)] = _193
            require _192 + _193 + 32 <= return_data.size
            t = 0
            while t < _193:
                mem[_191 + ceil32(return_data.size) + t + 32] = mem[_191 + _192 + t + 32]
                t = t + 32
                continue 
            if ceil32(_193) > _193:
                mem[_191 + ceil32(return_data.size) + _193 + 32] = 0
            mem[_188 + 64] = _191 + ceil32(return_data.size)
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = _188
            idx = idx + 1
            s = s + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 32
        _173 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _173) + 64
        u = mem[64] + 64
        while idx < _173:
            mem[u] = t + -_172 - 64
            _198 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_198 + 32]
            _205 = mem[_198 + 64]
            mem[t + 64] = 96
            _206 = mem[_205]
            mem[t + 96] = mem[_205]
            v = 0
            while v < _206:
                mem[t + v + 128] = mem[_205 + v + 32]
                v = v + 32
                continue 
            if ceil32(_206) > _206:
                mem[t + _206 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_206) + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getAuthorityTypes(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _316 = mem[(32 * idx) + 128]
            _317 = mem[64]
            mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + 128])) + 1
            mem[_317] = ext_code.size(mem[(32 * idx) + 128])
            mem[_317 + 32 len ext_code.size(_316)] = ext_code.copy(_316, 0 len ext_code.size(_316))
            s = 0
            t = 0
            while s < gnosisFactoryContracts.length:
                mem[0] = 6
                mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
                require ext_code.size(gnosisFactoryContracts[s])
                staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _483 = mem[_480]
                require mem[_480] <= test266151307()
                require _480 + mem[_480] + 31 < _480 + return_data.size
                _488 = mem[_480 + mem[_480]]
                require mem[_480 + mem[_480]] <= test266151307()
                require _480 + ceil32(return_data.size) + ceil32(mem[_480 + mem[_480]]) + 32 <= test266151307() and ceil32(mem[_480 + mem[_480]]) + 32 >= 0
                mem[64] = _480 + ceil32(return_data.size) + ceil32(mem[_480 + mem[_480]]) + 32
                mem[_480 + ceil32(return_data.size)] = _488
                require _483 + _488 + 32 <= return_data.size
                idx = 0
                while idx < _488:
                    mem[_480 + ceil32(return_data.size) + idx + 32] = mem[_480 + _483 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_488) <= _488:
                    _622 = mem[64]
                    mem[mem[64] + 32] = 32
                    _630 = mem[_317]
                    mem[mem[64] + 64] = mem[_317]
                    idx = 0
                    while idx < _630:
                        mem[mem[64] + idx + 96] = mem[_317 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_630) <= _630:
                        _765 = mem[64]
                        mem[mem[64]] = _622 + ceil32(_630) + -mem[64] + 64
                        mem[64] = _622 + ceil32(_630) + 96
                        _767 = sha3(mem[_765 + 32 len mem[_765]])
                        mem[_622 + ceil32(_630) + 128] = 32
                        _783 = mem[_480 + ceil32(return_data.size)]
                        mem[_622 + ceil32(_630) + 160] = mem[_480 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _783:
                            mem[_622 + ceil32(_630) + idx + 192] = mem[_480 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_783) > _783:
                            mem[_622 + ceil32(_630) + _783 + 192] = 0
                        mem[_622 + ceil32(_630) + 96] = ceil32(_783) + 64
                        mem[64] = _622 + ceil32(_630) + ceil32(_783) + 192
                        if sha3(32, mem[_622 + ceil32(_630) + 160 len ceil32(_783) + 32]) != _767:
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_622 + _630 + 96] = 0
                        _773 = mem[64]
                        mem[mem[64]] = _622 + ceil32(_630) + -mem[64] + 64
                        mem[64] = _622 + ceil32(_630) + 96
                        _775 = sha3(mem[_773 + 32 len mem[_773]])
                        mem[_622 + ceil32(_630) + 128] = 32
                        _785 = mem[_480 + ceil32(return_data.size)]
                        mem[_622 + ceil32(_630) + 160] = mem[_480 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _785:
                            mem[_622 + ceil32(_630) + idx + 192] = mem[_480 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_785) > _785:
                            mem[_622 + ceil32(_630) + _785 + 192] = 0
                        mem[_622 + ceil32(_630) + 96] = ceil32(_785) + 64
                        mem[64] = _622 + ceil32(_630) + ceil32(_785) + 192
                        if sha3(mem[_622 + ceil32(_630) + 128 len Mask(8 * -ceil32(_630) + _630 + 32, 0, 0), mem[_622 + _630 + 128 len -_630 + ceil32(_630)]]) != _775:
                            s = s + 1
                            t = t
                            continue 
                else:
                    mem[_480 + ceil32(return_data.size) + _488 + 32] = 0
                    _624 = mem[64]
                    mem[mem[64] + 32] = 32
                    _633 = mem[_317]
                    mem[mem[64] + 64] = mem[_317]
                    idx = 0
                    while idx < _633:
                        mem[mem[64] + idx + 96] = mem[_317 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_633) <= _633:
                        _769 = mem[64]
                        mem[mem[64]] = _624 + ceil32(_633) + -mem[64] + 64
                        mem[64] = _624 + ceil32(_633) + 96
                        _771 = sha3(mem[_769 + 32 len mem[_769]])
                        mem[_624 + ceil32(_633) + 128] = 32
                        _784 = mem[_480 + ceil32(return_data.size)]
                        mem[_624 + ceil32(_633) + 160] = mem[_480 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _784:
                            mem[_624 + ceil32(_633) + idx + 192] = mem[_480 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_784) > _784:
                            mem[_624 + ceil32(_633) + _784 + 192] = 0
                        mem[_624 + ceil32(_633) + 96] = ceil32(_784) + 64
                        mem[64] = _624 + ceil32(_633) + ceil32(_784) + 192
                        if sha3(32, mem[_624 + ceil32(_633) + 160 len ceil32(_784) + 32]) != _771:
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_624 + _633 + 96] = 0
                        _777 = mem[64]
                        mem[mem[64]] = _624 + ceil32(_633) + -mem[64] + 64
                        mem[64] = _624 + ceil32(_633) + 96
                        _779 = sha3(mem[_777 + 32 len mem[_777]])
                        mem[_624 + ceil32(_633) + 128] = 32
                        _786 = mem[_480 + ceil32(return_data.size)]
                        mem[_624 + ceil32(_633) + 160] = mem[_480 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _786:
                            mem[_624 + ceil32(_633) + idx + 192] = mem[_480 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_786) > _786:
                            mem[_624 + ceil32(_633) + _786 + 192] = 0
                        mem[_624 + ceil32(_633) + 96] = ceil32(_786) + 64
                        mem[64] = _624 + ceil32(_633) + ceil32(_786) + 192
                        if sha3(mem[_624 + ceil32(_633) + 128 len Mask(8 * -ceil32(_633) + _633 + 32, 0, 0), mem[_624 + _633 + 128 len -_633 + ceil32(_633)]]) != _779:
                            s = s + 1
                            t = t
                            continue 
                s = s + 1
                t = 1
                continue 
            if not t:
                _467 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[96]
                mem[_467] = mem[(32 * idx) + 140 len 20]
                mem[_467 + 32] = 0
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = _467
            else:
                _469 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[96]
                mem[_469] = mem[(32 * idx) + 140 len 20]
                mem[_469 + 32] = 1
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = _469
            idx = idx + 1
            continue 
        _315 = mem[64]
        mem[mem[64]] = 32
        _318 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _318:
            _466 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_466 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _315 + (64 * _318) + -mem[64] + 64
    mem[64] = (64 * arg1.length) + 224
    mem[(64 * arg1.length) + 160] = 0
    mem[(64 * arg1.length) + 192] = 0
    mem[var24001] = (64 * arg1.length) + 160
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * arg1.length) + 160] = 0
        mem[(64 * arg1.length) + 192] = 0
        mem[s + 32] = (64 * arg1.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _616 = mem[96]
    idx = 0
    while idx < _616:
        require idx < mem[96]
        _620 = mem[(32 * idx) + 128]
        _621 = mem[64]
        mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + 128])) + 1
        mem[_621] = ext_code.size(mem[(32 * idx) + 128])
        mem[_621 + 32 len ext_code.size(_620)] = ext_code.copy(_620, 0 len ext_code.size(_620))
        s = 0
        t = 0
        while s < gnosisFactoryContracts.length:
            mem[0] = 6
            mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(gnosisFactoryContracts[s])
            staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _763 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _764 = mem[_763]
            require mem[_763] <= test266151307()
            require _763 + mem[_763] + 31 < _763 + return_data.size
            _782 = mem[_763 + mem[_763]]
            require mem[_763 + mem[_763]] <= test266151307()
            require _763 + ceil32(return_data.size) + ceil32(mem[_763 + mem[_763]]) + 32 <= test266151307() and ceil32(mem[_763 + mem[_763]]) + 32 >= 0
            mem[64] = _763 + ceil32(return_data.size) + ceil32(mem[_763 + mem[_763]]) + 32
            mem[_763 + ceil32(return_data.size)] = _782
            require _764 + _782 + 32 <= return_data.size
            idx = 0
            while idx < _782:
                mem[_763 + ceil32(return_data.size) + idx + 32] = mem[_763 + _764 + idx + 32]
                _616 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_782) <= _782:
                _876 = mem[64]
                mem[mem[64] + 32] = 32
                _902 = mem[_621]
                mem[mem[64] + 64] = mem[_621]
                idx = 0
                while idx < _902:
                    mem[mem[64] + idx + 96] = mem[_621 + idx + 32]
                    _616 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_902) <= _902:
                    _956 = mem[64]
                    mem[mem[64]] = _876 + ceil32(_902) + -mem[64] + 64
                    mem[64] = _876 + ceil32(_902) + 96
                    _958 = sha3(mem[_956 + 32 len mem[_956]])
                    mem[_876 + ceil32(_902) + 128] = 32
                    _972 = mem[_763 + ceil32(return_data.size)]
                    mem[_876 + ceil32(_902) + 160] = mem[_763 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _972:
                        mem[_876 + ceil32(_902) + idx + 192] = mem[_763 + ceil32(return_data.size) + idx + 32]
                        _616 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_972) > _972:
                        mem[_876 + ceil32(_902) + _972 + 192] = 0
                    mem[_876 + ceil32(_902) + 96] = ceil32(_972) + 64
                    mem[64] = _876 + ceil32(_902) + ceil32(_972) + 192
                    if sha3(32, mem[_876 + ceil32(_902) + 160 len ceil32(_972) + 32]) != _958:
                        _616 = mem[96]
                        s = s + 1
                        t = t
                        continue 
                else:
                    mem[_876 + _902 + 96] = 0
                    _964 = mem[64]
                    mem[mem[64]] = _876 + ceil32(_902) + -mem[64] + 64
                    mem[64] = _876 + ceil32(_902) + 96
                    _966 = sha3(mem[_964 + 32 len mem[_964]])
                    mem[_876 + ceil32(_902) + 128] = 32
                    _974 = mem[_763 + ceil32(return_data.size)]
                    mem[_876 + ceil32(_902) + 160] = mem[_763 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _974:
                        mem[_876 + ceil32(_902) + idx + 192] = mem[_763 + ceil32(return_data.size) + idx + 32]
                        _616 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_974) > _974:
                        mem[_876 + ceil32(_902) + _974 + 192] = 0
                    mem[_876 + ceil32(_902) + 96] = ceil32(_974) + 64
                    mem[64] = _876 + ceil32(_902) + ceil32(_974) + 192
                    if sha3(mem[_876 + ceil32(_902) + 128 len Mask(8 * -ceil32(_902) + _902 + 32, 0, 0), mem[_876 + _902 + 128 len -_902 + ceil32(_902)]]) != _966:
                        _616 = mem[96]
                        s = s + 1
                        t = t
                        continue 
            else:
                mem[_763 + ceil32(return_data.size) + _782 + 32] = 0
                _877 = mem[64]
                mem[mem[64] + 32] = 32
                _903 = mem[_621]
                mem[mem[64] + 64] = mem[_621]
                idx = 0
                while idx < _903:
                    mem[mem[64] + idx + 96] = mem[_621 + idx + 32]
                    _616 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_903) <= _903:
                    _960 = mem[64]
                    mem[mem[64]] = _877 + ceil32(_903) + -mem[64] + 64
                    mem[64] = _877 + ceil32(_903) + 96
                    _962 = sha3(mem[_960 + 32 len mem[_960]])
                    mem[_877 + ceil32(_903) + 128] = 32
                    _973 = mem[_763 + ceil32(return_data.size)]
                    mem[_877 + ceil32(_903) + 160] = mem[_763 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _973:
                        mem[_877 + ceil32(_903) + idx + 192] = mem[_763 + ceil32(return_data.size) + idx + 32]
                        _616 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_973) > _973:
                        mem[_877 + ceil32(_903) + _973 + 192] = 0
                    mem[_877 + ceil32(_903) + 96] = ceil32(_973) + 64
                    mem[64] = _877 + ceil32(_903) + ceil32(_973) + 192
                    if sha3(32, mem[_877 + ceil32(_903) + 160 len ceil32(_973) + 32]) != _962:
                        _616 = mem[96]
                        s = s + 1
                        t = t
                        continue 
                else:
                    mem[_877 + _903 + 96] = 0
                    _968 = mem[64]
                    mem[mem[64]] = _877 + ceil32(_903) + -mem[64] + 64
                    mem[64] = _877 + ceil32(_903) + 96
                    _970 = sha3(mem[_968 + 32 len mem[_968]])
                    mem[_877 + ceil32(_903) + 128] = 32
                    _975 = mem[_763 + ceil32(return_data.size)]
                    mem[_877 + ceil32(_903) + 160] = mem[_763 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _975:
                        mem[_877 + ceil32(_903) + idx + 192] = mem[_763 + ceil32(return_data.size) + idx + 32]
                        _616 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_975) > _975:
                        mem[_877 + ceil32(_903) + _975 + 192] = 0
                    mem[_877 + ceil32(_903) + 96] = ceil32(_975) + 64
                    mem[64] = _877 + ceil32(_903) + ceil32(_975) + 192
                    if sha3(mem[_877 + ceil32(_903) + 128 len Mask(8 * -ceil32(_903) + _903 + 32, 0, 0), mem[_877 + _903 + 128 len -_903 + ceil32(_903)]]) != _970:
                        _616 = mem[96]
                        s = s + 1
                        t = t
                        continue 
            _616 = mem[96]
            s = s + 1
            t = 1
            continue 
        if not t:
            _750 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_750] = mem[(32 * idx) + 140 len 20]
            mem[_750 + 32] = 0
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _750
        else:
            _752 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_752] = mem[(32 * idx) + 140 len 20]
            mem[_752 + 32] = 1
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _752
        _616 = mem[96]
        idx = idx + 1
        continue 
    _619 = mem[64]
    mem[mem[64]] = 32
    _623 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + 64
    while idx < _623:
        _749 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_749 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _619 + (64 * _623) + -mem[64] + 64
}

function getAccountAuthoritiesTypes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.accountID(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    require ext_code.size(stor4)
    staticcall stor4.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((2 * ceil32(return_data.size)) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[88 len 8]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * uint64(ext_call.return_data[64])) + 320
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[(2 * ceil32(return_data.size)) + 192]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320] = address(s)
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 0
            mem[_351 + 32] = 0
            mem[mem[64] + 36] = address(s)
            require ext_code.size(stor4)
            staticcall stor4.0x5f3c37f9 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 192, address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _410 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _433 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_410] == mem[_410 + 12 len 20]
            mem[_433] = mem[_410]
            require mem[_410 + 32] == mem[_410 + 44 len 20]
            mem[_433 + 32] = mem[_410 + 32]
            idx = idx + 1
            s = mem[_433 + 32]
            continue 
        _353 = mem[(2 * ceil32(return_data.size)) + 288]
        _354 = mem[64]
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[64] = mem[64] + (32 * _353) + 32
        if not _353:
            _677 = mem[(2 * ceil32(return_data.size)) + 288]
            idx = 0
            while idx < _677:
                require idx < mem[(2 * ceil32(return_data.size)) + 288]
                _683 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                _686 = mem[64]
                mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])) + 1
                mem[_686] = ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])
                mem[_686 + 32 len ext_code.size(_683)] = ext_code.copy(_683, 0 len ext_code.size(_683))
                s = 0
                t = 0
                while s < gnosisFactoryContracts.length:
                    mem[0] = 6
                    mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(gnosisFactoryContracts[s])
                    staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1013 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1019 = mem[_1013]
                    require mem[_1013] <= test266151307()
                    require _1013 + mem[_1013] + 31 < _1013 + return_data.size
                    _1028 = mem[_1013 + mem[_1013]]
                    require mem[_1013 + mem[_1013]] <= test266151307()
                    require _1013 + ceil32(return_data.size) + ceil32(mem[_1013 + mem[_1013]]) + 32 <= test266151307() and ceil32(mem[_1013 + mem[_1013]]) + 32 >= 0
                    mem[64] = _1013 + ceil32(return_data.size) + ceil32(mem[_1013 + mem[_1013]]) + 32
                    mem[_1013 + ceil32(return_data.size)] = _1028
                    require _1019 + _1028 + 32 <= return_data.size
                    idx = 0
                    while idx < _1028:
                        mem[_1013 + ceil32(return_data.size) + idx + 32] = mem[_1013 + _1019 + idx + 32]
                        _677 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1028) <= _1028:
                        _1297 = mem[64]
                        mem[mem[64] + 32] = 32
                        _1313 = mem[_686]
                        mem[mem[64] + 64] = mem[_686]
                        idx = 0
                        while idx < _1313:
                            mem[mem[64] + idx + 96] = mem[_686 + idx + 32]
                            _677 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1313) <= _1313:
                            _1583 = mem[64]
                            mem[mem[64]] = _1297 + ceil32(_1313) + -mem[64] + 64
                            mem[64] = _1297 + ceil32(_1313) + 96
                            _1585 = sha3(mem[_1583 + 32 len mem[_1583]])
                            mem[_1297 + ceil32(_1313) + 128] = 32
                            _1619 = mem[_1013 + ceil32(return_data.size)]
                            mem[_1297 + ceil32(_1313) + 160] = mem[_1013 + ceil32(return_data.size)]
                            idx = 0
                            while idx < _1619:
                                mem[_1297 + ceil32(_1313) + idx + 192] = mem[_1013 + ceil32(return_data.size) + idx + 32]
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                idx = idx + 32
                                continue 
                            if ceil32(_1619) > _1619:
                                mem[_1297 + ceil32(_1313) + _1619 + 192] = 0
                            mem[_1297 + ceil32(_1313) + 96] = ceil32(_1619) + 64
                            mem[64] = _1297 + ceil32(_1313) + ceil32(_1619) + 192
                            if sha3(32, mem[_1297 + ceil32(_1313) + 160 len ceil32(_1619) + 32]) != _1585:
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                s = s + 1
                                t = t
                                continue 
                        else:
                            mem[_1297 + _1313 + 96] = 0
                            _1599 = mem[64]
                            mem[mem[64]] = _1297 + ceil32(_1313) + -mem[64] + 64
                            mem[64] = _1297 + ceil32(_1313) + 96
                            _1601 = sha3(mem[_1599 + 32 len mem[_1599]])
                            mem[_1297 + ceil32(_1313) + 128] = 32
                            _1623 = mem[_1013 + ceil32(return_data.size)]
                            mem[_1297 + ceil32(_1313) + 160] = mem[_1013 + ceil32(return_data.size)]
                            idx = 0
                            while idx < _1623:
                                mem[_1297 + ceil32(_1313) + idx + 192] = mem[_1013 + ceil32(return_data.size) + idx + 32]
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                idx = idx + 32
                                continue 
                            if ceil32(_1623) > _1623:
                                mem[_1297 + ceil32(_1313) + _1623 + 192] = 0
                            mem[_1297 + ceil32(_1313) + 96] = ceil32(_1623) + 64
                            mem[64] = _1297 + ceil32(_1313) + ceil32(_1623) + 192
                            if sha3(mem[_1297 + ceil32(_1313) + 128 len Mask(8 * -ceil32(_1313) + _1313 + 32, 0, 0), mem[_1297 + _1313 + 128 len -_1313 + ceil32(_1313)]]) != _1601:
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                s = s + 1
                                t = t
                                continue 
                    else:
                        mem[_1013 + ceil32(return_data.size) + _1028 + 32] = 0
                        _1299 = mem[64]
                        mem[mem[64] + 32] = 32
                        _1319 = mem[_686]
                        mem[mem[64] + 64] = mem[_686]
                        idx = 0
                        while idx < _1319:
                            mem[mem[64] + idx + 96] = mem[_686 + idx + 32]
                            _677 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1319) <= _1319:
                            _1587 = mem[64]
                            mem[mem[64]] = _1299 + ceil32(_1319) + -mem[64] + 64
                            mem[64] = _1299 + ceil32(_1319) + 96
                            _1589 = sha3(mem[_1587 + 32 len mem[_1587]])
                            mem[_1299 + ceil32(_1319) + 128] = 32
                            _1620 = mem[_1013 + ceil32(return_data.size)]
                            mem[_1299 + ceil32(_1319) + 160] = mem[_1013 + ceil32(return_data.size)]
                            idx = 0
                            while idx < _1620:
                                mem[_1299 + ceil32(_1319) + idx + 192] = mem[_1013 + ceil32(return_data.size) + idx + 32]
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                idx = idx + 32
                                continue 
                            if ceil32(_1620) > _1620:
                                mem[_1299 + ceil32(_1319) + _1620 + 192] = 0
                            mem[_1299 + ceil32(_1319) + 96] = ceil32(_1620) + 64
                            mem[64] = _1299 + ceil32(_1319) + ceil32(_1620) + 192
                            if sha3(32, mem[_1299 + ceil32(_1319) + 160 len ceil32(_1620) + 32]) != _1589:
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                s = s + 1
                                t = t
                                continue 
                        else:
                            mem[_1299 + _1319 + 96] = 0
                            _1603 = mem[64]
                            mem[mem[64]] = _1299 + ceil32(_1319) + -mem[64] + 64
                            mem[64] = _1299 + ceil32(_1319) + 96
                            _1605 = sha3(mem[_1603 + 32 len mem[_1603]])
                            mem[_1299 + ceil32(_1319) + 128] = 32
                            _1624 = mem[_1013 + ceil32(return_data.size)]
                            mem[_1299 + ceil32(_1319) + 160] = mem[_1013 + ceil32(return_data.size)]
                            idx = 0
                            while idx < _1624:
                                mem[_1299 + ceil32(_1319) + idx + 192] = mem[_1013 + ceil32(return_data.size) + idx + 32]
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                idx = idx + 32
                                continue 
                            if ceil32(_1624) > _1624:
                                mem[_1299 + ceil32(_1319) + _1624 + 192] = 0
                            mem[_1299 + ceil32(_1319) + 96] = ceil32(_1624) + 64
                            mem[64] = _1299 + ceil32(_1319) + ceil32(_1624) + 192
                            if sha3(mem[_1299 + ceil32(_1319) + 128 len Mask(8 * -ceil32(_1319) + _1319 + 32, 0, 0), mem[_1299 + _1319 + 128 len -_1319 + ceil32(_1319)]]) != _1605:
                                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                                s = s + 1
                                t = t
                                continue 
                    _677 = mem[(2 * ceil32(return_data.size)) + 288]
                    s = s + 1
                    t = 1
                    continue 
                if not t:
                    _987 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[(2 * ceil32(return_data.size)) + 288]
                    mem[_987] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                    mem[_987 + 32] = 0
                    require idx < mem[_354]
                    mem[(32 * idx) + _354 + 32] = _987
                else:
                    _989 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[(2 * ceil32(return_data.size)) + 288]
                    mem[_989] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                    mem[_989 + 32] = 1
                    require idx < mem[_354]
                    mem[(32 * idx) + _354 + 32] = _989
                _677 = mem[(2 * ceil32(return_data.size)) + 288]
                idx = idx + 1
                continue 
            _685 = mem[64]
            mem[mem[64]] = 32
            _691 = mem[_354]
            mem[mem[64] + 32] = mem[_354]
            idx = 0
            s = _354 + 32
            t = mem[64] + 64
            while idx < _691:
                _985 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_985 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _685 + (64 * _691) + -mem[64] + 64
        mem[64] = _354 + (32 * _353) + 96
        mem[_354 + (32 * _353) + 32] = 0
        mem[_354 + (32 * _353) + 64] = 0
        mem[var94001] = _354 + (32 * _353) + 32
        s = var94001
        idx = var94002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_354 + (32 * _353) + 32] = 0
            mem[_354 + (32 * _353) + 64] = 0
            mem[s + 32] = _354 + (32 * _353) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _1285 = mem[(2 * ceil32(return_data.size)) + 288]
        idx = 0
        while idx < _1285:
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            _1291 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
            _1294 = mem[64]
            mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])) + 1
            mem[_1294] = ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])
            mem[_1294 + 32 len ext_code.size(_1291)] = ext_code.copy(_1291, 0 len ext_code.size(_1291))
            s = 0
            t = 0
            while s < gnosisFactoryContracts.length:
                mem[0] = 6
                mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
                require ext_code.size(gnosisFactoryContracts[s])
                staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1579 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1581 = mem[_1579]
                require mem[_1579] <= test266151307()
                require _1579 + mem[_1579] + 31 < _1579 + return_data.size
                _1616 = mem[_1579 + mem[_1579]]
                require mem[_1579 + mem[_1579]] <= test266151307()
                require _1579 + ceil32(return_data.size) + ceil32(mem[_1579 + mem[_1579]]) + 32 <= test266151307() and ceil32(mem[_1579 + mem[_1579]]) + 32 >= 0
                mem[64] = _1579 + ceil32(return_data.size) + ceil32(mem[_1579 + mem[_1579]]) + 32
                mem[_1579 + ceil32(return_data.size)] = _1616
                require _1581 + _1616 + 32 <= return_data.size
                idx = 0
                while idx < _1616:
                    mem[_1579 + ceil32(return_data.size) + idx + 32] = mem[_1579 + _1581 + idx + 32]
                    _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                    idx = idx + 32
                    continue 
                if ceil32(_1616) <= _1616:
                    _1805 = mem[64]
                    mem[mem[64] + 32] = 32
                    _1845 = mem[_1294]
                    mem[mem[64] + 64] = mem[_1294]
                    idx = 0
                    while idx < _1845:
                        mem[mem[64] + idx + 96] = mem[_1294 + idx + 32]
                        _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1845) <= _1845:
                        _1965 = mem[64]
                        mem[mem[64]] = _1805 + ceil32(_1845) + -mem[64] + 64
                        mem[64] = _1805 + ceil32(_1845) + 96
                        _1967 = sha3(mem[_1965 + 32 len mem[_1965]])
                        mem[_1805 + ceil32(_1845) + 128] = 32
                        _1997 = mem[_1579 + ceil32(return_data.size)]
                        mem[_1805 + ceil32(_1845) + 160] = mem[_1579 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1997:
                            mem[_1805 + ceil32(_1845) + idx + 192] = mem[_1579 + ceil32(return_data.size) + idx + 32]
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1997) > _1997:
                            mem[_1805 + ceil32(_1845) + _1997 + 192] = 0
                        mem[_1805 + ceil32(_1845) + 96] = ceil32(_1997) + 64
                        mem[64] = _1805 + ceil32(_1845) + ceil32(_1997) + 192
                        if sha3(32, mem[_1805 + ceil32(_1845) + 160 len ceil32(_1997) + 32]) != _1967:
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_1805 + _1845 + 96] = 0
                        _1981 = mem[64]
                        mem[mem[64]] = _1805 + ceil32(_1845) + -mem[64] + 64
                        mem[64] = _1805 + ceil32(_1845) + 96
                        _1983 = sha3(mem[_1981 + 32 len mem[_1981]])
                        mem[_1805 + ceil32(_1845) + 128] = 32
                        _2001 = mem[_1579 + ceil32(return_data.size)]
                        mem[_1805 + ceil32(_1845) + 160] = mem[_1579 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _2001:
                            mem[_1805 + ceil32(_1845) + idx + 192] = mem[_1579 + ceil32(return_data.size) + idx + 32]
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_2001) > _2001:
                            mem[_1805 + ceil32(_1845) + _2001 + 192] = 0
                        mem[_1805 + ceil32(_1845) + 96] = ceil32(_2001) + 64
                        mem[64] = _1805 + ceil32(_1845) + ceil32(_2001) + 192
                        if sha3(mem[_1805 + ceil32(_1845) + 128 len Mask(8 * -ceil32(_1845) + _1845 + 32, 0, 0), mem[_1805 + _1845 + 128 len -_1845 + ceil32(_1845)]]) != _1983:
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                else:
                    mem[_1579 + ceil32(return_data.size) + _1616 + 32] = 0
                    _1807 = mem[64]
                    mem[mem[64] + 32] = 32
                    _1859 = mem[_1294]
                    mem[mem[64] + 64] = mem[_1294]
                    idx = 0
                    while idx < _1859:
                        mem[mem[64] + idx + 96] = mem[_1294 + idx + 32]
                        _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1859) <= _1859:
                        _1969 = mem[64]
                        mem[mem[64]] = _1807 + ceil32(_1859) + -mem[64] + 64
                        mem[64] = _1807 + ceil32(_1859) + 96
                        _1971 = sha3(mem[_1969 + 32 len mem[_1969]])
                        mem[_1807 + ceil32(_1859) + 128] = 32
                        _1998 = mem[_1579 + ceil32(return_data.size)]
                        mem[_1807 + ceil32(_1859) + 160] = mem[_1579 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1998:
                            mem[_1807 + ceil32(_1859) + idx + 192] = mem[_1579 + ceil32(return_data.size) + idx + 32]
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1998) > _1998:
                            mem[_1807 + ceil32(_1859) + _1998 + 192] = 0
                        mem[_1807 + ceil32(_1859) + 96] = ceil32(_1998) + 64
                        mem[64] = _1807 + ceil32(_1859) + ceil32(_1998) + 192
                        if sha3(32, mem[_1807 + ceil32(_1859) + 160 len ceil32(_1998) + 32]) != _1971:
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_1807 + _1859 + 96] = 0
                        _1985 = mem[64]
                        mem[mem[64]] = _1807 + ceil32(_1859) + -mem[64] + 64
                        mem[64] = _1807 + ceil32(_1859) + 96
                        _1987 = sha3(mem[_1985 + 32 len mem[_1985]])
                        mem[_1807 + ceil32(_1859) + 128] = 32
                        _2002 = mem[_1579 + ceil32(return_data.size)]
                        mem[_1807 + ceil32(_1859) + 160] = mem[_1579 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _2002:
                            mem[_1807 + ceil32(_1859) + idx + 192] = mem[_1579 + ceil32(return_data.size) + idx + 32]
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_2002) > _2002:
                            mem[_1807 + ceil32(_1859) + _2002 + 192] = 0
                        mem[_1807 + ceil32(_1859) + 96] = ceil32(_2002) + 64
                        mem[64] = _1807 + ceil32(_1859) + ceil32(_2002) + 192
                        if sha3(mem[_1807 + ceil32(_1859) + 128 len Mask(8 * -ceil32(_1859) + _1859 + 32, 0, 0), mem[_1807 + _1859 + 128 len -_1859 + ceil32(_1859)]]) != _1987:
                            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                _1285 = mem[(2 * ceil32(return_data.size)) + 288]
                s = s + 1
                t = 1
                continue 
            if not t:
                _1553 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(2 * ceil32(return_data.size)) + 288]
                mem[_1553] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                mem[_1553 + 32] = 0
                require idx < mem[_354]
                mem[(32 * idx) + _354 + 32] = _1553
            else:
                _1555 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(2 * ceil32(return_data.size)) + 288]
                mem[_1555] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                mem[_1555 + 32] = 1
                require idx < mem[_354]
                mem[(32 * idx) + _354 + 32] = _1555
            _1285 = mem[(2 * ceil32(return_data.size)) + 288]
            idx = idx + 1
            continue 
        _1293 = mem[64]
        mem[mem[64]] = 32
        _1300 = mem[_354]
        mem[mem[64] + 32] = mem[_354]
        idx = 0
        s = _354 + 32
        t = mem[64] + 64
        while idx < _1300:
            _1549 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1549 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _1293 + (64 * _1300) + -mem[64] + 64
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[(2 * ceil32(return_data.size)) + 192]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[(2 * ceil32(return_data.size)) + 288]
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320] = address(s)
        _352 = mem[64]
        mem[64] = mem[64] + 64
        mem[_352] = 0
        mem[_352 + 32] = 0
        mem[mem[64] + 36] = address(s)
        require ext_code.size(stor4)
        staticcall stor4.0x5f3c37f9 with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 192, address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _434 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_416] == mem[_416 + 12 len 20]
        mem[_434] = mem[_416]
        require mem[_416 + 32] == mem[_416 + 44 len 20]
        mem[_434 + 32] = mem[_416 + 32]
        idx = idx + 1
        s = mem[_434 + 32]
        continue 
    _356 = mem[(2 * ceil32(return_data.size)) + 288]
    _357 = mem[64]
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[64] = mem[64] + (32 * _356) + 32
    if not _356:
        _678 = mem[(2 * ceil32(return_data.size)) + 288]
        idx = 0
        while idx < _678:
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            _684 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])) + 1
            mem[_688] = ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])
            mem[_688 + 32 len ext_code.size(_684)] = ext_code.copy(_684, 0 len ext_code.size(_684))
            s = 0
            t = 0
            while s < gnosisFactoryContracts.length:
                mem[0] = 6
                mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
                require ext_code.size(gnosisFactoryContracts[s])
                staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1015 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1021 = mem[_1015]
                require mem[_1015] <= test266151307()
                require _1015 + mem[_1015] + 31 < _1015 + return_data.size
                _1030 = mem[_1015 + mem[_1015]]
                require mem[_1015 + mem[_1015]] <= test266151307()
                require _1015 + ceil32(return_data.size) + ceil32(mem[_1015 + mem[_1015]]) + 32 <= test266151307() and ceil32(mem[_1015 + mem[_1015]]) + 32 >= 0
                mem[64] = _1015 + ceil32(return_data.size) + ceil32(mem[_1015 + mem[_1015]]) + 32
                mem[_1015 + ceil32(return_data.size)] = _1030
                require _1021 + _1030 + 32 <= return_data.size
                idx = 0
                while idx < _1030:
                    mem[_1015 + ceil32(return_data.size) + idx + 32] = mem[_1015 + _1021 + idx + 32]
                    _678 = mem[(2 * ceil32(return_data.size)) + 288]
                    idx = idx + 32
                    continue 
                if ceil32(_1030) <= _1030:
                    _1298 = mem[64]
                    mem[mem[64] + 32] = 32
                    _1316 = mem[_688]
                    mem[mem[64] + 64] = mem[_688]
                    idx = 0
                    while idx < _1316:
                        mem[mem[64] + idx + 96] = mem[_688 + idx + 32]
                        _678 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1316) <= _1316:
                        _1591 = mem[64]
                        mem[mem[64]] = _1298 + ceil32(_1316) + -mem[64] + 64
                        mem[64] = _1298 + ceil32(_1316) + 96
                        _1593 = sha3(mem[_1591 + 32 len mem[_1591]])
                        mem[_1298 + ceil32(_1316) + 128] = 32
                        _1621 = mem[_1015 + ceil32(return_data.size)]
                        mem[_1298 + ceil32(_1316) + 160] = mem[_1015 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1621:
                            mem[_1298 + ceil32(_1316) + idx + 192] = mem[_1015 + ceil32(return_data.size) + idx + 32]
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1621) > _1621:
                            mem[_1298 + ceil32(_1316) + _1621 + 192] = 0
                        mem[_1298 + ceil32(_1316) + 96] = ceil32(_1621) + 64
                        mem[64] = _1298 + ceil32(_1316) + ceil32(_1621) + 192
                        if sha3(32, mem[_1298 + ceil32(_1316) + 160 len ceil32(_1621) + 32]) != _1593:
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_1298 + _1316 + 96] = 0
                        _1607 = mem[64]
                        mem[mem[64]] = _1298 + ceil32(_1316) + -mem[64] + 64
                        mem[64] = _1298 + ceil32(_1316) + 96
                        _1609 = sha3(mem[_1607 + 32 len mem[_1607]])
                        mem[_1298 + ceil32(_1316) + 128] = 32
                        _1625 = mem[_1015 + ceil32(return_data.size)]
                        mem[_1298 + ceil32(_1316) + 160] = mem[_1015 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1625:
                            mem[_1298 + ceil32(_1316) + idx + 192] = mem[_1015 + ceil32(return_data.size) + idx + 32]
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1625) > _1625:
                            mem[_1298 + ceil32(_1316) + _1625 + 192] = 0
                        mem[_1298 + ceil32(_1316) + 96] = ceil32(_1625) + 64
                        mem[64] = _1298 + ceil32(_1316) + ceil32(_1625) + 192
                        if sha3(mem[_1298 + ceil32(_1316) + 128 len Mask(8 * -ceil32(_1316) + _1316 + 32, 0, 0), mem[_1298 + _1316 + 128 len -_1316 + ceil32(_1316)]]) != _1609:
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                else:
                    mem[_1015 + ceil32(return_data.size) + _1030 + 32] = 0
                    _1301 = mem[64]
                    mem[mem[64] + 32] = 32
                    _1321 = mem[_688]
                    mem[mem[64] + 64] = mem[_688]
                    idx = 0
                    while idx < _1321:
                        mem[mem[64] + idx + 96] = mem[_688 + idx + 32]
                        _678 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1321) <= _1321:
                        _1595 = mem[64]
                        mem[mem[64]] = _1301 + ceil32(_1321) + -mem[64] + 64
                        mem[64] = _1301 + ceil32(_1321) + 96
                        _1597 = sha3(mem[_1595 + 32 len mem[_1595]])
                        mem[_1301 + ceil32(_1321) + 128] = 32
                        _1622 = mem[_1015 + ceil32(return_data.size)]
                        mem[_1301 + ceil32(_1321) + 160] = mem[_1015 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1622:
                            mem[_1301 + ceil32(_1321) + idx + 192] = mem[_1015 + ceil32(return_data.size) + idx + 32]
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1622) > _1622:
                            mem[_1301 + ceil32(_1321) + _1622 + 192] = 0
                        mem[_1301 + ceil32(_1321) + 96] = ceil32(_1622) + 64
                        mem[64] = _1301 + ceil32(_1321) + ceil32(_1622) + 192
                        if sha3(32, mem[_1301 + ceil32(_1321) + 160 len ceil32(_1622) + 32]) != _1597:
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                    else:
                        mem[_1301 + _1321 + 96] = 0
                        _1611 = mem[64]
                        mem[mem[64]] = _1301 + ceil32(_1321) + -mem[64] + 64
                        mem[64] = _1301 + ceil32(_1321) + 96
                        _1613 = sha3(mem[_1611 + 32 len mem[_1611]])
                        mem[_1301 + ceil32(_1321) + 128] = 32
                        _1626 = mem[_1015 + ceil32(return_data.size)]
                        mem[_1301 + ceil32(_1321) + 160] = mem[_1015 + ceil32(return_data.size)]
                        idx = 0
                        while idx < _1626:
                            mem[_1301 + ceil32(_1321) + idx + 192] = mem[_1015 + ceil32(return_data.size) + idx + 32]
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            idx = idx + 32
                            continue 
                        if ceil32(_1626) > _1626:
                            mem[_1301 + ceil32(_1321) + _1626 + 192] = 0
                        mem[_1301 + ceil32(_1321) + 96] = ceil32(_1626) + 64
                        mem[64] = _1301 + ceil32(_1321) + ceil32(_1626) + 192
                        if sha3(mem[_1301 + ceil32(_1321) + 128 len Mask(8 * -ceil32(_1321) + _1321 + 32, 0, 0), mem[_1301 + _1321 + 128 len -_1321 + ceil32(_1321)]]) != _1613:
                            _678 = mem[(2 * ceil32(return_data.size)) + 288]
                            s = s + 1
                            t = t
                            continue 
                _678 = mem[(2 * ceil32(return_data.size)) + 288]
                s = s + 1
                t = 1
                continue 
            if not t:
                _994 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(2 * ceil32(return_data.size)) + 288]
                mem[_994] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                mem[_994 + 32] = 0
                require idx < mem[_357]
                mem[(32 * idx) + _357 + 32] = _994
            else:
                _996 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(2 * ceil32(return_data.size)) + 288]
                mem[_996] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
                mem[_996 + 32] = 1
                require idx < mem[_357]
                mem[(32 * idx) + _357 + 32] = _996
            _678 = mem[(2 * ceil32(return_data.size)) + 288]
            idx = idx + 1
            continue 
        _687 = mem[64]
        mem[mem[64]] = 32
        _693 = mem[_357]
        mem[mem[64] + 32] = mem[_357]
        idx = 0
        s = _357 + 32
        t = mem[64] + 64
        while idx < _693:
            _986 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_986 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _687 + (64 * _693) + -mem[64] + 64
    mem[64] = _357 + (32 * _356) + 96
    mem[_357 + (32 * _356) + 32] = 0
    mem[_357 + (32 * _356) + 64] = 0
    mem[var95001] = _357 + (32 * _356) + 32
    s = var95001
    idx = var95002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_357 + (32 * _356) + 32] = 0
        mem[_357 + (32 * _356) + 64] = 0
        mem[s + 32] = _357 + (32 * _356) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _1286 = mem[(2 * ceil32(return_data.size)) + 288]
    idx = 0
    while idx < _1286:
        require idx < mem[(2 * ceil32(return_data.size)) + 288]
        _1292 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
        _1296 = mem[64]
        mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])) + 1
        mem[_1296] = ext_code.size(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320])
        mem[_1296 + 32 len ext_code.size(_1292)] = ext_code.copy(_1292, 0 len ext_code.size(_1292))
        s = 0
        t = 0
        while s < gnosisFactoryContracts.length:
            mem[0] = 6
            mem[mem[64]] = 0xaddacc0f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(gnosisFactoryContracts[s])
            staticcall gnosisFactoryContracts[s].proxyRuntimeCode() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1580 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1582 = mem[_1580]
            require mem[_1580] <= test266151307()
            require _1580 + mem[_1580] + 31 < _1580 + return_data.size
            _1618 = mem[_1580 + mem[_1580]]
            require mem[_1580 + mem[_1580]] <= test266151307()
            require _1580 + ceil32(return_data.size) + ceil32(mem[_1580 + mem[_1580]]) + 32 <= test266151307() and ceil32(mem[_1580 + mem[_1580]]) + 32 >= 0
            mem[64] = _1580 + ceil32(return_data.size) + ceil32(mem[_1580 + mem[_1580]]) + 32
            mem[_1580 + ceil32(return_data.size)] = _1618
            require _1582 + _1618 + 32 <= return_data.size
            idx = 0
            while idx < _1618:
                mem[_1580 + ceil32(return_data.size) + idx + 32] = mem[_1580 + _1582 + idx + 32]
                _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                idx = idx + 32
                continue 
            if ceil32(_1618) <= _1618:
                _1806 = mem[64]
                mem[mem[64] + 32] = 32
                _1858 = mem[_1296]
                mem[mem[64] + 64] = mem[_1296]
                idx = 0
                while idx < _1858:
                    mem[mem[64] + idx + 96] = mem[_1296 + idx + 32]
                    _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                    idx = idx + 32
                    continue 
                if ceil32(_1858) <= _1858:
                    _1973 = mem[64]
                    mem[mem[64]] = _1806 + ceil32(_1858) + -mem[64] + 64
                    mem[64] = _1806 + ceil32(_1858) + 96
                    _1975 = sha3(mem[_1973 + 32 len mem[_1973]])
                    mem[_1806 + ceil32(_1858) + 128] = 32
                    _1999 = mem[_1580 + ceil32(return_data.size)]
                    mem[_1806 + ceil32(_1858) + 160] = mem[_1580 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _1999:
                        mem[_1806 + ceil32(_1858) + idx + 192] = mem[_1580 + ceil32(return_data.size) + idx + 32]
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_1999) > _1999:
                        mem[_1806 + ceil32(_1858) + _1999 + 192] = 0
                    mem[_1806 + ceil32(_1858) + 96] = ceil32(_1999) + 64
                    mem[64] = _1806 + ceil32(_1858) + ceil32(_1999) + 192
                    if sha3(32, mem[_1806 + ceil32(_1858) + 160 len ceil32(_1999) + 32]) != _1975:
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        s = s + 1
                        t = t
                        continue 
                else:
                    mem[_1806 + _1858 + 96] = 0
                    _1989 = mem[64]
                    mem[mem[64]] = _1806 + ceil32(_1858) + -mem[64] + 64
                    mem[64] = _1806 + ceil32(_1858) + 96
                    _1991 = sha3(mem[_1989 + 32 len mem[_1989]])
                    mem[_1806 + ceil32(_1858) + 128] = 32
                    _2003 = mem[_1580 + ceil32(return_data.size)]
                    mem[_1806 + ceil32(_1858) + 160] = mem[_1580 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _2003:
                        mem[_1806 + ceil32(_1858) + idx + 192] = mem[_1580 + ceil32(return_data.size) + idx + 32]
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_2003) > _2003:
                        mem[_1806 + ceil32(_1858) + _2003 + 192] = 0
                    mem[_1806 + ceil32(_1858) + 96] = ceil32(_2003) + 64
                    mem[64] = _1806 + ceil32(_1858) + ceil32(_2003) + 192
                    if sha3(mem[_1806 + ceil32(_1858) + 128 len Mask(8 * -ceil32(_1858) + _1858 + 32, 0, 0), mem[_1806 + _1858 + 128 len -_1858 + ceil32(_1858)]]) != _1991:
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        s = s + 1
                        t = t
                        continue 
            else:
                mem[_1580 + ceil32(return_data.size) + _1618 + 32] = 0
                _1808 = mem[64]
                mem[mem[64] + 32] = 32
                _1860 = mem[_1296]
                mem[mem[64] + 64] = mem[_1296]
                idx = 0
                while idx < _1860:
                    mem[mem[64] + idx + 96] = mem[_1296 + idx + 32]
                    _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                    idx = idx + 32
                    continue 
                if ceil32(_1860) <= _1860:
                    _1977 = mem[64]
                    mem[mem[64]] = _1808 + ceil32(_1860) + -mem[64] + 64
                    mem[64] = _1808 + ceil32(_1860) + 96
                    _1979 = sha3(mem[_1977 + 32 len mem[_1977]])
                    mem[_1808 + ceil32(_1860) + 128] = 32
                    _2000 = mem[_1580 + ceil32(return_data.size)]
                    mem[_1808 + ceil32(_1860) + 160] = mem[_1580 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _2000:
                        mem[_1808 + ceil32(_1860) + idx + 192] = mem[_1580 + ceil32(return_data.size) + idx + 32]
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_2000) > _2000:
                        mem[_1808 + ceil32(_1860) + _2000 + 192] = 0
                    mem[_1808 + ceil32(_1860) + 96] = ceil32(_2000) + 64
                    mem[64] = _1808 + ceil32(_1860) + ceil32(_2000) + 192
                    if sha3(32, mem[_1808 + ceil32(_1860) + 160 len ceil32(_2000) + 32]) != _1979:
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        s = s + 1
                        t = t
                        continue 
                else:
                    mem[_1808 + _1860 + 96] = 0
                    _1993 = mem[64]
                    mem[mem[64]] = _1808 + ceil32(_1860) + -mem[64] + 64
                    mem[64] = _1808 + ceil32(_1860) + 96
                    _1995 = sha3(mem[_1993 + 32 len mem[_1993]])
                    mem[_1808 + ceil32(_1860) + 128] = 32
                    _2004 = mem[_1580 + ceil32(return_data.size)]
                    mem[_1808 + ceil32(_1860) + 160] = mem[_1580 + ceil32(return_data.size)]
                    idx = 0
                    while idx < _2004:
                        mem[_1808 + ceil32(_1860) + idx + 192] = mem[_1580 + ceil32(return_data.size) + idx + 32]
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        idx = idx + 32
                        continue 
                    if ceil32(_2004) > _2004:
                        mem[_1808 + ceil32(_1860) + _2004 + 192] = 0
                    mem[_1808 + ceil32(_1860) + 96] = ceil32(_2004) + 64
                    mem[64] = _1808 + ceil32(_1860) + ceil32(_2004) + 192
                    if sha3(mem[_1808 + ceil32(_1860) + 128 len Mask(8 * -ceil32(_1860) + _1860 + 32, 0, 0), mem[_1808 + _1860 + 128 len -_1860 + ceil32(_1860)]]) != _1995:
                        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
                        s = s + 1
                        t = t
                        continue 
            _1286 = mem[(2 * ceil32(return_data.size)) + 288]
            s = s + 1
            t = 1
            continue 
        if not t:
            _1560 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            mem[_1560] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
            mem[_1560 + 32] = 0
            require idx < mem[_357]
            mem[(32 * idx) + _357 + 32] = _1560
        else:
            _1562 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(2 * ceil32(return_data.size)) + 288]
            mem[_1562] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20]
            mem[_1562 + 32] = 1
            require idx < mem[_357]
            mem[(32 * idx) + _357 + 32] = _1562
        _1286 = mem[(2 * ceil32(return_data.size)) + 288]
        idx = idx + 1
        continue 
    _1295 = mem[64]
    mem[mem[64]] = 32
    _1302 = mem[_357]
    mem[mem[64] + 32] = mem[_357]
    idx = 0
    s = _357 + 32
    t = mem[64] + 64
    while idx < _1302:
        _1552 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1552 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _1295 + (64 * _1302) + -mem[64] + 64
}

function getAuthorityDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    require ext_code.size(stor4)
    staticcall stor4.0xf227a99f with:
            gas gas_remaining wei
           args arg1
    mem[288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[56 len 8]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[88 len 8]
    mem[64] = ceil32(return_data.size) + (32 * uint64(ext_call.return_data[64])) + 416
    if not ext_call.return_data[88 len 8]:
        idx = 0
        s = mem[ceil32(return_data.size) + 288]
        while idx < uint64(ext_call.return_data[64]):
            require idx < mem[ceil32(return_data.size) + 384]
            mem[(32 * idx) + ceil32(return_data.size) + 416] = uint64(s)
            _530 = mem[64]
            mem[64] = mem[64] + 64
            mem[_530] = 0
            mem[_530 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _586 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_576] == mem[_576 + 24 len 8]
            mem[_586] = mem[_576]
            require mem[_576 + 32] == mem[_576 + 56 len 8]
            mem[_586 + 32] = mem[_576 + 32]
            idx = idx + 1
            s = mem[_586 + 32]
            continue 
        _526 = mem[ceil32(return_data.size) + 384]
        _527 = mem[64]
        mem[mem[64]] = mem[ceil32(return_data.size) + 384]
        mem[64] = mem[64] + (32 * _526) + 32
        if not _526:
            _1030 = mem[ceil32(return_data.size) + 384]
            idx = 0
            while idx < _1030:
                require idx < mem[ceil32(return_data.size) + 384]
                _1039 = mem[(32 * idx) + ceil32(return_data.size) + 416]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 440 len 8]
                require ext_code.size(stor4)
                staticcall stor4.0x60330d79 with:
                        gas gas_remaining wei
                       args (_1039 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1062] == mem[_1062 + 12 len 20]
                require idx < mem[_527]
                mem[(32 * idx) + _527 + 32] = mem[_1062 + 12 len 20]
                _1030 = mem[ceil32(return_data.size) + 384]
                idx = idx + 1
                continue 
            _1038 = mem[64]
            mem[64] = mem[64] + 96
            _1050 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1050] = 0
            mem[_1050 + 32] = 0
            mem[_1050 + 64] = 0
            require ext_code.size(stor4)
            staticcall stor4.0xf227a99f with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1074 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1078 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_1074] == mem[_1074 + 24 len 8]
            mem[_1078] = mem[_1074]
            require mem[_1074 + 32] == mem[_1074 + 56 len 8]
            mem[_1078 + 32] = mem[_1074 + 32]
            require mem[_1074 + 64] == mem[_1074 + 88 len 8]
            mem[_1078 + 64] = mem[_1074 + 64]
            _1098 = mem[_1078 + 64]
            _1099 = mem[64]
            mem[mem[64]] = mem[_1078 + 88 len 8]
            mem[64] = mem[64] + (32 * uint64(_1098)) + 32
            if not uint64(_1098):
                _1514 = mem[_1078 + 64]
                idx = 0
                s = mem[_1078]
                while idx < uint64(_1514):
                    require idx < mem[_1099]
                    mem[(32 * idx) + _1099 + 32] = uint64(s)
                    _1532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1532] = 0
                    mem[_1532 + 32] = 0
                    mem[mem[64] + 36] = uint64(s)
                    require ext_code.size(stor4)
                    staticcall stor4.0x748e6e18 with:
                            gas gas_remaining wei
                           args address(arg1), uint64(s)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1795 = mem[64]
                    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                    mem[64] = mem[64] + 64
                    require mem[_1730] == mem[_1730 + 24 len 8]
                    mem[_1795] = mem[_1730]
                    require mem[_1730 + 32] == mem[_1730 + 56 len 8]
                    mem[_1795 + 32] = mem[_1730 + 32]
                    _1514 = mem[_1078 + 64]
                    idx = idx + 1
                    s = mem[_1795 + 32]
                    continue 
                mem[_1038] = _1099
                mem[_1038 + 32] = _527
                _1530 = mem[_527]
                _1531 = mem[64]
                mem[mem[64]] = mem[_527]
                mem[64] = mem[64] + (32 * _1530) + 32
                if not _1530:
                    _1914 = mem[_527]
                    idx = 0
                    while idx < _1914:
                        require idx < mem[_527]
                        require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                        staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2010] == mem[_2010]
                        require idx < mem[_1531]
                        mem[(32 * idx) + _1531 + 32] = mem[_2010]
                        _1914 = mem[_527]
                        idx = idx + 1
                        continue 
                    mem[_1038 + 64] = _1531
                    mem[mem[64]] = 32
                    _2026 = mem[_1038]
                    mem[mem[64] + 32] = 96
                    _2042 = mem[_2026]
                    mem[mem[64] + 128] = mem[_2026]
                    idx = 0
                    s = _2026 + 32
                    t = mem[64] + 160
                    while idx < _2042:
                        mem[t] = mem[s + 24 len 8]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _2234 = mem[_1038 + 32]
                    mem[mem[64] + 64] = (32 * _2042) + 128
                    _2250 = mem[_2234]
                    mem[mem[64] + (32 * _2042) + 160] = mem[_2234]
                    idx = 0
                    s = _2234 + 32
                    t = mem[64] + (32 * _2042) + 192
                    while idx < _2250:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _2362 = mem[_1038 + 64]
                    mem[mem[64] + 96] = (32 * _2042) + (32 * _2250) + 160
                    _2378 = mem[_2362]
                    mem[mem[64] + (32 * _2042) + (32 * _2250) + 192] = mem[_2362]
                    mem[mem[64] + (32 * _2042) + (32 * _2250) + 224 len 32 * _2378] = mem[_2362 + 32 len 32 * _2378]
                    return 32, 96, 
                           (32 * _2042) + 128,
                           (32 * _2042) + (32 * _2250) + 160,
                           mem[mem[64] + 128 len (32 * _2042) + (32 * _2250) + (32 * _2378) + 96]
                mem[_1531 + 32 len 32 * _1530] = code.data[12895 len 32 * _1530]
                _1915 = mem[_527]
                idx = 0
                while idx < _1915:
                    require idx < mem[_527]
                    require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                    staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2011] == mem[_2011]
                    require idx < mem[_1531]
                    mem[(32 * idx) + _1531 + 32] = mem[_2011]
                    _1915 = mem[_527]
                    idx = idx + 1
                    continue 
                mem[_1038 + 64] = _1531
                mem[mem[64]] = 32
                _2027 = mem[_1038]
                mem[mem[64] + 32] = 96
                _2044 = mem[_2027]
                mem[mem[64] + 128] = mem[_2027]
                idx = 0
                s = _2027 + 32
                t = mem[64] + 160
                while idx < _2044:
                    mem[t] = mem[s + 24 len 8]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2235 = mem[_1038 + 32]
                mem[mem[64] + 64] = (32 * _2044) + 128
                _2251 = mem[_2235]
                mem[mem[64] + (32 * _2044) + 160] = mem[_2235]
                idx = 0
                s = _2235 + 32
                t = mem[64] + (32 * _2044) + 192
                while idx < _2251:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2363 = mem[_1038 + 64]
                mem[mem[64] + 96] = (32 * _2044) + (32 * _2251) + 160
                _2379 = mem[_2363]
                mem[mem[64] + (32 * _2044) + (32 * _2251) + 192] = mem[_2363]
                mem[mem[64] + (32 * _2044) + (32 * _2251) + 224 len 32 * _2379] = mem[_2363 + 32 len 32 * _2379]
                return 32, 96, 
                       (32 * _2044) + 128,
                       (32 * _2044) + (32 * _2251) + 160,
                       mem[mem[64] + 128 len (32 * _2044) + (32 * _2251) + (32 * _2379) + 96]
            mem[_1099 + 32 len 32 * uint64(_1098)] = code.data[12895 len 32 * uint64(_1098)]
            _1515 = mem[_1078 + 64]
            idx = 0
            s = mem[_1078]
            while idx < uint64(_1515):
                require idx < mem[_1099]
                mem[(32 * idx) + _1099 + 32] = uint64(s)
                _1535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1535] = 0
                mem[_1535 + 32] = 0
                mem[mem[64] + 36] = uint64(s)
                require ext_code.size(stor4)
                staticcall stor4.0x748e6e18 with:
                        gas gas_remaining wei
                       args address(arg1), uint64(s)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1797 = mem[64]
                require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                mem[64] = mem[64] + 64
                require mem[_1731] == mem[_1731 + 24 len 8]
                mem[_1797] = mem[_1731]
                require mem[_1731 + 32] == mem[_1731 + 56 len 8]
                mem[_1797 + 32] = mem[_1731 + 32]
                _1515 = mem[_1078 + 64]
                idx = idx + 1
                s = mem[_1797 + 32]
                continue 
            mem[_1038] = _1099
            mem[_1038 + 32] = _527
            _1533 = mem[_527]
            _1534 = mem[64]
            mem[mem[64]] = mem[_527]
            mem[64] = mem[64] + (32 * _1533) + 32
            if not _1533:
                _1916 = mem[_527]
                idx = 0
                while idx < _1916:
                    require idx < mem[_527]
                    require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                    staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2012] == mem[_2012]
                    require idx < mem[_1534]
                    mem[(32 * idx) + _1534 + 32] = mem[_2012]
                    _1916 = mem[_527]
                    idx = idx + 1
                    continue 
                mem[_1038 + 64] = _1534
                mem[mem[64]] = 32
                _2028 = mem[_1038]
                mem[mem[64] + 32] = 96
                _2046 = mem[_2028]
                mem[mem[64] + 128] = mem[_2028]
                idx = 0
                s = _2028 + 32
                t = mem[64] + 160
                while idx < _2046:
                    mem[t] = mem[s + 24 len 8]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2236 = mem[_1038 + 32]
                mem[mem[64] + 64] = (32 * _2046) + 128
                _2252 = mem[_2236]
                mem[mem[64] + (32 * _2046) + 160] = mem[_2236]
                idx = 0
                s = _2236 + 32
                t = mem[64] + (32 * _2046) + 192
                while idx < _2252:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2364 = mem[_1038 + 64]
                mem[mem[64] + 96] = (32 * _2046) + (32 * _2252) + 160
                _2380 = mem[_2364]
                mem[mem[64] + (32 * _2046) + (32 * _2252) + 192] = mem[_2364]
                mem[mem[64] + (32 * _2046) + (32 * _2252) + 224 len 32 * _2380] = mem[_2364 + 32 len 32 * _2380]
                return 32, 96, 
                       (32 * _2046) + 128,
                       (32 * _2046) + (32 * _2252) + 160,
                       mem[mem[64] + 128 len (32 * _2046) + (32 * _2252) + (32 * _2380) + 96]
            mem[_1534 + 32 len 32 * _1533] = code.data[12895 len 32 * _1533]
            _1917 = mem[_527]
            idx = 0
            while idx < _1917:
                require idx < mem[_527]
                require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2013 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2013] == mem[_2013]
                require idx < mem[_1534]
                mem[(32 * idx) + _1534 + 32] = mem[_2013]
                _1917 = mem[_527]
                idx = idx + 1
                continue 
            mem[_1038 + 64] = _1534
            mem[mem[64]] = 32
            _2029 = mem[_1038]
            mem[mem[64] + 32] = 96
            _2048 = mem[_2029]
            mem[mem[64] + 128] = mem[_2029]
            idx = 0
            s = _2029 + 32
            t = mem[64] + 160
            while idx < _2048:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2237 = mem[_1038 + 32]
            mem[mem[64] + 64] = (32 * _2048) + 128
            _2253 = mem[_2237]
            mem[mem[64] + (32 * _2048) + 160] = mem[_2237]
            idx = 0
            s = _2237 + 32
            t = mem[64] + (32 * _2048) + 192
            while idx < _2253:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2365 = mem[_1038 + 64]
            mem[mem[64] + 96] = (32 * _2048) + (32 * _2253) + 160
            _2381 = mem[_2365]
            mem[mem[64] + (32 * _2048) + (32 * _2253) + 192] = mem[_2365]
            mem[mem[64] + (32 * _2048) + (32 * _2253) + 224 len 32 * _2381] = mem[_2365 + 32 len 32 * _2381]
            return 32, 96, 
                   (32 * _2048) + 128,
                   (32 * _2048) + (32 * _2253) + 160,
                   mem[mem[64] + 128 len (32 * _2048) + (32 * _2253) + (32 * _2381) + 96]
        mem[_527 + 32 len 32 * _526] = code.data[12895 len 32 * _526]
        _1031 = mem[ceil32(return_data.size) + 384]
        idx = 0
        while idx < _1031:
            require idx < mem[ceil32(return_data.size) + 384]
            _1041 = mem[(32 * idx) + ceil32(return_data.size) + 416]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 440 len 8]
            require ext_code.size(stor4)
            staticcall stor4.0x60330d79 with:
                    gas gas_remaining wei
                   args (_1041 << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1063] == mem[_1063 + 12 len 20]
            require idx < mem[_527]
            mem[(32 * idx) + _527 + 32] = mem[_1063 + 12 len 20]
            _1031 = mem[ceil32(return_data.size) + 384]
            idx = idx + 1
            continue 
        _1040 = mem[64]
        mem[64] = mem[64] + 96
        _1051 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1051] = 0
        mem[_1051 + 32] = 0
        mem[_1051 + 64] = 0
        require ext_code.size(stor4)
        staticcall stor4.0xf227a99f with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1075 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1079 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require mem[_1075] == mem[_1075 + 24 len 8]
        mem[_1079] = mem[_1075]
        require mem[_1075 + 32] == mem[_1075 + 56 len 8]
        mem[_1079 + 32] = mem[_1075 + 32]
        require mem[_1075 + 64] == mem[_1075 + 88 len 8]
        mem[_1079 + 64] = mem[_1075 + 64]
        _1100 = mem[_1079 + 64]
        _1101 = mem[64]
        mem[mem[64]] = mem[_1079 + 88 len 8]
        mem[64] = mem[64] + (32 * uint64(_1100)) + 32
        if not uint64(_1100):
            _1516 = mem[_1079 + 64]
            idx = 0
            s = mem[_1079]
            while idx < uint64(_1516):
                require idx < mem[_1101]
                mem[(32 * idx) + _1101 + 32] = uint64(s)
                _1538 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1538] = 0
                mem[_1538 + 32] = 0
                mem[mem[64] + 36] = uint64(s)
                require ext_code.size(stor4)
                staticcall stor4.0x748e6e18 with:
                        gas gas_remaining wei
                       args address(arg1), uint64(s)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1799 = mem[64]
                require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                mem[64] = mem[64] + 64
                require mem[_1732] == mem[_1732 + 24 len 8]
                mem[_1799] = mem[_1732]
                require mem[_1732 + 32] == mem[_1732 + 56 len 8]
                mem[_1799 + 32] = mem[_1732 + 32]
                _1516 = mem[_1079 + 64]
                idx = idx + 1
                s = mem[_1799 + 32]
                continue 
            mem[_1040] = _1101
            mem[_1040 + 32] = _527
            _1536 = mem[_527]
            _1537 = mem[64]
            mem[mem[64]] = mem[_527]
            mem[64] = mem[64] + (32 * _1536) + 32
            if not _1536:
                _1918 = mem[_527]
                idx = 0
                while idx < _1918:
                    require idx < mem[_527]
                    require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                    staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2014] == mem[_2014]
                    require idx < mem[_1537]
                    mem[(32 * idx) + _1537 + 32] = mem[_2014]
                    _1918 = mem[_527]
                    idx = idx + 1
                    continue 
                mem[_1040 + 64] = _1537
                mem[mem[64]] = 32
                _2030 = mem[_1040]
                mem[mem[64] + 32] = 96
                _2050 = mem[_2030]
                mem[mem[64] + 128] = mem[_2030]
                idx = 0
                s = _2030 + 32
                t = mem[64] + 160
                while idx < _2050:
                    mem[t] = mem[s + 24 len 8]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2238 = mem[_1040 + 32]
                mem[mem[64] + 64] = (32 * _2050) + 128
                _2254 = mem[_2238]
                mem[mem[64] + (32 * _2050) + 160] = mem[_2238]
                idx = 0
                s = _2238 + 32
                t = mem[64] + (32 * _2050) + 192
                while idx < _2254:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2366 = mem[_1040 + 64]
                mem[mem[64] + 96] = (32 * _2050) + (32 * _2254) + 160
                _2382 = mem[_2366]
                mem[mem[64] + (32 * _2050) + (32 * _2254) + 192] = mem[_2366]
                mem[mem[64] + (32 * _2050) + (32 * _2254) + 224 len 32 * _2382] = mem[_2366 + 32 len 32 * _2382]
                return 32, 96, 
                       (32 * _2050) + 128,
                       (32 * _2050) + (32 * _2254) + 160,
                       mem[mem[64] + 128 len (32 * _2050) + (32 * _2254) + (32 * _2382) + 96]
            mem[_1537 + 32 len 32 * _1536] = code.data[12895 len 32 * _1536]
            _1919 = mem[_527]
            idx = 0
            while idx < _1919:
                require idx < mem[_527]
                require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2015 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2015] == mem[_2015]
                require idx < mem[_1537]
                mem[(32 * idx) + _1537 + 32] = mem[_2015]
                _1919 = mem[_527]
                idx = idx + 1
                continue 
            mem[_1040 + 64] = _1537
            mem[mem[64]] = 32
            _2031 = mem[_1040]
            mem[mem[64] + 32] = 96
            _2052 = mem[_2031]
            mem[mem[64] + 128] = mem[_2031]
            idx = 0
            s = _2031 + 32
            t = mem[64] + 160
            while idx < _2052:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2239 = mem[_1040 + 32]
            mem[mem[64] + 64] = (32 * _2052) + 128
            _2255 = mem[_2239]
            mem[mem[64] + (32 * _2052) + 160] = mem[_2239]
            idx = 0
            s = _2239 + 32
            t = mem[64] + (32 * _2052) + 192
            while idx < _2255:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2367 = mem[_1040 + 64]
            mem[mem[64] + 96] = (32 * _2052) + (32 * _2255) + 160
            _2383 = mem[_2367]
            mem[mem[64] + (32 * _2052) + (32 * _2255) + 192] = mem[_2367]
            mem[mem[64] + (32 * _2052) + (32 * _2255) + 224 len 32 * _2383] = mem[_2367 + 32 len 32 * _2383]
            return 32, 96, 
                   (32 * _2052) + 128,
                   (32 * _2052) + (32 * _2255) + 160,
                   mem[mem[64] + 128 len (32 * _2052) + (32 * _2255) + (32 * _2383) + 96]
        mem[_1101 + 32 len 32 * uint64(_1100)] = code.data[12895 len 32 * uint64(_1100)]
        _1517 = mem[_1079 + 64]
        idx = 0
        s = mem[_1079]
        while idx < uint64(_1517):
            require idx < mem[_1101]
            mem[(32 * idx) + _1101 + 32] = uint64(s)
            _1541 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1541] = 0
            mem[_1541 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1733 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1801 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_1733] == mem[_1733 + 24 len 8]
            mem[_1801] = mem[_1733]
            require mem[_1733 + 32] == mem[_1733 + 56 len 8]
            mem[_1801 + 32] = mem[_1733 + 32]
            _1517 = mem[_1079 + 64]
            idx = idx + 1
            s = mem[_1801 + 32]
            continue 
        mem[_1040] = _1101
        mem[_1040 + 32] = _527
        _1539 = mem[_527]
        _1540 = mem[64]
        mem[mem[64]] = mem[_527]
        mem[64] = mem[64] + (32 * _1539) + 32
        if not _1539:
            _1920 = mem[_527]
            idx = 0
            while idx < _1920:
                require idx < mem[_527]
                require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
                staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2016 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2016] == mem[_2016]
                require idx < mem[_1540]
                mem[(32 * idx) + _1540 + 32] = mem[_2016]
                _1920 = mem[_527]
                idx = idx + 1
                continue 
            mem[_1040 + 64] = _1540
            mem[mem[64]] = 32
            _2032 = mem[_1040]
            mem[mem[64] + 32] = 96
            _2054 = mem[_2032]
            mem[mem[64] + 128] = mem[_2032]
            idx = 0
            s = _2032 + 32
            t = mem[64] + 160
            while idx < _2054:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2240 = mem[_1040 + 32]
            mem[mem[64] + 64] = (32 * _2054) + 128
            _2256 = mem[_2240]
            mem[mem[64] + (32 * _2054) + 160] = mem[_2240]
            idx = 0
            s = _2240 + 32
            t = mem[64] + (32 * _2054) + 192
            while idx < _2256:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2368 = mem[_1040 + 64]
            mem[mem[64] + 96] = (32 * _2054) + (32 * _2256) + 160
            _2384 = mem[_2368]
            mem[mem[64] + (32 * _2054) + (32 * _2256) + 192] = mem[_2368]
            mem[mem[64] + (32 * _2054) + (32 * _2256) + 224 len 32 * _2384] = mem[_2368 + 32 len 32 * _2384]
            return 32, 96, 
                   (32 * _2054) + 128,
                   (32 * _2054) + (32 * _2256) + 160,
                   mem[mem[64] + 128 len (32 * _2054) + (32 * _2256) + (32 * _2384) + 96]
        mem[_1540 + 32 len 32 * _1539] = code.data[12895 len 32 * _1539]
        _1921 = mem[_527]
        idx = 0
        while idx < _1921:
            require idx < mem[_527]
            require ext_code.size(mem[(32 * idx) + _527 + 44 len 20])
            staticcall mem[(32 * idx) + _527 + 44 len 20].0x54fd4d50 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2017 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2017] == mem[_2017]
            require idx < mem[_1540]
            mem[(32 * idx) + _1540 + 32] = mem[_2017]
            _1921 = mem[_527]
            idx = idx + 1
            continue 
        mem[_1040 + 64] = _1540
        mem[mem[64]] = 32
        _2033 = mem[_1040]
        mem[mem[64] + 32] = 96
        _2056 = mem[_2033]
        mem[mem[64] + 128] = mem[_2033]
        idx = 0
        s = _2033 + 32
        t = mem[64] + 160
        while idx < _2056:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2241 = mem[_1040 + 32]
        mem[mem[64] + 64] = (32 * _2056) + 128
        _2257 = mem[_2241]
        mem[mem[64] + (32 * _2056) + 160] = mem[_2241]
        idx = 0
        s = _2241 + 32
        t = mem[64] + (32 * _2056) + 192
        while idx < _2257:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2369 = mem[_1040 + 64]
        mem[mem[64] + 96] = (32 * _2056) + (32 * _2257) + 160
        _2385 = mem[_2369]
        mem[mem[64] + (32 * _2056) + (32 * _2257) + 192] = mem[_2369]
        mem[mem[64] + (32 * _2056) + (32 * _2257) + 224 len 32 * _2385] = mem[_2369 + 32 len 32 * _2385]
        return 32, 96, 
               (32 * _2056) + 128,
               (32 * _2056) + (32 * _2257) + 160,
               mem[mem[64] + 128 len (32 * _2056) + (32 * _2257) + (32 * _2385) + 96]
    mem[ceil32(return_data.size) + 416 len 32 * uint64(ext_call.return_data[64])] = code.data[12895 len 32 * uint64(ext_call.return_data[64])]
    idx = 0
    s = mem[ceil32(return_data.size) + 288]
    while idx < uint64(ext_call.return_data[64]):
        require idx < mem[ceil32(return_data.size) + 384]
        mem[(32 * idx) + ceil32(return_data.size) + 416] = uint64(s)
        _531 = mem[64]
        mem[64] = mem[64] + 64
        mem[_531] = 0
        mem[_531 + 32] = 0
        mem[mem[64] + 36] = uint64(s)
        require ext_code.size(stor4)
        staticcall stor4.0x748e6e18 with:
                gas gas_remaining wei
               args address(arg1), uint64(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _579 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _587 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_579] == mem[_579 + 24 len 8]
        mem[_587] = mem[_579]
        require mem[_579 + 32] == mem[_579 + 56 len 8]
        mem[_587 + 32] = mem[_579 + 32]
        idx = idx + 1
        s = mem[_587 + 32]
        continue 
    _528 = mem[ceil32(return_data.size) + 384]
    _529 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 384]
    mem[64] = mem[64] + (32 * _528) + 32
    if not _528:
        _1032 = mem[ceil32(return_data.size) + 384]
        idx = 0
        while idx < _1032:
            require idx < mem[ceil32(return_data.size) + 384]
            _1043 = mem[(32 * idx) + ceil32(return_data.size) + 416]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 440 len 8]
            require ext_code.size(stor4)
            staticcall stor4.0x60330d79 with:
                    gas gas_remaining wei
                   args (_1043 << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1064] == mem[_1064 + 12 len 20]
            require idx < mem[_529]
            mem[(32 * idx) + _529 + 32] = mem[_1064 + 12 len 20]
            _1032 = mem[ceil32(return_data.size) + 384]
            idx = idx + 1
            continue 
        _1042 = mem[64]
        mem[64] = mem[64] + 96
        _1052 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1052] = 0
        mem[_1052 + 32] = 0
        mem[_1052 + 64] = 0
        require ext_code.size(stor4)
        staticcall stor4.0xf227a99f with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1076 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1080 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require mem[_1076] == mem[_1076 + 24 len 8]
        mem[_1080] = mem[_1076]
        require mem[_1076 + 32] == mem[_1076 + 56 len 8]
        mem[_1080 + 32] = mem[_1076 + 32]
        require mem[_1076 + 64] == mem[_1076 + 88 len 8]
        mem[_1080 + 64] = mem[_1076 + 64]
        _1102 = mem[_1080 + 64]
        _1103 = mem[64]
        mem[mem[64]] = mem[_1080 + 88 len 8]
        mem[64] = mem[64] + (32 * uint64(_1102)) + 32
        if not uint64(_1102):
            _1518 = mem[_1080 + 64]
            idx = 0
            s = mem[_1080]
            while idx < uint64(_1518):
                require idx < mem[_1103]
                mem[(32 * idx) + _1103 + 32] = uint64(s)
                _1544 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1544] = 0
                mem[_1544 + 32] = 0
                mem[mem[64] + 36] = uint64(s)
                require ext_code.size(stor4)
                staticcall stor4.0x748e6e18 with:
                        gas gas_remaining wei
                       args address(arg1), uint64(s)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1803 = mem[64]
                require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                mem[64] = mem[64] + 64
                require mem[_1734] == mem[_1734 + 24 len 8]
                mem[_1803] = mem[_1734]
                require mem[_1734 + 32] == mem[_1734 + 56 len 8]
                mem[_1803 + 32] = mem[_1734 + 32]
                _1518 = mem[_1080 + 64]
                idx = idx + 1
                s = mem[_1803 + 32]
                continue 
            mem[_1042] = _1103
            mem[_1042 + 32] = _529
            _1542 = mem[_529]
            _1543 = mem[64]
            mem[mem[64]] = mem[_529]
            mem[64] = mem[64] + (32 * _1542) + 32
            if not _1542:
                _1922 = mem[_529]
                idx = 0
                while idx < _1922:
                    require idx < mem[_529]
                    require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
                    staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2018 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2018] == mem[_2018]
                    require idx < mem[_1543]
                    mem[(32 * idx) + _1543 + 32] = mem[_2018]
                    _1922 = mem[_529]
                    idx = idx + 1
                    continue 
                mem[_1042 + 64] = _1543
                mem[mem[64]] = 32
                _2034 = mem[_1042]
                mem[mem[64] + 32] = 96
                _2058 = mem[_2034]
                mem[mem[64] + 128] = mem[_2034]
                idx = 0
                s = _2034 + 32
                t = mem[64] + 160
                while idx < _2058:
                    mem[t] = mem[s + 24 len 8]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2242 = mem[_1042 + 32]
                mem[mem[64] + 64] = (32 * _2058) + 128
                _2258 = mem[_2242]
                mem[mem[64] + (32 * _2058) + 160] = mem[_2242]
                idx = 0
                s = _2242 + 32
                t = mem[64] + (32 * _2058) + 192
                while idx < _2258:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _2370 = mem[_1042 + 64]
                mem[mem[64] + 96] = (32 * _2058) + (32 * _2258) + 160
                _2386 = mem[_2370]
                mem[mem[64] + (32 * _2058) + (32 * _2258) + 192] = mem[_2370]
                mem[mem[64] + (32 * _2058) + (32 * _2258) + 224 len 32 * _2386] = mem[_2370 + 32 len 32 * _2386]
                return 32, 96, 
                       (32 * _2058) + 128,
                       (32 * _2058) + (32 * _2258) + 160,
                       mem[mem[64] + 128 len (32 * _2058) + (32 * _2258) + (32 * _2386) + 96]
            mem[_1543 + 32 len 32 * _1542] = code.data[12895 len 32 * _1542]
            _1923 = mem[_529]
            idx = 0
            while idx < _1923:
                require idx < mem[_529]
                require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
                staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2019] == mem[_2019]
                require idx < mem[_1543]
                mem[(32 * idx) + _1543 + 32] = mem[_2019]
                _1923 = mem[_529]
                idx = idx + 1
                continue 
            mem[_1042 + 64] = _1543
            mem[mem[64]] = 32
            _2035 = mem[_1042]
            mem[mem[64] + 32] = 96
            _2060 = mem[_2035]
            mem[mem[64] + 128] = mem[_2035]
            idx = 0
            s = _2035 + 32
            t = mem[64] + 160
            while idx < _2060:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2243 = mem[_1042 + 32]
            mem[mem[64] + 64] = (32 * _2060) + 128
            _2259 = mem[_2243]
            mem[mem[64] + (32 * _2060) + 160] = mem[_2243]
            idx = 0
            s = _2243 + 32
            t = mem[64] + (32 * _2060) + 192
            while idx < _2259:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2371 = mem[_1042 + 64]
            mem[mem[64] + 96] = (32 * _2060) + (32 * _2259) + 160
            _2387 = mem[_2371]
            mem[mem[64] + (32 * _2060) + (32 * _2259) + 192] = mem[_2371]
            mem[mem[64] + (32 * _2060) + (32 * _2259) + 224 len 32 * _2387] = mem[_2371 + 32 len 32 * _2387]
            return 32, 96, 
                   (32 * _2060) + 128,
                   (32 * _2060) + (32 * _2259) + 160,
                   mem[mem[64] + 128 len (32 * _2060) + (32 * _2259) + (32 * _2387) + 96]
        mem[_1103 + 32 len 32 * uint64(_1102)] = code.data[12895 len 32 * uint64(_1102)]
        _1519 = mem[_1080 + 64]
        idx = 0
        s = mem[_1080]
        while idx < uint64(_1519):
            require idx < mem[_1103]
            mem[(32 * idx) + _1103 + 32] = uint64(s)
            _1547 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1547] = 0
            mem[_1547 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1805 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_1735] == mem[_1735 + 24 len 8]
            mem[_1805] = mem[_1735]
            require mem[_1735 + 32] == mem[_1735 + 56 len 8]
            mem[_1805 + 32] = mem[_1735 + 32]
            _1519 = mem[_1080 + 64]
            idx = idx + 1
            s = mem[_1805 + 32]
            continue 
        mem[_1042] = _1103
        mem[_1042 + 32] = _529
        _1545 = mem[_529]
        _1546 = mem[64]
        mem[mem[64]] = mem[_529]
        mem[64] = mem[64] + (32 * _1545) + 32
        if not _1545:
            _1924 = mem[_529]
            idx = 0
            while idx < _1924:
                require idx < mem[_529]
                require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
                staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2020 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2020] == mem[_2020]
                require idx < mem[_1546]
                mem[(32 * idx) + _1546 + 32] = mem[_2020]
                _1924 = mem[_529]
                idx = idx + 1
                continue 
            mem[_1042 + 64] = _1546
            mem[mem[64]] = 32
            _2036 = mem[_1042]
            mem[mem[64] + 32] = 96
            _2062 = mem[_2036]
            mem[mem[64] + 128] = mem[_2036]
            idx = 0
            s = _2036 + 32
            t = mem[64] + 160
            while idx < _2062:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2244 = mem[_1042 + 32]
            mem[mem[64] + 64] = (32 * _2062) + 128
            _2260 = mem[_2244]
            mem[mem[64] + (32 * _2062) + 160] = mem[_2244]
            idx = 0
            s = _2244 + 32
            t = mem[64] + (32 * _2062) + 192
            while idx < _2260:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2372 = mem[_1042 + 64]
            mem[mem[64] + 96] = (32 * _2062) + (32 * _2260) + 160
            _2388 = mem[_2372]
            mem[mem[64] + (32 * _2062) + (32 * _2260) + 192] = mem[_2372]
            mem[mem[64] + (32 * _2062) + (32 * _2260) + 224 len 32 * _2388] = mem[_2372 + 32 len 32 * _2388]
            return 32, 96, 
                   (32 * _2062) + 128,
                   (32 * _2062) + (32 * _2260) + 160,
                   mem[mem[64] + 128 len (32 * _2062) + (32 * _2260) + (32 * _2388) + 96]
        mem[_1546 + 32 len 32 * _1545] = code.data[12895 len 32 * _1545]
        _1925 = mem[_529]
        idx = 0
        while idx < _1925:
            require idx < mem[_529]
            require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
            staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2021 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2021] == mem[_2021]
            require idx < mem[_1546]
            mem[(32 * idx) + _1546 + 32] = mem[_2021]
            _1925 = mem[_529]
            idx = idx + 1
            continue 
        mem[_1042 + 64] = _1546
        mem[mem[64]] = 32
        _2037 = mem[_1042]
        mem[mem[64] + 32] = 96
        _2064 = mem[_2037]
        mem[mem[64] + 128] = mem[_2037]
        idx = 0
        s = _2037 + 32
        t = mem[64] + 160
        while idx < _2064:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2245 = mem[_1042 + 32]
        mem[mem[64] + 64] = (32 * _2064) + 128
        _2261 = mem[_2245]
        mem[mem[64] + (32 * _2064) + 160] = mem[_2245]
        idx = 0
        s = _2245 + 32
        t = mem[64] + (32 * _2064) + 192
        while idx < _2261:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2373 = mem[_1042 + 64]
        mem[mem[64] + 96] = (32 * _2064) + (32 * _2261) + 160
        _2389 = mem[_2373]
        mem[mem[64] + (32 * _2064) + (32 * _2261) + 192] = mem[_2373]
        mem[mem[64] + (32 * _2064) + (32 * _2261) + 224 len 32 * _2389] = mem[_2373 + 32 len 32 * _2389]
        return 32, 96, 
               (32 * _2064) + 128,
               (32 * _2064) + (32 * _2261) + 160,
               mem[mem[64] + 128 len (32 * _2064) + (32 * _2261) + (32 * _2389) + 96]
    mem[_529 + 32 len 32 * _528] = code.data[12895 len 32 * _528]
    _1033 = mem[ceil32(return_data.size) + 384]
    idx = 0
    while idx < _1033:
        require idx < mem[ceil32(return_data.size) + 384]
        _1045 = mem[(32 * idx) + ceil32(return_data.size) + 416]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 440 len 8]
        require ext_code.size(stor4)
        staticcall stor4.0x60330d79 with:
                gas gas_remaining wei
               args (_1045 << 192)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1065 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1065] == mem[_1065 + 12 len 20]
        require idx < mem[_529]
        mem[(32 * idx) + _529 + 32] = mem[_1065 + 12 len 20]
        _1033 = mem[ceil32(return_data.size) + 384]
        idx = idx + 1
        continue 
    _1044 = mem[64]
    mem[64] = mem[64] + 96
    _1053 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1053] = 0
    mem[_1053 + 32] = 0
    mem[_1053 + 64] = 0
    require ext_code.size(stor4)
    staticcall stor4.0xf227a99f with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1077 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _1081 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    require mem[_1077] == mem[_1077 + 24 len 8]
    mem[_1081] = mem[_1077]
    require mem[_1077 + 32] == mem[_1077 + 56 len 8]
    mem[_1081 + 32] = mem[_1077 + 32]
    require mem[_1077 + 64] == mem[_1077 + 88 len 8]
    mem[_1081 + 64] = mem[_1077 + 64]
    _1104 = mem[_1081 + 64]
    _1105 = mem[64]
    mem[mem[64]] = mem[_1081 + 88 len 8]
    mem[64] = mem[64] + (32 * uint64(_1104)) + 32
    if not uint64(_1104):
        _1520 = mem[_1081 + 64]
        idx = 0
        s = mem[_1081]
        while idx < uint64(_1520):
            require idx < mem[_1105]
            mem[(32 * idx) + _1105 + 32] = uint64(s)
            _1550 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1550] = 0
            mem[_1550 + 32] = 0
            mem[mem[64] + 36] = uint64(s)
            require ext_code.size(stor4)
            staticcall stor4.0x748e6e18 with:
                    gas gas_remaining wei
                   args address(arg1), uint64(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1736 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1807 = mem[64]
            require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
            mem[64] = mem[64] + 64
            require mem[_1736] == mem[_1736 + 24 len 8]
            mem[_1807] = mem[_1736]
            require mem[_1736 + 32] == mem[_1736 + 56 len 8]
            mem[_1807 + 32] = mem[_1736 + 32]
            _1520 = mem[_1081 + 64]
            idx = idx + 1
            s = mem[_1807 + 32]
            continue 
        mem[_1044] = _1105
        mem[_1044 + 32] = _529
        _1548 = mem[_529]
        _1549 = mem[64]
        mem[mem[64]] = mem[_529]
        mem[64] = mem[64] + (32 * _1548) + 32
        if not _1548:
            _1926 = mem[_529]
            idx = 0
            while idx < _1926:
                require idx < mem[_529]
                require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
                staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2022 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2022] == mem[_2022]
                require idx < mem[_1549]
                mem[(32 * idx) + _1549 + 32] = mem[_2022]
                _1926 = mem[_529]
                idx = idx + 1
                continue 
            mem[_1044 + 64] = _1549
            mem[mem[64]] = 32
            _2038 = mem[_1044]
            mem[mem[64] + 32] = 96
            _2066 = mem[_2038]
            mem[mem[64] + 128] = mem[_2038]
            idx = 0
            s = _2038 + 32
            t = mem[64] + 160
            while idx < _2066:
                mem[t] = mem[s + 24 len 8]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2246 = mem[_1044 + 32]
            mem[mem[64] + 64] = (32 * _2066) + 128
            _2262 = mem[_2246]
            mem[mem[64] + (32 * _2066) + 160] = mem[_2246]
            idx = 0
            s = _2246 + 32
            t = mem[64] + (32 * _2066) + 192
            while idx < _2262:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2374 = mem[_1044 + 64]
            mem[mem[64] + 96] = (32 * _2066) + (32 * _2262) + 160
            _2390 = mem[_2374]
            mem[mem[64] + (32 * _2066) + (32 * _2262) + 192] = mem[_2374]
            mem[mem[64] + (32 * _2066) + (32 * _2262) + 224 len 32 * _2390] = mem[_2374 + 32 len 32 * _2390]
            return 32, 96, 
                   (32 * _2066) + 128,
                   (32 * _2066) + (32 * _2262) + 160,
                   mem[mem[64] + 128 len (32 * _2066) + (32 * _2262) + (32 * _2390) + 96]
        mem[_1549 + 32 len 32 * _1548] = code.data[12895 len 32 * _1548]
        _1927 = mem[_529]
        idx = 0
        while idx < _1927:
            require idx < mem[_529]
            require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
            staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2023 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2023] == mem[_2023]
            require idx < mem[_1549]
            mem[(32 * idx) + _1549 + 32] = mem[_2023]
            _1927 = mem[_529]
            idx = idx + 1
            continue 
        mem[_1044 + 64] = _1549
        mem[mem[64]] = 32
        _2039 = mem[_1044]
        mem[mem[64] + 32] = 96
        _2068 = mem[_2039]
        mem[mem[64] + 128] = mem[_2039]
        idx = 0
        s = _2039 + 32
        t = mem[64] + 160
        while idx < _2068:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2247 = mem[_1044 + 32]
        mem[mem[64] + 64] = (32 * _2068) + 128
        _2263 = mem[_2247]
        mem[mem[64] + (32 * _2068) + 160] = mem[_2247]
        idx = 0
        s = _2247 + 32
        t = mem[64] + (32 * _2068) + 192
        while idx < _2263:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2375 = mem[_1044 + 64]
        mem[mem[64] + 96] = (32 * _2068) + (32 * _2263) + 160
        _2391 = mem[_2375]
        mem[mem[64] + (32 * _2068) + (32 * _2263) + 192] = mem[_2375]
        mem[mem[64] + (32 * _2068) + (32 * _2263) + 224 len 32 * _2391] = mem[_2375 + 32 len 32 * _2391]
        return 32, 96, 
               (32 * _2068) + 128,
               (32 * _2068) + (32 * _2263) + 160,
               mem[mem[64] + 128 len (32 * _2068) + (32 * _2263) + (32 * _2391) + 96]
    mem[_1105 + 32 len 32 * uint64(_1104)] = code.data[12895 len 32 * uint64(_1104)]
    _1521 = mem[_1081 + 64]
    idx = 0
    s = mem[_1081]
    while idx < uint64(_1521):
        require idx < mem[_1105]
        mem[(32 * idx) + _1105 + 32] = uint64(s)
        _1553 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1553] = 0
        mem[_1553 + 32] = 0
        mem[mem[64] + 36] = uint64(s)
        require ext_code.size(stor4)
        staticcall stor4.0x748e6e18 with:
                gas gas_remaining wei
               args address(arg1), uint64(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1809 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[_1737] == mem[_1737 + 24 len 8]
        mem[_1809] = mem[_1737]
        require mem[_1737 + 32] == mem[_1737 + 56 len 8]
        mem[_1809 + 32] = mem[_1737 + 32]
        _1521 = mem[_1081 + 64]
        idx = idx + 1
        s = mem[_1809 + 32]
        continue 
    mem[_1044] = _1105
    mem[_1044 + 32] = _529
    _1551 = mem[_529]
    _1552 = mem[64]
    mem[mem[64]] = mem[_529]
    mem[64] = mem[64] + (32 * _1551) + 32
    if not _1551:
        _1928 = mem[_529]
        idx = 0
        while idx < _1928:
            require idx < mem[_529]
            require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
            staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2024 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2024] == mem[_2024]
            require idx < mem[_1552]
            mem[(32 * idx) + _1552 + 32] = mem[_2024]
            _1928 = mem[_529]
            idx = idx + 1
            continue 
        mem[_1044 + 64] = _1552
        mem[mem[64]] = 32
        _2040 = mem[_1044]
        mem[mem[64] + 32] = 96
        _2070 = mem[_2040]
        mem[mem[64] + 128] = mem[_2040]
        idx = 0
        s = _2040 + 32
        t = mem[64] + 160
        while idx < _2070:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2248 = mem[_1044 + 32]
        mem[mem[64] + 64] = (32 * _2070) + 128
        _2264 = mem[_2248]
        mem[mem[64] + (32 * _2070) + 160] = mem[_2248]
        idx = 0
        s = _2248 + 32
        t = mem[64] + (32 * _2070) + 192
        while idx < _2264:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _2376 = mem[_1044 + 64]
        mem[mem[64] + 96] = (32 * _2070) + (32 * _2264) + 160
        _2392 = mem[_2376]
        mem[mem[64] + (32 * _2070) + (32 * _2264) + 192] = mem[_2376]
        mem[mem[64] + (32 * _2070) + (32 * _2264) + 224 len 32 * _2392] = mem[_2376 + 32 len 32 * _2392]
        return 32, 96, 
               (32 * _2070) + 128,
               (32 * _2070) + (32 * _2264) + 160,
               mem[mem[64] + 128 len (32 * _2070) + (32 * _2264) + (32 * _2392) + 96]
    mem[_1552 + 32 len 32 * _1551] = code.data[12895 len 32 * _1551]
    _1929 = mem[_529]
    idx = 0
    while idx < _1929:
        require idx < mem[_529]
        require ext_code.size(mem[(32 * idx) + _529 + 44 len 20])
        staticcall mem[(32 * idx) + _529 + 44 len 20].0x54fd4d50 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2025 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2025] == mem[_2025]
        require idx < mem[_1552]
        mem[(32 * idx) + _1552 + 32] = mem[_2025]
        _1929 = mem[_529]
        idx = idx + 1
        continue 
    mem[_1044 + 64] = _1552
    mem[mem[64]] = 32
    _2041 = mem[_1044]
    mem[mem[64] + 32] = 96
    _2072 = mem[_2041]
    mem[mem[64] + 128] = mem[_2041]
    idx = 0
    s = _2041 + 32
    t = mem[64] + 160
    while idx < _2072:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _2249 = mem[_1044 + 32]
    mem[mem[64] + 64] = (32 * _2072) + 128
    _2265 = mem[_2249]
    mem[mem[64] + (32 * _2072) + 160] = mem[_2249]
    idx = 0
    s = _2249 + 32
    t = mem[64] + (32 * _2072) + 192
    while idx < _2265:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _2377 = mem[_1044 + 64]
    mem[mem[64] + 96] = (32 * _2072) + (32 * _2265) + 160
    _2393 = mem[_2377]
    mem[mem[64] + (32 * _2072) + (32 * _2265) + 192] = mem[_2377]
    mem[mem[64] + (32 * _2072) + (32 * _2265) + 224 len 32 * _2393] = mem[_2377 + 32 len 32 * _2393]
    return 32, 96, 
           (32 * _2072) + 128,
           (32 * _2072) + (32 * _2265) + 160,
           mem[mem[64] + 128 len (32 * _2072) + (32 * _2265) + (32 * _2393) + 96]
}



}
