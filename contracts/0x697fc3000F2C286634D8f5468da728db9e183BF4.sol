contract main {




// =====================  Runtime code  =====================


const PERCENTS_DIVIDER = 10000


address owner;
array of struct pathes;
address uniswapV2Router02Address;
address stableTokenAddress;
address WETHAddress;

function uniswapV2Router() payable {
    return uniswapV2Router02Address
}

function getStableToken() payable {
    return stableTokenAddress
}

function getUniswapV2Router02() payable {
    return uniswapV2Router02Address
}

function owner() payable {
    return owner
}

function stableToken() payable {
    return stableTokenAddress
}

function WETH() payable {
    return WETHAddress
}

function pathes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < uint256(pathes[arg1].field_0)
    return address(pathes[arg1][arg2].field_0)
}

function getWETH() payable {
    return WETHAddress
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

function setWETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WETHAddress = arg1
}

function setStableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stableTokenAddress = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2Router02Address = arg1
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

function addPathWithStable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '#AP:001'
    mem[128] = arg1
    mem[160] = stableTokenAddress
    uint256(pathes[address(arg1)].field_0) = 2
    s = 0
    idx = 128
    while 192 > idx:
        address(pathes[address(arg1)][s].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while uint256(pathes[address(arg1)].field_0) > idx:
        uint256(pathes[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
}

function addPathWithETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '#AP:001'
    mem[128] = arg1
    mem[160] = WETHAddress
    mem[192] = stableTokenAddress
    uint256(pathes[address(arg1)].field_0) = 3
    s = 0
    idx = 128
    while 224 > idx:
        address(pathes[address(arg1)][s].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while uint256(pathes[address(arg1)].field_0) > idx:
        uint256(pathes[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
}

function addPath(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '#AP:001'
    if not arg2.length:
        revert with 0, '#AP: 002'
    if arg2.length < 1:
        revert with 0, 17
    if arg2.length - 1 >= arg2.length:
        revert with 0, 50
    if mem[(32 * arg2.length - 1) + 140 len 20] != stableTokenAddress:
        revert with 0, '#AP: 003'
    if 0 >= arg2.length:
        revert with 0, 50
    if mem[140 len 20] != arg1:
        revert with 0, '#AP: 004'
    uint256(pathes[address(arg1)].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(pathes[address(arg1)].field_0) > idx:
            uint256(pathes[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(pathes[address(arg1)][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(pathes[address(arg1)].field_0) > idx:
            uint256(pathes[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
}

function addBatchPathWithStable(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, '#AP:010'
    mem[ceil32(32 * arg1.length) + 97] = 2
    mem[64] = ceil32(32 * arg1.length) + 193
    mem[ceil32(32 * arg1.length) + 129 len 64] = call.data[calldata.size len 64]
    mem[ceil32(32 * arg1.length) + 161] = stableTokenAddress
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[ceil32(32 * arg1.length) + 129] = mem[(32 * idx) + 140 len 20]
        if idx >= arg1.length:
            revert with 0, 50
        mem[32] = 2
        uint256(pathes[mem[(32 * idx) + 140 len 20]].field_0) = 2
        mem[0] = sha3(mem[(32 * idx) + 140 len 20], 2)
        t = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
        s = ceil32(32 * arg1.length) + 129
        while ceil32(32 * arg1.length) + 193 > s:
            address(stor[t]) = mem[s + 12 len 20]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + 2
        while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + uint256(pathes[mem[(32 * idx) + 140 len 20]].field_0) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getPath(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint256(pathes[address(arg1)].field_0):
        mem[128] = arg1
        mem[160] = WETHAddress
        mem[192] = stableTokenAddress
        if not arg2:
            mem[224] = 32
            idx = 0
            s = 128
            t = 288
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=3, data=mem[288 len 96])
        mem[224] = 3
        mem[256 len 96] = call.data[calldata.size len 96]
        idx = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if 3 < idx:
                revert with 0, 17
            if -idx + 3 < 1:
                revert with 0, 17
            if -idx + 2 >= mem[224]:
                revert with 0, 50
            mem[(32 * -idx + 2) + 256] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[352] = 32
        mem[384] = mem[224]
        idx = 0
        s = 256
        t = 416
        while idx < mem[224]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, mem[384 len (32 * mem[224]) + 32]
    if not arg2:
        mem[64] = (32 * uint256(pathes[address(arg1)].field_0)) + 128
        mem[96] = uint256(pathes[address(arg1)].field_0)
        if not uint256(pathes[address(arg1)].field_0):
            mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128] = 32
            mem[(32 * uint256(pathes[address(arg1)].field_0)) + 160] = uint256(pathes[address(arg1)].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(pathes[address(arg1)].field_0)) + 192
            while idx < uint256(pathes[address(arg1)].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(pathes[address(arg1)].field_0)) + 128
               len (96 * uint256(pathes[address(arg1)].field_0)) + 64
        mem[128] = address(pathes[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(pathes[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = address(pathes[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(pathes[address(arg1)].field_0)) + 160] = uint256(pathes[address(arg1)].field_0)
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < uint256(pathes[address(arg1)].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * uint256(pathes[address(arg1)].field_0)) + -mem[64] + 192
    mem[0] = arg1
    mem[32] = 2
    mem[96] = uint256(pathes[address(arg1)].field_0)
    if not uint256(pathes[address(arg1)].field_0):
        if uint256(pathes[address(arg1)].field_0) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128] = uint256(pathes[address(arg1)].field_0)
        mem[64] = (64 * uint256(pathes[address(arg1)].field_0)) + 160
        if not uint256(pathes[address(arg1)].field_0):
            idx = 0
            while idx < uint256(pathes[address(arg1)].field_0):
                if idx >= uint256(pathes[address(arg1)].field_0):
                    revert with 0, 50
                if uint256(pathes[address(arg1)].field_0) < idx:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) - idx < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * uint256(pathes[address(arg1)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * uint256(pathes[address(arg1)].field_0)) + 160] = 32
            _84 = mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]
            mem[(64 * uint256(pathes[address(arg1)].field_0)) + 192] = mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(pathes[address(arg1)].field_0)) + 160
            t = (64 * uint256(pathes[address(arg1)].field_0)) + 224
            while idx < mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * uint256(pathes[address(arg1)].field_0)) + (32 * _84) + -mem[64] + 224
        mem[(32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * uint256(pathes[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(pathes[address(arg1)].field_0):
            if idx >= uint256(pathes[address(arg1)].field_0):
                revert with 0, 50
            if uint256(pathes[address(arg1)].field_0) < idx:
                revert with 0, 17
            if uint256(pathes[address(arg1)].field_0) - idx < 1:
                revert with 0, 17
            if uint256(pathes[address(arg1)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
                revert with 0, 50
            mem[(32 * uint256(pathes[address(arg1)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * uint256(pathes[address(arg1)].field_0)) + 160] = 32
        _85 = mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]
        mem[(64 * uint256(pathes[address(arg1)].field_0)) + 192] = mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(pathes[address(arg1)].field_0)) + 160
        t = (64 * uint256(pathes[address(arg1)].field_0)) + 224
        while idx < mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * uint256(pathes[address(arg1)].field_0)) + (32 * _85) + -mem[64] + 224
    mem[0] = sha3(address(arg1), 2)
    mem[128] = address(pathes[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(pathes[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(pathes[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(pathes[address(arg1)].field_0) > test266151307():
        revert with 0, 65
    mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128] = uint256(pathes[address(arg1)].field_0)
    mem[64] = (64 * uint256(pathes[address(arg1)].field_0)) + 160
    if uint256(pathes[address(arg1)].field_0):
        mem[(32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * uint256(pathes[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg1)].field_0)]
    idx = 0
    while idx < uint256(pathes[address(arg1)].field_0):
        if idx >= uint256(pathes[address(arg1)].field_0):
            revert with 0, 50
        if uint256(pathes[address(arg1)].field_0) < idx:
            revert with 0, 17
        if uint256(pathes[address(arg1)].field_0) - idx < 1:
            revert with 0, 17
        if uint256(pathes[address(arg1)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
            revert with 0, 50
        mem[(32 * uint256(pathes[address(arg1)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * uint256(pathes[address(arg1)].field_0)) + 160] = 32
    mem[(64 * uint256(pathes[address(arg1)].field_0)) + 192] = mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]
    idx = 0
    s = (32 * uint256(pathes[address(arg1)].field_0)) + 160
    t = (64 * uint256(pathes[address(arg1)].field_0)) + 224
    while idx < mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (64 * uint256(pathes[address(arg1)].field_0)) + 160
       len (129 * uint256(pathes[address(arg1)].field_0)) + (32 * mem[(32 * uint256(pathes[address(arg1)].field_0)) + 128]) + 64
}

function getAmountsIn(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = arg2
    mem[32] = 2
    if not uint256(pathes[address(arg2)].field_0):
        mem[96] = 3
        mem[128] = arg2
        mem[160] = WETHAddress
        mem[192] = stableTokenAddress
        if not arg3:
            mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _153 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _155 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require _153 + (32 * _155) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256 len 32 * _155] = mem[_153 + 256 len 32 * _155]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _155
            mem[mem[64] + 64 len 32 * _155] = mem[ceil32(return_data.size) + 256 len 32 * _155]
            return Array(len=_155, data=mem[mem[64] + 64 len 32 * _155])
        mem[224] = 3
        mem[256 len 96] = call.data[calldata.size len 96]
        idx = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if 3 < idx:
                revert with 0, 17
            if -idx + 3 < 1:
                revert with 0, 17
            if -idx + 2 >= mem[224]:
                revert with 0, 50
            mem[(32 * -idx + 2) + 256] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[356] = arg1
        mem[388] = 64
        mem[420] = mem[224]
        idx = 0
        s = 256
        t = 452
        while idx < mem[224]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[420 len (32 * mem[224]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 32
        _246 = mem[352 len 4], Mask(224, 32, arg1) >> 32
        require mem[352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 352 > mem[352 len 4], Mask(224, 32, arg1) >> 32 + 383
        _254 = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
        if mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
        require _246 + (32 * _254) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 384 len 32 * _254] = mem[_246 + 384 len 32 * _254]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _254
        mem[mem[64] + 64 len 32 * _254] = mem[ceil32(return_data.size) + 384 len 32 * _254]
        return Array(len=_254, data=mem[mem[64] + 64 len 32 * _254])
    mem[0] = arg2
    mem[32] = 2
    mem[96] = uint256(pathes[address(arg2)].field_0)
    if not arg3:
        if not uint256(pathes[address(arg2)].field_0):
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
            while idx < uint256(pathes[address(arg2)].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _148 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
            _154 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
            if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
            require _148 + (32 * _154) + 32 <= return_data.size
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _154] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _148 + 160 len 32 * _154]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _154
            mem[mem[64] + 64 len 32 * _154] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _154]
            return Array(len=_154, data=mem[mem[64] + 64 len 32 * _154])
        mem[0] = sha3(address(arg2), 2)
        mem[128] = address(pathes[address(arg2)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
            mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
        idx = 0
        s = 128
        t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
        while idx < uint256(pathes[address(arg2)].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _354 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
        _357 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
            revert with 0, 65
        mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        require _354 + (32 * _357) + 32 <= return_data.size
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _357] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _354 + 160 len 32 * _357]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _357
        mem[mem[64] + 64 len 32 * _357] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _357]
        return Array(len=_357, data=mem[mem[64] + 64 len 32 * _357])
    if not uint256(pathes[address(arg2)].field_0):
        if uint256(pathes[address(arg2)].field_0) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
        if not uint256(pathes[address(arg2)].field_0):
            idx = 0
            while idx < uint256(pathes[address(arg2)].field_0):
                if idx >= uint256(pathes[address(arg2)].field_0):
                    revert with 0, 50
                if uint256(pathes[address(arg2)].field_0) < idx:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) - idx < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
            t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
            while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _241 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
            _249 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
            if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                revert with 0, 65
            mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _249
            require _241 + (32 * _249) + 32 <= return_data.size
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _249] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _241 + 192 len 32 * _249]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _249
            mem[mem[64] + 64 len 32 * _249] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _249]
            return Array(len=_249, data=mem[mem[64] + 64 len 32 * _249])
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
        idx = 0
        while idx < uint256(pathes[address(arg2)].field_0):
            if idx >= uint256(pathes[address(arg2)].field_0):
                revert with 0, 50
            if uint256(pathes[address(arg2)].field_0) < idx:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) - idx < 1:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                revert with 0, 50
            mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
        t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
        while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _242 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
        require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
        _250 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
        if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _250
        require _242 + (32 * _250) + 32 <= return_data.size
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _250] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _242 + 192 len 32 * _250]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _250
        mem[mem[64] + 64 len 32 * _250] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _250]
        return Array(len=_250, data=mem[mem[64] + 64 len 32 * _250])
    mem[0] = sha3(address(arg2), 2)
    mem[128] = address(pathes[address(arg2)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
        mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(pathes[address(arg2)].field_0) > test266151307():
        revert with 0, 65
    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
    if not uint256(pathes[address(arg2)].field_0):
        idx = 0
        while idx < uint256(pathes[address(arg2)].field_0):
            if idx >= uint256(pathes[address(arg2)].field_0):
                revert with 0, 50
            if uint256(pathes[address(arg2)].field_0) < idx:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) - idx < 1:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                revert with 0, 50
            mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
        t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
        while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _402 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
        require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
        _405 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
        if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _405
        require _402 + (32 * _405) + 32 <= return_data.size
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _405] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _402 + 192 len 32 * _405]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _405
        mem[mem[64] + 64 len 32 * _405] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _405]
        return Array(len=_405, data=mem[mem[64] + 64 len 32 * _405])
    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
    idx = 0
    while idx < uint256(pathes[address(arg2)].field_0):
        if idx >= uint256(pathes[address(arg2)].field_0):
            revert with 0, 50
        if uint256(pathes[address(arg2)].field_0) < idx:
            revert with 0, 17
        if uint256(pathes[address(arg2)].field_0) - idx < 1:
            revert with 0, 17
        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            revert with 0, 50
        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
    idx = 0
    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2Router02Address)
    staticcall uniswapV2Router02Address.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _403 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
    _406 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
        revert with 0, 65
    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _406
    require _403 + (32 * _406) + 32 <= return_data.size
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _406] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _403 + 192 len 32 * _406]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _406
    mem[mem[64] + 64 len 32 * _406] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _406]
    return Array(len=_406, data=mem[mem[64] + 64 len 32 * _406])
}

function getAmountsOut(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = arg2
    mem[32] = 2
    if not uint256(pathes[address(arg2)].field_0):
        mem[96] = 3
        mem[128] = arg2
        mem[160] = WETHAddress
        mem[192] = stableTokenAddress
        if not arg3:
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _153 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _155 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require _153 + (32 * _155) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256 len 32 * _155] = mem[_153 + 256 len 32 * _155]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _155
            mem[mem[64] + 64 len 32 * _155] = mem[ceil32(return_data.size) + 256 len 32 * _155]
            return Array(len=_155, data=mem[mem[64] + 64 len 32 * _155])
        mem[224] = 3
        mem[256 len 96] = call.data[calldata.size len 96]
        idx = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if 3 < idx:
                revert with 0, 17
            if -idx + 3 < 1:
                revert with 0, 17
            if -idx + 2 >= mem[224]:
                revert with 0, 50
            mem[(32 * -idx + 2) + 256] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[356] = arg1
        mem[388] = 64
        mem[420] = mem[224]
        idx = 0
        s = 256
        t = 452
        while idx < mem[224]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[420 len (32 * mem[224]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 32
        _246 = mem[352 len 4], Mask(224, 32, arg1) >> 32
        require mem[352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 352 > mem[352 len 4], Mask(224, 32, arg1) >> 32 + 383
        _254 = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
        if mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
        require _246 + (32 * _254) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 384 len 32 * _254] = mem[_246 + 384 len 32 * _254]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _254
        mem[mem[64] + 64 len 32 * _254] = mem[ceil32(return_data.size) + 384 len 32 * _254]
        return Array(len=_254, data=mem[mem[64] + 64 len 32 * _254])
    mem[0] = arg2
    mem[32] = 2
    mem[96] = uint256(pathes[address(arg2)].field_0)
    if not arg3:
        if not uint256(pathes[address(arg2)].field_0):
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
            while idx < uint256(pathes[address(arg2)].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _148 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
            _154 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
            if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
            require _148 + (32 * _154) + 32 <= return_data.size
            mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _154] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _148 + 160 len 32 * _154]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _154
            mem[mem[64] + 64 len 32 * _154] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _154]
            return Array(len=_154, data=mem[mem[64] + 64 len 32 * _154])
        mem[0] = sha3(address(arg2), 2)
        mem[128] = address(pathes[address(arg2)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
            mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
        idx = 0
        s = 128
        t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
        while idx < uint256(pathes[address(arg2)].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _354 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
        _357 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
            revert with 0, 65
        mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        require _354 + (32 * _357) + 32 <= return_data.size
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _357] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _354 + 160 len 32 * _357]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _357
        mem[mem[64] + 64 len 32 * _357] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _357]
        return Array(len=_357, data=mem[mem[64] + 64 len 32 * _357])
    if not uint256(pathes[address(arg2)].field_0):
        if uint256(pathes[address(arg2)].field_0) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
        if not uint256(pathes[address(arg2)].field_0):
            idx = 0
            while idx < uint256(pathes[address(arg2)].field_0):
                if idx >= uint256(pathes[address(arg2)].field_0):
                    revert with 0, 50
                if uint256(pathes[address(arg2)].field_0) < idx:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) - idx < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
            t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
            while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _241 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
            _249 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
            if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                revert with 0, 65
            mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _249
            require _241 + (32 * _249) + 32 <= return_data.size
            mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _249] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _241 + 192 len 32 * _249]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _249
            mem[mem[64] + 64 len 32 * _249] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _249]
            return Array(len=_249, data=mem[mem[64] + 64 len 32 * _249])
        mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
        idx = 0
        while idx < uint256(pathes[address(arg2)].field_0):
            if idx >= uint256(pathes[address(arg2)].field_0):
                revert with 0, 50
            if uint256(pathes[address(arg2)].field_0) < idx:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) - idx < 1:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                revert with 0, 50
            mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
        t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
        while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _242 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
        require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
        _250 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
        if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _250
        require _242 + (32 * _250) + 32 <= return_data.size
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _250] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _242 + 192 len 32 * _250]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _250
        mem[mem[64] + 64 len 32 * _250] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _250]
        return Array(len=_250, data=mem[mem[64] + 64 len 32 * _250])
    mem[0] = sha3(address(arg2), 2)
    mem[128] = address(pathes[address(arg2)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
        mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(pathes[address(arg2)].field_0) > test266151307():
        revert with 0, 65
    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
    if not uint256(pathes[address(arg2)].field_0):
        idx = 0
        while idx < uint256(pathes[address(arg2)].field_0):
            if idx >= uint256(pathes[address(arg2)].field_0):
                revert with 0, 50
            if uint256(pathes[address(arg2)].field_0) < idx:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) - idx < 1:
                revert with 0, 17
            if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                revert with 0, 50
            mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
        t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
        while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2Router02Address)
        staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _402 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
        require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
        _405 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
        if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _405
        require _402 + (32 * _405) + 32 <= return_data.size
        mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _405] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _402 + 192 len 32 * _405]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _405
        mem[mem[64] + 64 len 32 * _405] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _405]
        return Array(len=_405, data=mem[mem[64] + 64 len 32 * _405])
    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
    idx = 0
    while idx < uint256(pathes[address(arg2)].field_0):
        if idx >= uint256(pathes[address(arg2)].field_0):
            revert with 0, 50
        if uint256(pathes[address(arg2)].field_0) < idx:
            revert with 0, 17
        if uint256(pathes[address(arg2)].field_0) - idx < 1:
            revert with 0, 17
        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
            revert with 0, 50
        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
    idx = 0
    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2Router02Address)
    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _403 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
    _406 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
        revert with 0, 65
    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _406
    require _403 + (32 * _406) + 32 <= return_data.size
    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _406] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _403 + 192 len 32 * _406]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _406
    mem[mem[64] + 64 len 32 * _406] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _406]
    return Array(len=_406, data=mem[mem[64] + 64 len 32 * _406])
}

function getAmountOut(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if stableTokenAddress == arg2:
        return arg1
    if not uint256(pathes[address(arg2)].field_0):
        mem[96] = 3
        mem[128] = arg2
        mem[160] = WETHAddress
        mem[192] = stableTokenAddress
        if not arg3:
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _181 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _187 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require _181 + (32 * _187) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256 len 32 * _187] = mem[_181 + 256 len 32 * _187]
            if 2 >= _187:
                revert with 0, 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 320]
        else:
            mem[224] = 3
            mem[256 len 96] = call.data[calldata.size len 96]
            idx = 0
            while idx < 3:
                if idx >= 3:
                    revert with 0, 50
                if 3 < idx:
                    revert with 0, 17
                if -idx + 3 < 1:
                    revert with 0, 17
                if -idx + 2 >= mem[224]:
                    revert with 0, 50
                mem[(32 * -idx + 2) + 256] = mem[(32 * idx) + 140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not mem[224]:
                return 0
            mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[356] = arg1
            mem[388] = 64
            mem[420] = mem[224]
            idx = 0
            s = 256
            t = 452
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[420 len (32 * mem[224]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 32
            _281 = mem[352 len 4], Mask(224, 32, arg1) >> 32
            require mem[352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 352 > mem[352 len 4], Mask(224, 32, arg1) >> 32 + 383
            _289 = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
            if mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353
            mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
            require _281 + (32 * _289) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 384 len 32 * _289] = mem[_281 + 384 len 32 * _289]
            if mem[224] < 1:
                revert with 0, 17
            if mem[224] - 1 >= _289:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * mem[224] - 1) + ceil32(return_data.size) + 384]
    else:
        if not arg3:
            mem[32] = 2
            mem[96] = uint256(pathes[address(arg2)].field_0)
            if not uint256(pathes[address(arg2)].field_0):
                if not uint256(pathes[address(arg2)].field_0):
                    return 0
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
                idx = 0
                s = 128
                t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
                while idx < uint256(pathes[address(arg2)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _176 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
                _186 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
                if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
                require _176 + (32 * _186) + 32 <= return_data.size
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _186] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _176 + 160 len 32 * _186]
                if uint256(pathes[address(arg2)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) - 1 >= _186:
                    revert with 0, 50
            else:
                mem[128] = address(pathes[address(arg2)].field_0)
                idx = 128
                s = 0
                while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
                    mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not uint256(pathes[address(arg2)].field_0):
                    return 0
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132] = arg1
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 164] = 64
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 196] = uint256(pathes[address(arg2)].field_0)
                idx = 0
                s = 128
                t = (32 * uint256(pathes[address(arg2)].field_0)) + 228
                while idx < uint256(pathes[address(arg2)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * uint256(pathes[address(arg2)].field_0)) + 132 len (96 * uint256(pathes[address(arg2)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _395 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (32 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 128 > (32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159
                _400 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
                if mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 128] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
                require _395 + (32 * _400) + 32 <= return_data.size
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160 len 32 * _400] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + _395 + 160 len 32 * _400]
                if uint256(pathes[address(arg2)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg2)].field_0) - 1 >= _400:
                    revert with 0, 50
            mem[mem[64]] = mem[(32 * uint256(pathes[address(arg2)].field_0) - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160]
        else:
            mem[0] = arg2
            mem[32] = 2
            mem[96] = uint256(pathes[address(arg2)].field_0)
            if not uint256(pathes[address(arg2)].field_0):
                if uint256(pathes[address(arg2)].field_0) > test266151307():
                    revert with 0, 65
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
                if not uint256(pathes[address(arg2)].field_0):
                    idx = 0
                    while idx < uint256(pathes[address(arg2)].field_0):
                        if idx >= uint256(pathes[address(arg2)].field_0):
                            revert with 0, 50
                        if uint256(pathes[address(arg2)].field_0) < idx:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) - idx < 1:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _152 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    if not mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0
                        return memory
                          from (64 * uint256(pathes[address(arg2)].field_0)) + 160
                           len (127 * uint256(pathes[address(arg2)].field_0)) + 32
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    idx = 0
                    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
                    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
                    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _275 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
                    _285 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
                    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _285
                    require _275 + (32 * _285) + 32 <= return_data.size
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _285] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _275 + 192 len 32 * _285]
                    if _152 < 1:
                        revert with 0, 17
                    if _152 - 1 >= _285:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _152 - 1) + (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192]
                else:
                    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
                    idx = 0
                    while idx < uint256(pathes[address(arg2)].field_0):
                        if idx >= uint256(pathes[address(arg2)].field_0):
                            revert with 0, 50
                        if uint256(pathes[address(arg2)].field_0) < idx:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) - idx < 1:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _153 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    if not mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0
                        return memory
                          from (64 * uint256(pathes[address(arg2)].field_0)) + 160
                           len (127 * uint256(pathes[address(arg2)].field_0)) + 32
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    idx = 0
                    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
                    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
                    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1, 64, mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228 len (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _276 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
                    _286 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
                    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _286
                    require _276 + (32 * _286) + 32 <= return_data.size
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _286] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _276 + 192 len 32 * _286]
                    if _153 < 1:
                        revert with 0, 17
                    if _153 - 1 >= _286:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _153 - 1) + (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192]
            else:
                mem[0] = sha3(address(arg2), 2)
                mem[128] = address(pathes[address(arg2)].field_0)
                idx = 128
                s = 0
                while (32 * uint256(pathes[address(arg2)].field_0)) + 96 > idx:
                    mem[idx + 32] = address(pathes[address(arg2)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uint256(pathes[address(arg2)].field_0) > test266151307():
                    revert with 0, 65
                mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128] = uint256(pathes[address(arg2)].field_0)
                if not uint256(pathes[address(arg2)].field_0):
                    idx = 0
                    while idx < uint256(pathes[address(arg2)].field_0):
                        if idx >= uint256(pathes[address(arg2)].field_0):
                            revert with 0, 50
                        if uint256(pathes[address(arg2)].field_0) < idx:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) - idx < 1:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _367 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    if not mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        return 0
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    idx = 0
                    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
                    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
                    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164 len (129 * uint256(pathes[address(arg2)].field_0)) + (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _437 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
                    _440 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
                    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _440
                    require _437 + (32 * _440) + 32 <= return_data.size
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _440] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _437 + 192 len 32 * _440]
                    if _367 < 1:
                        revert with 0, 17
                    if _367 - 1 >= _440:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _367 - 1) + (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192]
                else:
                    mem[(32 * uint256(pathes[address(arg2)].field_0)) + 160 len 32 * uint256(pathes[address(arg2)].field_0)] = call.data[calldata.size len 32 * uint256(pathes[address(arg2)].field_0)]
                    idx = 0
                    while idx < uint256(pathes[address(arg2)].field_0):
                        if idx >= uint256(pathes[address(arg2)].field_0):
                            revert with 0, 50
                        if uint256(pathes[address(arg2)].field_0) < idx:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) - idx < 1:
                            revert with 0, 17
                        if uint256(pathes[address(arg2)].field_0) + -idx - 1 >= mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint256(pathes[address(arg2)].field_0) + -idx - 1) + (32 * uint256(pathes[address(arg2)].field_0)) + 160] = mem[(32 * idx) + 140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _368 = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    if not mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        return 0
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164] = arg1
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 196] = 64
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 228] = mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]
                    idx = 0
                    s = (32 * uint256(pathes[address(arg2)].field_0)) + 160
                    t = (64 * uint256(pathes[address(arg2)].field_0)) + 260
                    while idx < mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(64 * uint256(pathes[address(arg2)].field_0)) + 164 len (129 * uint256(pathes[address(arg2)].field_0)) + (32 * mem[(32 * uint256(pathes[address(arg2)].field_0)) + 128]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _438 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (64 * uint256(pathes[address(arg2)].field_0)) + return_data.size + 160 > (64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191
                    _441 = mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
                    if mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0 or (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + ceil32(32 * mem[(64 * uint256(pathes[address(arg2)].field_0)) + mem[(64 * uint256(pathes[address(arg2)].field_0)) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 160] = _441
                    require _438 + (32 * _441) + 32 <= return_data.size
                    mem[(64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192 len 32 * _441] = mem[(64 * uint256(pathes[address(arg2)].field_0)) + _438 + 192 len 32 * _441]
                    if _368 < 1:
                        revert with 0, 17
                    if _368 - 1 >= _441:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _368 - 1) + (64 * uint256(pathes[address(arg2)].field_0)) + ceil32(return_data.size) + 192]
    return memory
      from mem[64]
       len 32
}

function getTokenPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stableTokenAddress:
        return 0
    require ext_code.size(stableTokenAddress)
    staticcall stableTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if stableTokenAddress == arg1:
        if 36 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 36:
            return 1, uint8(ext_call.return_data[0])
        if bool(bool(-ext_call.return_data[31 len 1] + 36 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 36 < 32)):
            return 10^(-ext_call.return_data[31 len 1] + 36), uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 36
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        return s * t, uint8(ext_call.return_data[0])
    mem[0] = arg1
    mem[32] = 2
    if not uint256(pathes[address(arg1)].field_0):
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = arg1
        mem[ceil32(return_data.size) + 160] = WETHAddress
        mem[ceil32(return_data.size) + 192] = stableTokenAddress
        if not arg1:
            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 10^18
            mem[ceil32(return_data.size) + 260] = 64
            mem[ceil32(return_data.size) + 292] = 3
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18, 64, 3, mem[ceil32(return_data.size) + 324 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _196 = mem[ceil32(return_data.size) + 224 len 4], 232830643
            require mem[ceil32(return_data.size) + 224 len 4], 232830643 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 255
            _205 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 225 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]
            require _196 + (32 * _205) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _205] = mem[ceil32(return_data.size) + _196 + 256 len 32 * _205]
            if 2 >= _205:
                revert with 0, 50
            if 36 < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if -uint8(ext_call.return_data[0]) + 36 < 18:
                revert with 0, 17
            if not -uint8(ext_call.return_data[0]) + 18:
                if mem[(2 * ceil32(return_data.size)) + 320] and 1 > -1 / mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
            else:
                if bool(bool(-uint8(ext_call.return_data[0]) + 18 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 18 < 32)):
                    if mem[(2 * ceil32(return_data.size)) + 320] and 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / mem[(2 * ceil32(return_data.size)) + 320]:
                        revert with 0, 17
                    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320] * 10^(-uint8(ext_call.return_data[0]) + 18)
                else:
                    s = 10
                    t = 1
                    idx = -uint8(ext_call.return_data[0]) + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if mem[(2 * ceil32(return_data.size)) + 320] and s * t > -1 / mem[(2 * ceil32(return_data.size)) + 320]:
                        revert with 0, 17
                    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320] * s * t
            return mem[mem[64]], 18
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 64
            mem[(2 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (2 * ceil32(return_data.size)) + 324
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2Router02Address)
            staticcall uniswapV2Router02Address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _199 = mem[_190]
            require mem[_190] <= test266151307()
            require _190 + return_data.size > _190 + mem[_190] + 31
            _208 = mem[_190 + mem[_190]]
            if mem[_190 + mem[_190]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_190 + mem[_190]]) + 1 < 0 or _190 + ceil32(return_data.size) + ceil32(32 * mem[_190 + mem[_190]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _190 + ceil32(return_data.size) + ceil32(32 * mem[_190 + mem[_190]]) + 1
            mem[_190 + ceil32(return_data.size)] = _208
            require _199 + (32 * _208) + 32 <= return_data.size
            mem[_190 + ceil32(return_data.size) + 32 len 32 * _208] = mem[_190 + _199 + 32 len 32 * _208]
            if 2 >= _208:
                revert with 0, 50
            if 36 < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if -uint8(ext_call.return_data[0]) + 36 < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not (-2 * uint8(ext_call.return_data[0])) + 36:
                if mem[_190 + ceil32(return_data.size) + 96] and 1 > -1 / mem[_190 + ceil32(return_data.size) + 96]:
                    revert with 0, 17
                mem[mem[64]] = mem[_190 + ceil32(return_data.size) + 96]
            else:
                if bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 78)) or bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 32)):
                    if mem[_190 + ceil32(return_data.size) + 96] and 10^((-2 * uint8(ext_call.return_data[0])) + 36) > -1 / mem[_190 + ceil32(return_data.size) + 96]:
                        revert with 0, 17
                    mem[mem[64]] = mem[_190 + ceil32(return_data.size) + 96] * 10^((-2 * uint8(ext_call.return_data[0])) + 36)
                else:
                    s = 10
                    t = 1
                    idx = (-2 * uint8(ext_call.return_data[0])) + 36
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if mem[_190 + ceil32(return_data.size) + 96] and s * t > -1 / mem[_190 + ceil32(return_data.size) + 96]:
                        revert with 0, 17
                    mem[mem[64]] = mem[_190 + ceil32(return_data.size) + 96] * s * t
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = 10^uint8(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + 292] = 3
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 324
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _189 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _198 = mem[_189]
                require mem[_189] <= test266151307()
                require _189 + return_data.size > _189 + mem[_189] + 31
                _207 = mem[_189 + mem[_189]]
                if mem[_189 + mem[_189]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_189 + mem[_189]]) + 1 < 0 or _189 + ceil32(return_data.size) + ceil32(32 * mem[_189 + mem[_189]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _189 + ceil32(return_data.size) + ceil32(32 * mem[_189 + mem[_189]]) + 1
                mem[_189 + ceil32(return_data.size)] = _207
                require _198 + (32 * _207) + 32 <= return_data.size
                mem[_189 + ceil32(return_data.size) + 32 len 32 * _207] = mem[_189 + _198 + 32 len 32 * _207]
                if 2 >= _207:
                    revert with 0, 50
                if 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if -uint8(ext_call.return_data[0]) + 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not (-2 * uint8(ext_call.return_data[0])) + 36:
                    if mem[_189 + ceil32(return_data.size) + 96] and 1 > -1 / mem[_189 + ceil32(return_data.size) + 96]:
                        revert with 0, 17
                    mem[mem[64]] = mem[_189 + ceil32(return_data.size) + 96]
                else:
                    if bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 78)) or bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 32)):
                        if mem[_189 + ceil32(return_data.size) + 96] and 10^((-2 * uint8(ext_call.return_data[0])) + 36) > -1 / mem[_189 + ceil32(return_data.size) + 96]:
                            revert with 0, 17
                        mem[mem[64]] = mem[_189 + ceil32(return_data.size) + 96] * 10^((-2 * uint8(ext_call.return_data[0])) + 36)
                    else:
                        s = 10
                        t = 1
                        idx = (-2 * uint8(ext_call.return_data[0])) + 36
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if mem[_189 + ceil32(return_data.size) + 96] and s * t > -1 / mem[_189 + ceil32(return_data.size) + 96]:
                            revert with 0, 17
                        mem[mem[64]] = mem[_189 + ceil32(return_data.size) + 96] * s * t
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = s * t
                mem[(2 * ceil32(return_data.size)) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + 292] = 3
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 324
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _323 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _328 = mem[_323]
                require mem[_323] <= test266151307()
                require _323 + return_data.size > _323 + mem[_323] + 31
                _331 = mem[_323 + mem[_323]]
                if mem[_323 + mem[_323]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_323 + mem[_323]]) + 1 < 0 or _323 + ceil32(return_data.size) + ceil32(32 * mem[_323 + mem[_323]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _323 + ceil32(return_data.size) + ceil32(32 * mem[_323 + mem[_323]]) + 1
                mem[_323 + ceil32(return_data.size)] = _331
                require _328 + (32 * _331) + 32 <= return_data.size
                mem[_323 + ceil32(return_data.size) + 32 len 32 * _331] = mem[_323 + _328 + 32 len 32 * _331]
                if 2 >= _331:
                    revert with 0, 50
                if 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if -uint8(ext_call.return_data[0]) + 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not (-2 * uint8(ext_call.return_data[0])) + 36:
                    if mem[_323 + ceil32(return_data.size) + 96] and 1 > -1 / mem[_323 + ceil32(return_data.size) + 96]:
                        revert with 0, 17
                    mem[mem[64]] = mem[_323 + ceil32(return_data.size) + 96]
                else:
                    if bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 78)) or bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 32)):
                        if mem[_323 + ceil32(return_data.size) + 96] and 10^((-2 * uint8(ext_call.return_data[0])) + 36) > -1 / mem[_323 + ceil32(return_data.size) + 96]:
                            revert with 0, 17
                        mem[mem[64]] = mem[_323 + ceil32(return_data.size) + 96] * 10^((-2 * uint8(ext_call.return_data[0])) + 36)
                    else:
                        s = 10
                        t = 1
                        idx = (-2 * uint8(ext_call.return_data[0])) + 36
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if mem[_323 + ceil32(return_data.size) + 96] and s * t > -1 / mem[_323 + ceil32(return_data.size) + 96]:
                            revert with 0, 17
                        mem[mem[64]] = mem[_323 + ceil32(return_data.size) + 96] * s * t
    else:
        mem[0] = arg1
        mem[32] = 2
        mem[ceil32(return_data.size) + 96] = uint256(pathes[address(arg1)].field_0)
        if not uint256(pathes[address(arg1)].field_0):
            if not uint256(pathes[address(arg1)].field_0):
                return 0
            if not arg1:
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 10^18
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                while idx < uint256(pathes[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _192 = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643
                require mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 <= test266151307()
                require ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 159
                _201 = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]
                if mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _201
                require _192 + (32 * _201) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _201] = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + _192 + 160 len 32 * _201]
                if uint256(pathes[address(arg1)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) - 1 >= _201:
                    revert with 0, 50
                if 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if -uint8(ext_call.return_data[0]) + 36 < 18:
                    revert with 0, 17
                if not -uint8(ext_call.return_data[0]) + 18:
                    if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 1 > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                        revert with 0, 17
                    mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]
                else:
                    if bool(bool(-uint8(ext_call.return_data[0]) + 18 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 18 < 32)):
                        if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                            revert with 0, 17
                        mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        s = 10
                        t = 1
                        idx = -uint8(ext_call.return_data[0]) + 18
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and s * t > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                            revert with 0, 17
                        mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * s * t
                return mem[mem[64]], 18
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 1
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                while idx < uint256(pathes[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _195 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 159
                _204 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _204
                require _195 + (32 * _204) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _204] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _195 + 160 len 32 * _204]
                if uint256(pathes[address(arg1)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) - 1 >= _204:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 10^uint8(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                    while idx < uint256(pathes[address(arg1)].field_0):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                    require return_data.size >= 32
                    _194 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 159
                    _203 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _203
                    require _194 + (32 * _203) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _203] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _194 + 160 len 32 * _203]
                    if uint256(pathes[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if uint256(pathes[address(arg1)].field_0) - 1 >= _203:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = s * t
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                    while idx < uint256(pathes[address(arg1)].field_0):
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                    require return_data.size >= 32
                    _327 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 159
                    _330 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _330
                    require _327 + (32 * _330) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _330] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _327 + 160 len 32 * _330]
                    if uint256(pathes[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if uint256(pathes[address(arg1)].field_0) - 1 >= _330:
                        revert with 0, 50
        else:
            mem[0] = sha3(address(arg1), 2)
            mem[ceil32(return_data.size) + 128] = address(pathes[address(arg1)].field_0)
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 96 > idx:
                mem[idx + 32] = address(pathes[address(arg1)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if not uint256(pathes[address(arg1)].field_0):
                return 0
            if not arg1:
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 10^18
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                while idx < uint256(pathes[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _472 = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643
                require mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 <= test266151307()
                require ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 159
                _476 = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]
                if mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 232830643 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _476
                require _472 + (32 * _476) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _476] = mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + _472 + 160 len 32 * _476]
                if uint256(pathes[address(arg1)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) - 1 >= _476:
                    revert with 0, 50
                if 36 < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if -uint8(ext_call.return_data[0]) + 36 < 18:
                    revert with 0, 17
                if not -uint8(ext_call.return_data[0]) + 18:
                    if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 1 > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                        revert with 0, 17
                    mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]
                else:
                    if bool(bool(-uint8(ext_call.return_data[0]) + 18 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 18 < 32)):
                        if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                            revert with 0, 17
                        mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        s = 10
                        t = 1
                        idx = -uint8(ext_call.return_data[0]) + 18
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and s * t > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                            revert with 0, 17
                        mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * s * t
                return mem[mem[64]], 18
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 1
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                while idx < uint256(pathes[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2Router02Address)
                staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _475 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 159
                _479 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], 0 + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _479
                require _475 + (32 * _479) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _479] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _475 + 160 len 32 * _479]
                if uint256(pathes[address(arg1)].field_0) < 1:
                    revert with 0, 17
                if uint256(pathes[address(arg1)].field_0) - 1 >= _479:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = 10^uint8(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                    while idx < uint256(pathes[address(arg1)].field_0):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                    require return_data.size >= 32
                    _474 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 159
                    _478 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _478
                    require _474 + (32 * _478) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _478] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _474 + 160 len 32 * _478]
                    if uint256(pathes[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if uint256(pathes[address(arg1)].field_0) - 1 >= _478:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132] = s * t
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 196] = uint256(pathes[address(arg1)].field_0)
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 228
                    while idx < uint256(pathes[address(arg1)].field_0):
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(uniswapV2Router02Address)
                    staticcall uniswapV2Router02Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 132 len (96 * uint256(pathes[address(arg1)].field_0)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128
                    require return_data.size >= 32
                    _560 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 159
                    _561 = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, s * t) >> 32 + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 128] = _561
                    require _560 + (32 * _561) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160 len 32 * _561] = mem[(2 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + _560 + 160 len 32 * _561]
                    if uint256(pathes[address(arg1)].field_0) < 1:
                        revert with 0, 17
                    if uint256(pathes[address(arg1)].field_0) - 1 >= _561:
                        revert with 0, 50
        if 36 < uint8(ext_call.return_data[0]):
            revert with 0, 17
        if -uint8(ext_call.return_data[0]) + 36 < uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not (-2 * uint8(ext_call.return_data[0])) + 36:
            if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 1 > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                revert with 0, 17
            mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]
        else:
            if bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 78)) or bool(bool((-2 * uint8(ext_call.return_data[0])) + 36 < 32)):
                if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and 10^((-2 * uint8(ext_call.return_data[0])) + 36) > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                    revert with 0, 17
                mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * 10^((-2 * uint8(ext_call.return_data[0])) + 36)
            else:
                s = 10
                t = 1
                idx = (-2 * uint8(ext_call.return_data[0])) + 36
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] and s * t > -1 / mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160]:
                    revert with 0, 17
                mem[mem[64]] = mem[(32 * uint256(pathes[address(arg1)].field_0) - 1) + (4 * ceil32(return_data.size)) + (32 * uint256(pathes[address(arg1)].field_0)) + 160] * s * t
    return mem[mem[64]], ext_call.return_data[0] << 248
}



}
