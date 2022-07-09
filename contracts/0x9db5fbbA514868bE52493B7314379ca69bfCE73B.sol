contract main {




// =====================  Runtime code  =====================


const sub_668d3d65(?) = 1800

const sub_f67e3bf0(?) = test266151307()

const BASIS_POINTS_DIVISOR = 10000

const PRICE_PRECISION = 1000000000000 * 10^18


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address govAddress;
address sub_0e9272eaAddress;
address tokenManagerAddress;
address sub_61ef161fAddress;
uint256 lastUpdatedAt;
uint256 lastUpdatedBlock;
uint256 sub_03cd2571;
uint256 sub_b3606b56;
uint256 sub_3aa08f86;
uint256 sub_114fbeb3;
uint256 sub_715c7536;
uint256 sub_287800c9;
uint256 sub_b0a25666;
mapping of uint8 stor13;
mapping of uint256 prices;
mapping of uint8 stor15;
mapping of uint8 stor16;

function sub_03b04936(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function sub_03cd2571(?) payable {
    return sub_03cd2571
}

function sub_0e9272ea(?) payable {
    return sub_0e9272eaAddress
}

function sub_114fbeb3(?) payable {
    return sub_114fbeb3
}

function gov() payable {
    return govAddress
}

function sub_287800c9(?) payable {
    return sub_287800c9
}

function tokenManager() payable {
    return tokenManagerAddress
}

function isInitialized() payable {
    return bool(uint8(stor0.field_160))
}

function sub_3aa08f86(?) payable {
    return sub_3aa08f86
}

function sub_4d11fb4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4d11fb4a.length
    return sub_4d11fb4a[arg1]
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function sub_4fdfb086(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function lastUpdatedAt() payable {
    return lastUpdatedAt
}

function sub_61ef161f(?) payable {
    return sub_61ef161fAddress
}

function sub_695d4184(?) payable {
    return bool(uint8(stor0.field_168))
}

function sub_715c7536(?) payable {
    return sub_715c7536
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function sub_b0a25666(?) payable {
    return sub_b0a25666
}

function sub_b3606b56(?) payable {
    return sub_b3606b56
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    return prices[arg1]
}

function lastUpdatedBlock() payable {
    return lastUpdatedBlock
}

function _fallback() payable {
    revert
}

function sub_776d16c1(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    sub_3aa08f86 = arg1
}

function sub_82553aad(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    sub_715c7536 = arg1
}

function sub_9e4de0e3(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    sub_114fbeb3 = arg1
}

function sub_d6a153f1(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    sub_b3606b56 = arg1
}

function sub_14dd2dce(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    lastUpdatedAt = arg1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    govAddress = arg1
}

function sub_162ac4e0(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    sub_0e9272eaAddress = arg1
}

function sub_d925351a(?) payable {
    require calldata.size - 4 >= 32
    if tokenManagerAddress != msg.sender:
        revert with 0, 'FastPriceFeed: forbidden'
    sub_287800c9 = arg1
}

function sub_c0e4de8e(?) payable {
    if not uint8(stor0.field_168):
        if sub_b0a25666 < sub_287800c9:
            return 1
        else:
            return 0
    else:
        return 0
}

function setTokenManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    tokenManagerAddress = arg1
}

function sub_ce98dfa8(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function setSigner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    stor15[address(arg1)] = uint8(arg2)
}

function setUpdater(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    stor13[address(arg1)] = uint8(arg2)
}

function sub_6ccd47c4(?) payable {
    if not stor15[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    if not stor16[msg.sender]:
        revert with 0, 'FastPriceFeed: already enabled'
    stor16[msg.sender] = 0
    if 1 > sub_b0a25666:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_b0a25666--
    emit 0x9fe0c305: msg.sender
}

function sub_c84a9124(?) payable {
    if not stor15[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    if stor16[msg.sender]:
        revert with 0, 'FastPriceFeed: already voted'
    stor16[msg.sender] = 1
    if sub_b0a25666 + 1 < sub_b0a25666:
        revert with 0, 'SafeMath: addition overflow'
    sub_b0a25666++
    emit 0x4c0c5fab: msg.sender
}

function setPriceDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    if arg1 > 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe466173745072696365466565643a20696e76616c6964205f70726963654475726174696f,
                    mem[201 len 27]
    sub_03cd2571 = arg1
}

function sub_7fbc79c6(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    if uint8(stor0.field_160):
        revert with 0, 
                    32,
                    34,
                    0x64466173745072696365466565643a20616c726561647920696e697469616c697a65,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 262 len 30]
    uint8(stor0.field_160) = 1
    sub_287800c9 = arg1
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + (32 * arg2.length) + 172 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_c8390a48(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if govAddress != msg.sender:
        revert with 0, 'nGovernable: forbidden'
    if arg1.length != arg2.length:
        revert with 0, 'FastPriceFeed: invalid lengths'
    tokens.length = arg1.length
    if not arg1.length:
        idx = 0
        while tokens.length > idx:
            tokens[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            tokens[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tokens.length > idx:
            tokens[idx] = 0
            idx = idx + 1
            continue 
    sub_4d11fb4a.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_4d11fb4a.length > idx:
            sub_4d11fb4a[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            sub_4d11fb4a[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_4d11fb4a.length > idx:
            sub_4d11fb4a[idx] = 0
            idx = idx + 1
            continue 
}

function sub_782661bc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor13[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 30
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 'SafeMath: subtraction overflow'
    if lastUpdatedBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - lastUpdatedBlock < sub_b3606b56:
        revert with 0, 
                    32,
                    46,
                    0x65466173745072696365466565643a206d696e426c6f636b496e74657276616c206e6f7420796574207061737365,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 338 len 18]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 30
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 'SafeMath: subtraction overflow'
    if sub_3aa08f86 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 <= block.timestamp - sub_3aa08f86:
        revert with 0, 
                    32,
                    45,
                    0x77466173745072696365466565643a205f74696d657374616d702062656c6f7720616c6c6f7765642072616e67,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 401 len 19]
    if sub_3aa08f86 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 >= sub_3aa08f86 + block.timestamp:
        revert with 0, 
                    32,
                    47,
                    0x466173745072696365466565643a205f74696d657374616d70206578636565647320616c6c6f7765642072616e6700,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 403 len 17]
    if arg3 >= lastUpdatedAt:
        lastUpdatedAt = arg3
        lastUpdatedBlock = block.number
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _54 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            prices[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg2.length
            _65 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if sub_0e9272eaAddress:
                mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + 292] = address(_54)
                mem[(32 * arg1.length) + (32 * arg2.length) + 324] = _65
                require ext_code.size(sub_0e9272eaAddress)
                call sub_0e9272eaAddress.0xe0409c71 with:
                     gas gas_remaining wei
                    args address(_54), _65
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_17835d1c(?) payable {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastUpdatedBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - lastUpdatedBlock < sub_b3606b56:
        revert with 0, 
                    32,
                    46,
                    0x65466173745072696365466565643a206d696e426c6f636b496e74657276616c206e6f7420796574207061737365,
                    mem[274 len 18]
    mem[64] = 224
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if sub_3aa08f86 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 <= block.timestamp - sub_3aa08f86:
        revert with 0, 
                    32,
                    45,
                    0x77466173745072696365466565643a205f74696d657374616d702062656c6f7720616c6c6f7765642072616e67,
                    mem[337 len 19]
    if sub_3aa08f86 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= sub_3aa08f86 + block.timestamp:
        revert with 0, 
                    32,
                    47,
                    0x466173745072696365466565643a205f74696d657374616d70206578636565647320616c6c6f7765642072616e6700,
                    mem[339 len 17]
    if arg2 >= lastUpdatedAt:
        lastUpdatedAt = arg2
        lastUpdatedBlock = block.number
        idx = 0
        while idx < 8:
            if idx >= tokens.length:
            require idx < sub_4d11fb4a.length
            mem[0] = 18
            if not uint32(Mask(256, -32 * idx, arg1) >> 32 * idx):
                _76 = mem[64]
                mem[64] = mem[64] + 64
                mem[_76] = 26
                mem[_76 + 32] = 'SafeMath: division by zero' << 48
                if not sub_4d11fb4a[idx]:
                    _78 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _78 + 68] = mem[idx + _76 + 32]
                        idx = idx + 32
                        continue 
                    mem[_78 + 68] = mem[_78 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _78 + -mem[64] + 100
                mem[0] = tokens[idx]
                mem[32] = 14
                prices[stor17[idx]] = 0 / sub_4d11fb4a[idx]
                if sub_0e9272eaAddress:
                    mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = tokens[idx]
                    mem[mem[64] + 36] = 0 / sub_4d11fb4a[idx]
                    require ext_code.size(sub_0e9272eaAddress)
                    call sub_0e9272eaAddress.0xe0409c71 with:
                         gas gas_remaining wei
                        args tokens[idx], 0 / sub_4d11fb4a[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _77 = mem[64]
                mem[64] = mem[64] + 64
                mem[_77] = 26
                mem[_77 + 32] = 'SafeMath: division by zero' << 48
                if not sub_4d11fb4a[idx]:
                    _81 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _81 + 68] = mem[idx + _77 + 32]
                        idx = idx + 32
                        continue 
                    mem[_81 + 68] = mem[_81 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _81 + -mem[64] + 100
                mem[0] = tokens[idx]
                mem[32] = 14
                prices[stor17[idx]] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                if sub_0e9272eaAddress:
                    mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = tokens[idx]
                    mem[mem[64] + 36] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                    require ext_code.size(sub_0e9272eaAddress)
                    call sub_0e9272eaAddress.0xe0409c71 with:
                         gas gas_remaining wei
                        args tokens[idx], 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_1389a3cc(?) payable {
    require calldata.size - 4 >= 128
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastUpdatedBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - lastUpdatedBlock < sub_b3606b56:
        revert with 0, 
                    32,
                    46,
                    0x65466173745072696365466565643a206d696e426c6f636b496e74657276616c206e6f7420796574207061737365,
                    mem[274 len 18]
    mem[64] = 224
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if sub_3aa08f86 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 <= block.timestamp - sub_3aa08f86:
        revert with 0, 
                    32,
                    45,
                    0x77466173745072696365466565643a205f74696d657374616d702062656c6f7720616c6c6f7765642072616e67,
                    mem[337 len 19]
    if sub_3aa08f86 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= sub_3aa08f86 + block.timestamp:
        revert with 0, 
                    32,
                    47,
                    0x466173745072696365466565643a205f74696d657374616d70206578636565647320616c6c6f7765642072616e6700,
                    mem[339 len 17]
    if arg2 >= lastUpdatedAt:
        lastUpdatedAt = arg2
        lastUpdatedBlock = block.number
        idx = 0
        while idx < 8:
            if idx >= tokens.length:
                require ext_code.size(sub_61ef161fAddress)
                call sub_61ef161fAddress.0x9a208100 with:
                     gas gas_remaining wei
                    args arg3, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_61ef161fAddress)
                call sub_61ef161fAddress.0xf3883d8b with:
                     gas gas_remaining wei
                    args arg4, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require idx < sub_4d11fb4a.length
            mem[0] = 18
            if not uint32(Mask(256, -32 * idx, arg1) >> 32 * idx):
                _92 = mem[64]
                mem[64] = mem[64] + 64
                mem[_92] = 26
                mem[_92 + 32] = 'SafeMath: division by zero' << 48
                if not sub_4d11fb4a[idx]:
                    _94 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _94 + 68] = mem[idx + _92 + 32]
                        idx = idx + 32
                        continue 
                    mem[_94 + 68] = mem[_94 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _94 + -mem[64] + 100
                mem[0] = tokens[idx]
                mem[32] = 14
                prices[stor17[idx]] = 0 / sub_4d11fb4a[idx]
                if sub_0e9272eaAddress:
                    mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = tokens[idx]
                    mem[mem[64] + 36] = 0 / sub_4d11fb4a[idx]
                    require ext_code.size(sub_0e9272eaAddress)
                    call sub_0e9272eaAddress.0xe0409c71 with:
                         gas gas_remaining wei
                        args tokens[idx], 0 / sub_4d11fb4a[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 26
                mem[_93 + 32] = 'SafeMath: division by zero' << 48
                if not sub_4d11fb4a[idx]:
                    _97 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _97 + 68] = mem[idx + _93 + 32]
                        idx = idx + 32
                        continue 
                    mem[_97 + 68] = mem[_97 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _97 + -mem[64] + 100
                mem[0] = tokens[idx]
                mem[32] = 14
                prices[stor17[idx]] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                if sub_0e9272eaAddress:
                    mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = tokens[idx]
                    mem[mem[64] + 36] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                    require ext_code.size(sub_0e9272eaAddress)
                    call sub_0e9272eaAddress.0xe0409c71 with:
                         gas gas_remaining wei
                        args tokens[idx], 1000000000000 * 10^18 * uint32(Mask(256, -32 * idx, arg1) >> 32 * idx) / sub_4d11fb4a[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    require ext_code.size(sub_61ef161fAddress)
    call sub_61ef161fAddress.0x9a208100 with:
         gas gas_remaining wei
        args arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_61ef161fAddress)
    call sub_61ef161fAddress.0xf3883d8b with:
         gas gas_remaining wei
        args arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_03f4d7dc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'FastPriceFeed: forbidden'
    mem[(32 * arg1.length) + 128] = 30
    mem[(32 * arg1.length) + 160] = 'SafeMath: subtraction overflow'
    if lastUpdatedBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - lastUpdatedBlock < sub_b3606b56:
        revert with 0, 
                    32,
                    46,
                    0x65466173745072696365466565643a206d696e426c6f636b496e74657276616c206e6f7420796574207061737365,
                    mem[(32 * arg1.length) + 306 len 18]
    mem[64] = (32 * arg1.length) + 256
    mem[(32 * arg1.length) + 192] = 30
    mem[(32 * arg1.length) + 224] = 'SafeMath: subtraction overflow'
    if sub_3aa08f86 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 <= block.timestamp - sub_3aa08f86:
        revert with 0, 
                    32,
                    45,
                    0x77466173745072696365466565643a205f74696d657374616d702062656c6f7720616c6c6f7765642072616e67,
                    mem[(32 * arg1.length) + 369 len 19]
    if sub_3aa08f86 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= sub_3aa08f86 + block.timestamp:
        revert with 0, 
                    32,
                    47,
                    0x466173745072696365466565643a205f74696d657374616d70206578636565647320616c6c6f7765642072616e6700,
                    mem[(32 * arg1.length) + 371 len 17]
    if arg2 >= lastUpdatedAt:
        lastUpdatedAt = arg2
        lastUpdatedBlock = block.number
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _104 = mem[(32 * idx) + 128]
            s = 0
            while s < 8:
                if s + (8 * idx) >= tokens.length:
                require s + (8 * idx) < sub_4d11fb4a.length
                mem[0] = 18
                if not uint32(Mask(256, -32 * s, _104) >> 32 * s):
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 26
                    mem[_135 + 32] = 'SafeMath: division by zero' << 48
                    if not stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]:
                        _137 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _137 + 68] = mem[idx + _135 + 32]
                            idx = idx + 32
                            continue 
                        mem[_137 + 68] = mem[_137 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _137 + -mem[64] + 100
                    mem[0] = stor[('name', 'tokens', 17) + s + (8 * idx)]
                    mem[32] = 14
                    prices[stor[('name', 'stor17', 17) + s + (8 * idx)]] = 0 / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                    if sub_0e9272eaAddress:
                        mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor[('name', 'tokens', 17) + s + (8 * idx)]
                        mem[mem[64] + 36] = 0 / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                        require ext_code.size(sub_0e9272eaAddress)
                        call sub_0e9272eaAddress.0xe0409c71 with:
                             gas gas_remaining wei
                            args stor[('name', 'tokens', 17) + s + (8 * idx)], 0 / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 1000000000000 * 10^18 * uint32(Mask(256, -32 * s, _104) >> 32 * s) / uint32(Mask(256, -32 * s, _104) >> 32 * s) != 1000000000000 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_136] = 26
                    mem[_136 + 32] = 'SafeMath: division by zero' << 48
                    if not stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]:
                        _140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _140 + 68] = mem[idx + _136 + 32]
                            idx = idx + 32
                            continue 
                        mem[_140 + 68] = mem[_140 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _140 + -mem[64] + 100
                    mem[0] = stor[('name', 'tokens', 17) + s + (8 * idx)]
                    mem[32] = 14
                    prices[stor[('name', 'stor17', 17) + s + (8 * idx)]] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * s, _104) >> 32 * s) / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                    if sub_0e9272eaAddress:
                        mem[mem[64]] = 0xe0409c7100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor[('name', 'tokens', 17) + s + (8 * idx)]
                        mem[mem[64] + 36] = 1000000000000 * 10^18 * uint32(Mask(256, -32 * s, _104) >> 32 * s) / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                        require ext_code.size(sub_0e9272eaAddress)
                        call sub_0e9272eaAddress.0xe0409c71 with:
                             gas gas_remaining wei
                            args stor[('name', 'tokens', 17) + s + (8 * idx)], 1000000000000 * 10^18 * uint32(Mask(256, -32 * s, _104) >> 32 * s) / stor[('name', 'sub_4d11fb4a', 18) + s + (8 * idx)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
}

function getPrice(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if sub_03cd2571 + lastUpdatedAt < lastUpdatedAt:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > sub_03cd2571 + lastUpdatedAt:
        return arg2
    if not prices[address(arg1)]:
        return arg2
    if sub_715c7536 + 10000 < 10000:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if sub_715c7536 > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if uint8(stor0.field_168):
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if sub_b0a25666 >= sub_287800c9:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if prices[address(arg1)] < 0:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if prices[address(arg1)] > 0:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
        else:
            if (10000 * arg2) - (sub_715c7536 * arg2) / arg2 != -sub_715c7536 + 10000:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if uint8(stor0.field_168):
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if sub_b0a25666 >= sub_287800c9:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
            if prices[address(arg1)] > 0:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > 0:
                        return 0
                return prices[address(arg1)]
        ('le', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'prices', 14))), 0)
    else:
        if (10000 * arg2) + (sub_715c7536 * arg2) / arg2 != sub_715c7536 + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_715c7536 > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if uint8(stor0.field_168):
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if sub_b0a25666 >= sub_287800c9:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if prices[address(arg1)] < 0:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < 0:
                        return 0
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
        else:
            if (10000 * arg2) - (sub_715c7536 * arg2) / arg2 != -sub_715c7536 + 10000:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if uint8(stor0.field_168):
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if sub_b0a25666 >= sub_287800c9:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
            if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                if not arg3:
                    if arg2 < prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] < (10000 * arg2) - (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) - (sub_715c7536 * arg2) / 10000)
                else:
                    if arg2 > prices[address(arg1)]:
                        return arg2
                    if prices[address(arg1)] > (10000 * arg2) + (sub_715c7536 * arg2) / 10000:
                        return ((10000 * arg2) + (sub_715c7536 * arg2) / 10000)
                return prices[address(arg1)]
        ('le', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'prices', 14))), ('div', ('add', ('mul', 10000, ('param', 'arg2')), ('mul', ('stor', ('name', 'sub_715c7536', 10)), ('param', 'arg2'))), 10000))
    if not arg3:
        if arg2 >= prices[address(arg1)]:
            return prices[address(arg1)]
        if sub_114fbeb3 > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not prices[address(arg1)]:
            if 0 < arg2:
                return arg2
            else:
                return 0
        if (10000 * prices[address(arg1)]) - (sub_114fbeb3 * prices[address(arg1)]) / prices[address(arg1)] != -sub_114fbeb3 + 10000:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if (10000 * prices[address(arg1)]) - (sub_114fbeb3 * prices[address(arg1)]) / 10000 < arg2:
            return arg2
        return ((10000 * prices[address(arg1)]) - (sub_114fbeb3 * prices[address(arg1)]) / 10000)
    if arg2 <= prices[address(arg1)]:
        return prices[address(arg1)]
    if sub_114fbeb3 + 10000 < 10000:
        revert with 0, 'SafeMath: addition overflow'
    if not prices[address(arg1)]:
        if 0 > arg2:
            return arg2
        else:
            return 0
    if (10000 * prices[address(arg1)]) + (sub_114fbeb3 * prices[address(arg1)]) / prices[address(arg1)] != sub_114fbeb3 + 10000:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if (10000 * prices[address(arg1)]) + (sub_114fbeb3 * prices[address(arg1)]) / 10000 > arg2:
        return arg2
    return ((10000 * prices[address(arg1)]) + (sub_114fbeb3 * prices[address(arg1)]) / 10000)
}



}
