contract main {




// =====================  Runtime code  =====================


const name = 'EverRise Stats', 0


address owner;
uint256 sub_5a8c5d60;
uint256 sub_5d98fc27;
address sub_270bf52eAddress;
address stor4;
address sub_7c68e584Address;
address stor6;
address pairAddress;
address stor8;
address sub_e976faeeAddress;
address stor10;
address sub_8893d55aAddress;
address stor12;
address sub_04bf1d6bAddress;
address stor14;
address sub_c4c6c237Address;
uint8 stor16;
uint8 stor16; offset 160
uint8 stor16; offset 168
address stor16;

function sub_04bf1d6b(?) {
    return sub_04bf1d6bAddress
}

function sub_270bf52e(?) {
    return sub_270bf52eAddress
}

function sub_5a8c5d60(?) {
    return sub_5a8c5d60
}

function sub_5d98fc27(?) {
    return sub_5d98fc27
}

function sub_7c68e584(?) {
    return sub_7c68e584Address
}

function sub_8893d55a(?) {
    return sub_8893d55aAddress
}

function owner() {
    return owner
}

function pairAddress() {
    return pairAddress
}

function sub_c4c6c237(?) {
    return sub_c4c6c237Address
}

function sub_e976faee(?) {
    return sub_e976faeeAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 1557672338
    if not arg1:
        revert with 1714970531
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f128b0c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cb616f2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_everStakeAddress should not be the zero address'
    emit 0x2ff53b5f: sub_7c68e584Address, address(arg1)
    sub_7c68e584Address = address(arg1)
    stor6 = address(arg1)
}

function sub_2b1087db(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_usdOracleAddress should not be the zero address'
    emit 0xadb18193: sub_e976faeeAddress, address(arg1)
    sub_e976faeeAddress = address(arg1)
    stor10 = address(arg1)
}

function sub_a957daf7(?) {
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(stor16.field_0).0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_5d98fc27 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    staticcall address(stor16.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[0] * sub_5d98fc27 / ext_call.return_data[0], uint8(ext_call.return_data[0])
}

function sub_171c1fda(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 1557672338
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token Address can not be a zero address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'To Address can not be a zero address'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Balance is zero'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cd0336c0(?) {
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if ext_call.success:
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        staticcall stor10.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return ext_call.return_data[32], uint8(ext_call.return_data[0])
    if return_data.size <= 3:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[ext_call.return_data[0] + 96] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 32 > return_data.size - 4:
        revert with ext_call.return_data[0 len return_data.size]
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 < 96 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
    if not ext_call.return_data[0] + 96:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _19 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _22 = mem[_19]
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall address(stor16.field_0).0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _25 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _26 = mem[_25]
    if mem[_25] and sub_5d98fc27 > -1 / mem[_25]:
        revert with 0, 17
    if not _22:
        revert with 0, 18
    staticcall address(stor16.field_0).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _29 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_29] == mem[_29 + 31 len 1]
    return _26 * sub_5d98fc27 / _22, mem[_29 + 31 len 1]
}

function setEverRiseAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 1557672338
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_everRiseAddress should not be the zero address'
    emit 0x1de85728: sub_270bf52eAddress, arg1
    sub_270bf52eAddress = arg1
    stor4 = arg1
    staticcall stor4.uniswapV2Pair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    stor8 = ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20] - sub_270bf52eAddress:
        staticcall stor8.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
    stor14 = sub_04bf1d6bAddress
    staticcall stor12.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_c4c6c237Address = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20] - sub_04bf1d6bAddress:
        staticcall stor12.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_c4c6c237Address = ext_call.return_data[12 len 20]
    address(stor16.field_0) = sub_c4c6c237Address
    staticcall stor4.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    uint8(stor16.field_160) = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_5a8c5d60 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            sub_5a8c5d60 = 10^ext_call.return_data[31 len 1]
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
            sub_5a8c5d60 = s * t
    staticcall stor14.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    uint8(stor16.field_168) = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_5d98fc27 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            sub_5d98fc27 = 10^ext_call.return_data[31 len 1]
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
            sub_5d98fc27 = s * t
}

function sub_696cef3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_coinStablePairAddress should not be the zero address'
    emit 0xfc484159: sub_8893d55aAddress, address(arg1)
    sub_8893d55aAddress = address(arg1)
    stor12 = address(arg1)
    staticcall stor4.uniswapV2Pair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    stor8 = ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20] - sub_270bf52eAddress:
        staticcall stor8.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
    stor14 = sub_04bf1d6bAddress
    staticcall stor12.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_c4c6c237Address = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20] - sub_04bf1d6bAddress:
        staticcall stor12.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_c4c6c237Address = ext_call.return_data[12 len 20]
    address(stor16.field_0) = sub_c4c6c237Address
    staticcall stor4.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    uint8(stor16.field_160) = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_5a8c5d60 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            sub_5a8c5d60 = 10^ext_call.return_data[31 len 1]
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
            sub_5a8c5d60 = s * t
    staticcall stor14.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    uint8(stor16.field_168) = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_5d98fc27 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            sub_5d98fc27 = 10^ext_call.return_data[31 len 1]
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
            sub_5d98fc27 = s * t
}

function getTokenPrices() {
    mem[100] = pairAddress
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = pairAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
    if ext_call.success:
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        staticcall stor10.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[0]:
            if False and ext_call.return_data[32] > 0:
                revert with 0, 17
            if not sub_5d98fc27:
                revert with 0, 18
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0] << 248,
                   0,
                   0 / sub_5d98fc27
        if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27
    if return_data.size <= 3:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] + 32 > return_data.size - 4:
        revert with ext_call.return_data[0 len return_data.size]
    if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] + 31) + 97 < 96 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] + 31) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] + 31) + 97
    if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 96] + 31) + 97] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _27 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _28 = mem[_27]
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall address(stor16.field_0).0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _31 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _32 = mem[_31]
    if mem[_31] and sub_5d98fc27 > -1 / mem[_31]:
        revert with 0, 17
    if not _28:
        revert with 0, 18
    staticcall address(stor16.field_0).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_37] == mem[_37 + 31 len 1]
    if not ext_call.return_data[0]:
        if False and _32 * sub_5d98fc27 / _28 > 0:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        return ext_call.return_data[0], ext_call.return_data[0], _32 * sub_5d98fc27 / _28, mem[_37] << 248, 0, 0 / sub_5d98fc27
    if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and _32 * sub_5d98fc27 / _28 > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_5d98fc27:
        revert with 0, 18
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           _32 * sub_5d98fc27 / _28,
           mem[_37] << 248,
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _32 * sub_5d98fc27 / _28 / sub_5d98fc27
}

function getStats() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[772] = pairAddress
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[768] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 772] = pairAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[ceil32(return_data.size) + 768] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 768 len 160] = ext_call.return_data[0 len 160]
    if ext_call.success:
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        staticcall stor10.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[0]:
            if False and ext_call.return_data[32] > 0:
                revert with 0, 17
            if not sub_5d98fc27:
                revert with 0, 18
            staticcall stor4.0xb9e5a03b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x41e70fa6 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            staticcall stor6.0xed74d26e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / sub_5d98fc27 and ext_call.return_data[0] > -1 / 0 / sub_5d98fc27:
                    revert with 0, 17
                if not sub_5a8c5d60:
                    revert with 0, 18
                staticcall stor6.totalRewardsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor4.0x8db2063b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor4.holders() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(11 * ceil32(return_data.size)) + 1280] = ext_call.return_data[28 len 4]
                return eth.balance(sub_270bf52eAddress), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       2 * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       0 / sub_5d98fc27,
                       0 / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                       block.number << 128,
                       block.timestamp << 192,
                       mem[(11 * ceil32(return_data.size)) + 1308 len 4],
                       uint8(stor16.field_0),
                       uint8(stor16.field_0),
                       ext_call.return_data[0] << 248,
                       8
            staticcall stor6.0x63234f3d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / sub_5d98fc27 and ext_call.return_data[0] > -1 / 0 / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(12 * ceil32(return_data.size)) + 1280] = ext_call.return_data[28 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   2 * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[32],
                   0 / sub_5d98fc27,
                   0 / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[(12 * ceil32(return_data.size)) + 1308 len 4],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   ext_call.return_data[0] << 248,
                   8
        if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        staticcall stor4.0xb9e5a03b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.0x41e70fa6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        staticcall stor6.0xed74d26e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 1280] = ext_call.return_data[28 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   2 * ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27,
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[(11 * ceil32(return_data.size)) + 1308 len 4],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   ext_call.return_data[0] << 248,
                   8
        staticcall stor6.0x63234f3d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.holders() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(12 * ceil32(return_data.size)) + 1280] = ext_call.return_data[28 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               2 * ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[(12 * ceil32(return_data.size)) + 1308 len 4],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               ext_call.return_data[0] << 248,
               8
    if return_data.size <= 3:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 768 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] + 32 > return_data.size - 4:
        revert with ext_call.return_data[0 len return_data.size]
    if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] + 31) + 769 < 768 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] + 31) + 769 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] + 31) + 769
    if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 768] + 31) + 769] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _28 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _29 = mem[_28]
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall address(stor16.field_0).0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _32 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _33 = mem[_32]
    if mem[_32] and sub_5d98fc27 > -1 / mem[_32]:
        revert with 0, 17
    if not _29:
        revert with 0, 18
    staticcall address(stor16.field_0).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_42]
    require mem[_42] == mem[_42 + 31 len 1]
    if not ext_call.return_data[0]:
        if False and _33 * sub_5d98fc27 / _29 > 0:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        staticcall stor4.0xb9e5a03b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _78 = mem[_72]
        staticcall stor4.0x41e70fa6 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_83]
        if _78 > !mem[_83]:
            revert with 0, 17
        staticcall stor6.0xed74d26e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_107]
        if not mem[_107]:
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_138]
            if 0 / sub_5d98fc27 and mem[_138] > -1 / 0 / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            _217 = mem[64]
            mem[64] = mem[64] + 672
            mem[_217] = eth.balance(sub_270bf52eAddress)
            mem[_217 + 32] = ext_call.return_data[0]
            mem[_217 + 64] = ext_call.return_data[0]
            mem[_217 + 96] = _117
            mem[_217 + 128] = 0
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_217 + 160] = mem[_224]
            mem[_217 + 192] = _78
            mem[_217 + 224] = _92
            mem[_217 + 256] = _78 + _92
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_217 + 288] = mem[_257]
            mem[_217 + 320] = 0
            mem[_217 + 352] = _33 * sub_5d98fc27 / _29
            mem[_217 + 384] = 0 / sub_5d98fc27
            mem[_217 + 416] = 0 / sub_5d98fc27 * _165 / sub_5a8c5d60
            mem[_217 + 448] = uint128(block.number)
            mem[_217 + 480] = uint64(block.timestamp)
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_217 + 512] = mem[_291 + 28 len 4]
            mem[_217 + 544] = uint8(stor16.field_160)
            mem[_217 + 576] = uint8(stor16.field_168)
            mem[_217 + 608] = uint8(_46)
            mem[_217 + 640] = 8
            mem[mem[64]] = eth.balance(sub_270bf52eAddress)
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = _117
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = mem[_217 + 160]
            mem[mem[64] + 192] = _78
            mem[mem[64] + 224] = _92
            mem[mem[64] + 256] = _78 + _92
            mem[mem[64] + 288] = mem[_217 + 288]
            mem[mem[64] + 320] = 0
            mem[mem[64] + 352] = _33 * sub_5d98fc27 / _29
            mem[mem[64] + 384] = 0 / sub_5d98fc27
            mem[mem[64] + 416] = 0 / sub_5d98fc27 * _165 / sub_5a8c5d60
            mem[mem[64] + 448] = uint128(block.number)
            mem[mem[64] + 480] = uint64(block.timestamp)
            mem[mem[64] + 512] = mem[_217 + 540 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   _117,
                   0,
                   mem[mem[64] + 160],
                   _78,
                   _92,
                   _78 + _92,
                   mem[mem[64] + 288],
                   0,
                   _33 * sub_5d98fc27 / _29,
                   0 / sub_5d98fc27,
                   0 / sub_5d98fc27 * _165 / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[mem[64] + 512],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   _46 << 248,
                   8
        staticcall stor6.0x63234f3d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _140 = mem[_132]
        if mem[_132] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not _117:
            revert with 0, 18
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_225]
        if 0 / sub_5d98fc27 and mem[_225] > -1 / 0 / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        _295 = mem[64]
        mem[64] = mem[64] + 672
        mem[_295] = eth.balance(sub_270bf52eAddress)
        mem[_295 + 32] = ext_call.return_data[0]
        mem[_295 + 64] = ext_call.return_data[0]
        mem[_295 + 96] = _117
        mem[_295 + 128] = 100 * 10^6 * _140 / _117
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_295 + 160] = mem[_301]
        mem[_295 + 192] = _78
        mem[_295 + 224] = _92
        mem[_295 + 256] = _78 + _92
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_295 + 288] = mem[_332]
        mem[_295 + 320] = 0
        mem[_295 + 352] = _33 * sub_5d98fc27 / _29
        mem[_295 + 384] = 0 / sub_5d98fc27
        mem[_295 + 416] = 0 / sub_5d98fc27 * _250 / sub_5a8c5d60
        mem[_295 + 448] = uint128(block.number)
        mem[_295 + 480] = uint64(block.timestamp)
        staticcall stor4.holders() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_295 + 512] = mem[_342 + 28 len 4]
        mem[_295 + 544] = uint8(stor16.field_160)
        mem[_295 + 576] = uint8(stor16.field_168)
        mem[_295 + 608] = uint8(_46)
        mem[_295 + 640] = 8
        mem[mem[64]] = eth.balance(sub_270bf52eAddress)
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = _117
        mem[mem[64] + 128] = 100 * 10^6 * _140 / _117
        mem[mem[64] + 160] = mem[_295 + 160]
        mem[mem[64] + 192] = _78
        mem[mem[64] + 224] = _92
        mem[mem[64] + 256] = _78 + _92
        mem[mem[64] + 288] = mem[_295 + 288]
        mem[mem[64] + 320] = 0
        mem[mem[64] + 352] = _33 * sub_5d98fc27 / _29
        mem[mem[64] + 384] = 0 / sub_5d98fc27
        mem[mem[64] + 416] = 0 / sub_5d98fc27 * _250 / sub_5a8c5d60
        mem[mem[64] + 448] = uint128(block.number)
        mem[mem[64] + 480] = uint64(block.timestamp)
        mem[mem[64] + 512] = mem[_295 + 540 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               _117,
               100 * 10^6 * _140 / _117,
               mem[mem[64] + 160],
               _78,
               _92,
               _78 + _92,
               mem[mem[64] + 288],
               0,
               _33 * sub_5d98fc27 / _29,
               0 / sub_5d98fc27,
               0 / sub_5d98fc27 * _250 / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[mem[64] + 512],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               _46 << 248,
               8
    if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and _33 * sub_5d98fc27 / _29 > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_5d98fc27:
        revert with 0, 18
    staticcall stor4.0xb9e5a03b with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _96 = mem[_93]
    staticcall stor4.0x41e70fa6 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _113 = mem[_105]
    if _96 > !mem[_105]:
        revert with 0, 17
    staticcall stor6.0xed74d26e with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _166 = mem[_139]
    if not mem[_139]:
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_185]
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 and mem[_185] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        _258 = mem[64]
        mem[64] = mem[64] + 672
        mem[_258] = eth.balance(sub_270bf52eAddress)
        mem[_258 + 32] = ext_call.return_data[0]
        mem[_258 + 64] = ext_call.return_data[0]
        mem[_258 + 96] = _166
        mem[_258 + 128] = 0
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_258 + 160] = mem[_265]
        mem[_258 + 192] = _96
        mem[_258 + 224] = _113
        mem[_258 + 256] = _96 + _113
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_258 + 288] = mem[_302]
        mem[_258 + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
        mem[_258 + 352] = _33 * sub_5d98fc27 / _29
        mem[_258 + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27
        mem[_258 + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _213 / sub_5a8c5d60
        mem[_258 + 448] = uint128(block.number)
        mem[_258 + 480] = uint64(block.timestamp)
        staticcall stor4.holders() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_258 + 512] = mem[_333 + 28 len 4]
        mem[_258 + 544] = uint8(stor16.field_160)
        mem[_258 + 576] = uint8(stor16.field_168)
        mem[_258 + 608] = uint8(_46)
        mem[_258 + 640] = 8
        mem[mem[64]] = eth.balance(sub_270bf52eAddress)
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = _166
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = mem[_258 + 160]
        mem[mem[64] + 192] = _96
        mem[mem[64] + 224] = _113
        mem[mem[64] + 256] = _96 + _113
        mem[mem[64] + 288] = mem[_258 + 288]
        mem[mem[64] + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
        mem[mem[64] + 352] = _33 * sub_5d98fc27 / _29
        mem[mem[64] + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27
        mem[mem[64] + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _213 / sub_5a8c5d60
        mem[mem[64] + 448] = uint128(block.number)
        mem[mem[64] + 480] = uint64(block.timestamp)
        mem[mem[64] + 512] = mem[_258 + 540 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               _166,
               0,
               mem[mem[64] + 160],
               _96,
               _113,
               _96 + _113,
               mem[mem[64] + 288],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               _33 * sub_5d98fc27 / _29,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _213 / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[mem[64] + 512],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               _46 << 248,
               8
    staticcall stor6.0x63234f3d with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _181 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _188 = mem[_181]
    if mem[_181] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not _166:
        revert with 0, 18
    staticcall stor4.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _266 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _293 = mem[_266]
    if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 and mem[_266] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27:
        revert with 0, 17
    if not sub_5a8c5d60:
        revert with 0, 18
    _334 = mem[64]
    mem[64] = mem[64] + 672
    mem[_334] = eth.balance(sub_270bf52eAddress)
    mem[_334 + 32] = ext_call.return_data[0]
    mem[_334 + 64] = ext_call.return_data[0]
    mem[_334 + 96] = _166
    mem[_334 + 128] = 100 * 10^6 * _188 / _166
    staticcall stor6.totalRewardsDistributed() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _339 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_334 + 160] = mem[_339]
    mem[_334 + 192] = _96
    mem[_334 + 224] = _113
    mem[_334 + 256] = _96 + _113
    staticcall stor4.0x8db2063b with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _370 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_334 + 288] = mem[_370]
    mem[_334 + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
    mem[_334 + 352] = _33 * sub_5d98fc27 / _29
    mem[_334 + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27
    mem[_334 + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _293 / sub_5a8c5d60
    mem[_334 + 448] = uint128(block.number)
    mem[_334 + 480] = uint64(block.timestamp)
    staticcall stor4.holders() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _397 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_334 + 512] = mem[_397 + 28 len 4]
    mem[_334 + 544] = uint8(stor16.field_160)
    mem[_334 + 576] = uint8(stor16.field_168)
    mem[_334 + 608] = uint8(_46)
    mem[_334 + 640] = 8
    mem[mem[64]] = eth.balance(sub_270bf52eAddress)
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = _166
    mem[mem[64] + 128] = 100 * 10^6 * _188 / _166
    mem[mem[64] + 160] = mem[_334 + 160]
    mem[mem[64] + 192] = _96
    mem[mem[64] + 224] = _113
    mem[mem[64] + 256] = _96 + _113
    mem[mem[64] + 288] = mem[_334 + 288]
    mem[mem[64] + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
    mem[mem[64] + 352] = _33 * sub_5d98fc27 / _29
    mem[mem[64] + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27
    mem[mem[64] + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _293 / sub_5a8c5d60
    mem[mem[64] + 448] = uint128(block.number)
    mem[mem[64] + 480] = uint64(block.timestamp)
    mem[mem[64] + 512] = mem[_334 + 540 len 4]
    return eth.balance(sub_270bf52eAddress), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           _166,
           100 * 10^6 * _188 / _166,
           mem[mem[64] + 160],
           _96,
           _113,
           _96 + _113,
           mem[mem[64] + 288],
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
           _33 * sub_5d98fc27 / _29,
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27,
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _33 * sub_5d98fc27 / _29 / sub_5d98fc27 * _293 / sub_5a8c5d60,
           block.number << 128,
           block.timestamp << 192,
           mem[mem[64] + 512],
           uint8(stor16.field_0),
           uint8(stor16.field_0),
           _46 << 248,
           8
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x2b1087db(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x04bf1d6b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_04bf1d6bAddress
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return 'EverRise Stats', 0
            if unknown_0x171c1fda(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if owner != msg.sender:
                    revert with 1557672338
                if not address(arg1):
                    revert with 0, 'Token Address can not be a zero address'
                if not address(arg2):
                    revert with 0, 'To Address can not be a zero address'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Balance is zero'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x179961f4(?????):
                    require unknown_0x270bf52e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_270bf52eAddress
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 1557672338
                if not address(arg1):
                    revert with 0, '_everRiseAddress should not be the zero address'
                emit 0x1de85728: sub_270bf52eAddress, address(arg1)
                sub_270bf52eAddress = address(arg1)
                stor4 = address(arg1)
                staticcall stor4.uniswapV2Pair() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                pairAddress = ext_call.return_data[12 len 20]
                stor8 = ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20] - sub_270bf52eAddress:
                    staticcall stor8.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
                stor14 = sub_04bf1d6bAddress
                staticcall stor12.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_c4c6c237Address = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20] - sub_04bf1d6bAddress:
                    staticcall stor12.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    sub_c4c6c237Address = ext_call.return_data[12 len 20]
                address(stor16.field_0) = sub_c4c6c237Address
                staticcall stor4.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                uint8(stor16.field_160) = ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    sub_5a8c5d60 = 1
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        sub_5a8c5d60 = 10^ext_call.return_data[31 len 1]
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
                        sub_5a8c5d60 = s * t
                staticcall stor14.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                uint8(stor16.field_168) = ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    sub_5d98fc27 = 1
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        sub_5d98fc27 = 10^ext_call.return_data[31 len 1]
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
                        sub_5d98fc27 = s * t
        else:
            if unknown_0x2b1087db(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 1557672338
                if not address(arg1):
                    revert with 0, '_usdOracleAddress should not be the zero address'
                emit 0xadb18193: sub_e976faeeAddress, address(arg1)
                sub_e976faeeAddress = address(arg1)
                stor10 = address(arg1)
            else:
                if unknown_0x5a8c5d60(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_5a8c5d60
                if unknown_0x5d98fc27(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_5d98fc27
                if uint32(call.func_hash) >> 224 != unknown_0x696cef3a(?????):
                    if unknown_0x7c68e584(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_7c68e584Address
                    require unknown_0x8893d55a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_8893d55aAddress
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 1557672338
                if not address(arg1):
                    revert with 0, '_coinStablePairAddress should not be the zero address'
                emit 0xfc484159: sub_8893d55aAddress, address(arg1)
                sub_8893d55aAddress = address(arg1)
                stor12 = address(arg1)
                staticcall stor4.uniswapV2Pair() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                pairAddress = ext_call.return_data[12 len 20]
                stor8 = ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20] - sub_270bf52eAddress:
                    staticcall stor8.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    sub_04bf1d6bAddress = ext_call.return_data[12 len 20]
                stor14 = sub_04bf1d6bAddress
                staticcall stor12.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_c4c6c237Address = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20] - sub_04bf1d6bAddress:
                    staticcall stor12.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    sub_c4c6c237Address = ext_call.return_data[12 len 20]
                address(stor16.field_0) = sub_c4c6c237Address
                staticcall stor4.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                uint8(stor16.field_160) = ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    sub_5a8c5d60 = 1
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        sub_5a8c5d60 = 10^ext_call.return_data[31 len 1]
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
                        sub_5a8c5d60 = s * t
                staticcall stor14.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                uint8(stor16.field_168) = ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    sub_5d98fc27 = 1
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        sub_5d98fc27 = 10^ext_call.return_data[31 len 1]
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
                        sub_5d98fc27 = s * t
    if unknown_0xc59d4847(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0xa8b08982(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if unknown_0xa957daf7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_8893d55aAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall address(stor16.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args sub_8893d55aAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and sub_5d98fc27 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall address(stor16.field_0).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return ext_call.return_data[0] * sub_5d98fc27 / ext_call.return_data[0], uint8(ext_call.return_data[0])
        if uint32(call.func_hash) >> 224 != unknown_0xaa13ca76(?????):
            require unknown_0xc4c6c237(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return sub_c4c6c237Address
        require not msg.value
        mem[132] = pairAddress
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args pairAddress
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = pairAddress
        staticcall stor14.0x70a08231 with:
                gas gas_remaining wei
               args pairAddress
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor10.latestRoundData() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 128 len 160] = ext_call.return_data[0 len 160]
        if ext_call.success:
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            staticcall stor10.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[0]:
                if False and ext_call.return_data[32] > 0:
                    revert with 0, 17
                if not sub_5d98fc27:
                    revert with 0, 18
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0] << 248,
                       0,
                       0 / sub_5d98fc27
            if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
                revert with 0, 17
            if not sub_5d98fc27:
                revert with 0, 18
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27
        if return_data.size <= 3:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size < 68:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] > test266151307():
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] + 32 > return_data.size - 4:
            revert with ext_call.return_data[0 len return_data.size]
        if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] + 31) + 129 < 128 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] + 31) + 129 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] + 31) + 129
        if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 128] + 31) + 129] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_8893d55aAddress
        staticcall stor14.0x70a08231 with:
                gas gas_remaining wei
               args sub_8893d55aAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _207 = mem[_201]
        mem[mem[64] + 4] = sub_8893d55aAddress
        staticcall address(stor16.field_0).0x70a08231 with:
                gas gas_remaining wei
               args sub_8893d55aAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _230 = mem[_215]
        if mem[_215] and sub_5d98fc27 > -1 / mem[_215]:
            revert with 0, 17
        if not _207:
            revert with 0, 18
        staticcall address(stor16.field_0).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == mem[_272 + 31 len 1]
        if not ext_call.return_data[0]:
            if False and _230 * sub_5d98fc27 / _207 > 0:
                revert with 0, 17
            if not sub_5d98fc27:
                revert with 0, 18
            return ext_call.return_data[0], ext_call.return_data[0], _230 * sub_5d98fc27 / _207, mem[_272] << 248, 0, 0 / sub_5d98fc27
        if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and _230 * sub_5d98fc27 / _207 > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               _230 * sub_5d98fc27 / _207,
               mem[_272] << 248,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _230 * sub_5d98fc27 / _207 / sub_5d98fc27
    if uint32(call.func_hash) >> 224 != unknown_0xc59d4847(?????):
        if unknown_0xcb616f2f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 1557672338
            if not address(arg1):
                revert with 0, '_everStakeAddress should not be the zero address'
            emit 0x2ff53b5f: sub_7c68e584Address, address(arg1)
            sub_7c68e584Address = address(arg1)
            stor6 = address(arg1)
        if uint32(call.func_hash) >> 224 != unknown_0xcd0336c0(?????):
            if unknown_0xe976faee(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_e976faeeAddress
            if unknown_0xf128b0c1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 1557672338
                call address(arg1) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 1557672338
                if not address(arg1):
                    revert with 1714970531
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
        require not msg.value
        staticcall stor10.latestRoundData() with:
                gas gas_remaining wei
        mem[128 len 160] = ext_call.return_data[0 len 160]
        if ext_call.success:
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            staticcall stor10.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return ext_call.return_data[32], uint8(ext_call.return_data[0])
        if return_data.size <= 3:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size < 68:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[ext_call.return_data[0] + 128] > test266151307():
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 128] + 32 > return_data.size - 4:
            revert with ext_call.return_data[0 len return_data.size]
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 128] + 31) + 129 < 128 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 128] + 31) + 129 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 128] + 31) + 129
        if not ext_call.return_data[0] + 128:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 128] + 31) + 129] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_8893d55aAddress
        staticcall stor14.0x70a08231 with:
                gas gas_remaining wei
               args sub_8893d55aAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_154]
        mem[mem[64] + 4] = sub_8893d55aAddress
        staticcall address(stor16.field_0).0x70a08231 with:
                gas gas_remaining wei
               args sub_8893d55aAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _182 = mem[_178]
        if mem[_178] and sub_5d98fc27 > -1 / mem[_178]:
            revert with 0, 17
        if not _166:
            revert with 0, 18
        staticcall address(stor16.field_0).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_216] == mem[_216 + 31 len 1]
        return _182 * sub_5d98fc27 / _166, mem[_216 + 31 len 1]
    require not msg.value
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[804] = pairAddress
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 804] = pairAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 800 len 160] = ext_call.return_data[0 len 160]
    if ext_call.success:
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        staticcall stor10.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[0]:
            if False and ext_call.return_data[32] > 0:
                revert with 0, 17
            if not sub_5d98fc27:
                revert with 0, 18
            staticcall stor4.0xb9e5a03b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x41e70fa6 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            staticcall stor6.0xed74d26e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / sub_5d98fc27 and ext_call.return_data[0] > -1 / 0 / sub_5d98fc27:
                    revert with 0, 17
                if not sub_5a8c5d60:
                    revert with 0, 18
                staticcall stor6.totalRewardsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor4.0x8db2063b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor4.holders() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(11 * ceil32(return_data.size)) + 1312] = ext_call.return_data[28 len 4]
                return eth.balance(sub_270bf52eAddress), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       2 * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       0 / sub_5d98fc27,
                       0 / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                       block.number << 128,
                       block.timestamp << 192,
                       mem[(11 * ceil32(return_data.size)) + 1340 len 4],
                       uint8(stor16.field_0),
                       uint8(stor16.field_0),
                       ext_call.return_data[0] << 248,
                       8
            staticcall stor6.0x63234f3d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / sub_5d98fc27 and ext_call.return_data[0] > -1 / 0 / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(12 * ceil32(return_data.size)) + 1312] = ext_call.return_data[28 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   2 * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[32],
                   0 / sub_5d98fc27,
                   0 / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[(12 * ceil32(return_data.size)) + 1340 len 4],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   ext_call.return_data[0] << 248,
                   8
        if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        staticcall stor4.0xb9e5a03b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.0x41e70fa6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        staticcall stor6.0xed74d26e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 1312] = ext_call.return_data[28 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   2 * ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27,
                   ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[(11 * ceil32(return_data.size)) + 1340 len 4],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   ext_call.return_data[0] << 248,
                   8
        staticcall stor6.0x63234f3d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor4.holders() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(12 * ceil32(return_data.size)) + 1312] = ext_call.return_data[28 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               100 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               2 * ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * ext_call.return_data[32] / sub_5d98fc27 * ext_call.return_data[0] / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[(12 * ceil32(return_data.size)) + 1340 len 4],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               ext_call.return_data[0] << 248,
               8
    if return_data.size <= 3:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 800 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] + 32 > return_data.size - 4:
        revert with ext_call.return_data[0 len return_data.size]
    if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] + 31) + 801 < 800 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] + 31) + 801 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] + 31) + 801
    if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 800] + 31) + 801] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _200 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _206 = mem[_200]
    mem[mem[64] + 4] = sub_8893d55aAddress
    staticcall address(stor16.field_0).0x70a08231 with:
            gas gas_remaining wei
           args sub_8893d55aAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _212 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _217 = mem[_212]
    if mem[_212] and sub_5d98fc27 > -1 / mem[_212]:
        revert with 0, 17
    if not _206:
        revert with 0, 18
    staticcall address(stor16.field_0).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _258 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _282 = mem[_258]
    require mem[_258] == mem[_258 + 31 len 1]
    if not ext_call.return_data[0]:
        if False and _217 * sub_5d98fc27 / _206 > 0:
            revert with 0, 17
        if not sub_5d98fc27:
            revert with 0, 18
        staticcall stor4.0xb9e5a03b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _384 = mem[_373]
        staticcall stor4.0x41e70fa6 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _399 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _423 = mem[_399]
        if _384 > !mem[_399]:
            revert with 0, 17
        staticcall stor6.0xed74d26e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _451 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _465 = mem[_451]
        if not mem[_451]:
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _517 = mem[_490]
            if 0 / sub_5d98fc27 and mem[_490] > -1 / 0 / sub_5d98fc27:
                revert with 0, 17
            if not sub_5a8c5d60:
                revert with 0, 18
            _569 = mem[64]
            mem[64] = mem[64] + 672
            mem[_569] = eth.balance(sub_270bf52eAddress)
            mem[_569 + 32] = ext_call.return_data[0]
            mem[_569 + 64] = ext_call.return_data[0]
            mem[_569 + 96] = _465
            mem[_569 + 128] = 0
            staticcall stor6.totalRewardsDistributed() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_569 + 160] = mem[_576]
            mem[_569 + 192] = _384
            mem[_569 + 224] = _423
            mem[_569 + 256] = _384 + _423
            staticcall stor4.0x8db2063b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_569 + 288] = mem[_609]
            mem[_569 + 320] = 0
            mem[_569 + 352] = _217 * sub_5d98fc27 / _206
            mem[_569 + 384] = 0 / sub_5d98fc27
            mem[_569 + 416] = 0 / sub_5d98fc27 * _517 / sub_5a8c5d60
            mem[_569 + 448] = uint128(block.number)
            mem[_569 + 480] = uint64(block.timestamp)
            staticcall stor4.holders() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_569 + 512] = mem[_643 + 28 len 4]
            mem[_569 + 544] = uint8(stor16.field_160)
            mem[_569 + 576] = uint8(stor16.field_168)
            mem[_569 + 608] = uint8(_282)
            mem[_569 + 640] = 8
            mem[mem[64]] = eth.balance(sub_270bf52eAddress)
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = _465
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = mem[_569 + 160]
            mem[mem[64] + 192] = _384
            mem[mem[64] + 224] = _423
            mem[mem[64] + 256] = _384 + _423
            mem[mem[64] + 288] = mem[_569 + 288]
            mem[mem[64] + 320] = 0
            mem[mem[64] + 352] = _217 * sub_5d98fc27 / _206
            mem[mem[64] + 384] = 0 / sub_5d98fc27
            mem[mem[64] + 416] = 0 / sub_5d98fc27 * _517 / sub_5a8c5d60
            mem[mem[64] + 448] = uint128(block.number)
            mem[mem[64] + 480] = uint64(block.timestamp)
            mem[mem[64] + 512] = mem[_569 + 540 len 4]
            return eth.balance(sub_270bf52eAddress), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   _465,
                   0,
                   mem[mem[64] + 160],
                   _384,
                   _423,
                   _384 + _423,
                   mem[mem[64] + 288],
                   0,
                   _217 * sub_5d98fc27 / _206,
                   0 / sub_5d98fc27,
                   0 / sub_5d98fc27 * _517 / sub_5a8c5d60,
                   block.number << 128,
                   block.timestamp << 192,
                   mem[mem[64] + 512],
                   uint8(stor16.field_0),
                   uint8(stor16.field_0),
                   _282 << 248,
                   8
        staticcall stor6.0x63234f3d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _484 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _492 = mem[_484]
        if mem[_484] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not _465:
            revert with 0, 18
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _577 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _602 = mem[_577]
        if 0 / sub_5d98fc27 and mem[_577] > -1 / 0 / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        _647 = mem[64]
        mem[64] = mem[64] + 672
        mem[_647] = eth.balance(sub_270bf52eAddress)
        mem[_647 + 32] = ext_call.return_data[0]
        mem[_647 + 64] = ext_call.return_data[0]
        mem[_647 + 96] = _465
        mem[_647 + 128] = 100 * 10^6 * _492 / _465
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _653 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_647 + 160] = mem[_653]
        mem[_647 + 192] = _384
        mem[_647 + 224] = _423
        mem[_647 + 256] = _384 + _423
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _684 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_647 + 288] = mem[_684]
        mem[_647 + 320] = 0
        mem[_647 + 352] = _217 * sub_5d98fc27 / _206
        mem[_647 + 384] = 0 / sub_5d98fc27
        mem[_647 + 416] = 0 / sub_5d98fc27 * _602 / sub_5a8c5d60
        mem[_647 + 448] = uint128(block.number)
        mem[_647 + 480] = uint64(block.timestamp)
        staticcall stor4.holders() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _694 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_647 + 512] = mem[_694 + 28 len 4]
        mem[_647 + 544] = uint8(stor16.field_160)
        mem[_647 + 576] = uint8(stor16.field_168)
        mem[_647 + 608] = uint8(_282)
        mem[_647 + 640] = 8
        mem[mem[64]] = eth.balance(sub_270bf52eAddress)
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = _465
        mem[mem[64] + 128] = 100 * 10^6 * _492 / _465
        mem[mem[64] + 160] = mem[_647 + 160]
        mem[mem[64] + 192] = _384
        mem[mem[64] + 224] = _423
        mem[mem[64] + 256] = _384 + _423
        mem[mem[64] + 288] = mem[_647 + 288]
        mem[mem[64] + 320] = 0
        mem[mem[64] + 352] = _217 * sub_5d98fc27 / _206
        mem[mem[64] + 384] = 0 / sub_5d98fc27
        mem[mem[64] + 416] = 0 / sub_5d98fc27 * _602 / sub_5a8c5d60
        mem[mem[64] + 448] = uint128(block.number)
        mem[mem[64] + 480] = uint64(block.timestamp)
        mem[mem[64] + 512] = mem[_647 + 540 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               _465,
               100 * 10^6 * _492 / _465,
               mem[mem[64] + 160],
               _384,
               _423,
               _384 + _423,
               mem[mem[64] + 288],
               0,
               _217 * sub_5d98fc27 / _206,
               0 / sub_5d98fc27,
               0 / sub_5d98fc27 * _602 / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[mem[64] + 512],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               _282 << 248,
               8
    if ext_call.return_data[0] and sub_5a8c5d60 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] and _217 * sub_5d98fc27 / _206 > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_5d98fc27:
        revert with 0, 18
    staticcall stor4.0xb9e5a03b with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _424 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _436 = mem[_424]
    staticcall stor4.0x41e70fa6 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _447 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _457 = mem[_447]
    if _436 > !mem[_447]:
        revert with 0, 17
    staticcall stor6.0xed74d26e with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _491 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _518 = mem[_491]
    if not mem[_491]:
        staticcall stor4.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _537 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _565 = mem[_537]
        if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 and mem[_537] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27:
            revert with 0, 17
        if not sub_5a8c5d60:
            revert with 0, 18
        _610 = mem[64]
        mem[64] = mem[64] + 672
        mem[_610] = eth.balance(sub_270bf52eAddress)
        mem[_610 + 32] = ext_call.return_data[0]
        mem[_610 + 64] = ext_call.return_data[0]
        mem[_610 + 96] = _518
        mem[_610 + 128] = 0
        staticcall stor6.totalRewardsDistributed() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _617 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_610 + 160] = mem[_617]
        mem[_610 + 192] = _436
        mem[_610 + 224] = _457
        mem[_610 + 256] = _436 + _457
        staticcall stor4.0x8db2063b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _654 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_610 + 288] = mem[_654]
        mem[_610 + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
        mem[_610 + 352] = _217 * sub_5d98fc27 / _206
        mem[_610 + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27
        mem[_610 + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _565 / sub_5a8c5d60
        mem[_610 + 448] = uint128(block.number)
        mem[_610 + 480] = uint64(block.timestamp)
        staticcall stor4.holders() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _685 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_610 + 512] = mem[_685 + 28 len 4]
        mem[_610 + 544] = uint8(stor16.field_160)
        mem[_610 + 576] = uint8(stor16.field_168)
        mem[_610 + 608] = uint8(_282)
        mem[_610 + 640] = 8
        mem[mem[64]] = eth.balance(sub_270bf52eAddress)
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = _518
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = mem[_610 + 160]
        mem[mem[64] + 192] = _436
        mem[mem[64] + 224] = _457
        mem[mem[64] + 256] = _436 + _457
        mem[mem[64] + 288] = mem[_610 + 288]
        mem[mem[64] + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
        mem[mem[64] + 352] = _217 * sub_5d98fc27 / _206
        mem[mem[64] + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27
        mem[mem[64] + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _565 / sub_5a8c5d60
        mem[mem[64] + 448] = uint128(block.number)
        mem[mem[64] + 480] = uint64(block.timestamp)
        mem[mem[64] + 512] = mem[_610 + 540 len 4]
        return eth.balance(sub_270bf52eAddress), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               _518,
               0,
               mem[mem[64] + 160],
               _436,
               _457,
               _436 + _457,
               mem[mem[64] + 288],
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
               _217 * sub_5d98fc27 / _206,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27,
               ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _565 / sub_5a8c5d60,
               block.number << 128,
               block.timestamp << 192,
               mem[mem[64] + 512],
               uint8(stor16.field_0),
               uint8(stor16.field_0),
               _282 << 248,
               8
    staticcall stor6.0x63234f3d with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _533 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _540 = mem[_533]
    if mem[_533] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not _518:
        revert with 0, 18
    staticcall stor4.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _618 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _645 = mem[_618]
    if ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 and mem[_618] > -1 / ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27:
        revert with 0, 17
    if not sub_5a8c5d60:
        revert with 0, 18
    _686 = mem[64]
    mem[64] = mem[64] + 672
    mem[_686] = eth.balance(sub_270bf52eAddress)
    mem[_686 + 32] = ext_call.return_data[0]
    mem[_686 + 64] = ext_call.return_data[0]
    mem[_686 + 96] = _518
    mem[_686 + 128] = 100 * 10^6 * _540 / _518
    staticcall stor6.totalRewardsDistributed() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _691 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_686 + 160] = mem[_691]
    mem[_686 + 192] = _436
    mem[_686 + 224] = _457
    mem[_686 + 256] = _436 + _457
    staticcall stor4.0x8db2063b with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _722 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_686 + 288] = mem[_722]
    mem[_686 + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
    mem[_686 + 352] = _217 * sub_5d98fc27 / _206
    mem[_686 + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27
    mem[_686 + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _645 / sub_5a8c5d60
    mem[_686 + 448] = uint128(block.number)
    mem[_686 + 480] = uint64(block.timestamp)
    staticcall stor4.holders() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _749 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_686 + 512] = mem[_749 + 28 len 4]
    mem[_686 + 544] = uint8(stor16.field_160)
    mem[_686 + 576] = uint8(stor16.field_168)
    mem[_686 + 608] = uint8(_282)
    mem[_686 + 640] = 8
    mem[mem[64]] = eth.balance(sub_270bf52eAddress)
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = _518
    mem[mem[64] + 128] = 100 * 10^6 * _540 / _518
    mem[mem[64] + 160] = mem[_686 + 160]
    mem[mem[64] + 192] = _436
    mem[mem[64] + 224] = _457
    mem[mem[64] + 256] = _436 + _457
    mem[mem[64] + 288] = mem[_686 + 288]
    mem[mem[64] + 320] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0]
    mem[mem[64] + 352] = _217 * sub_5d98fc27 / _206
    mem[mem[64] + 384] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27
    mem[mem[64] + 416] = ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _645 / sub_5a8c5d60
    mem[mem[64] + 448] = uint128(block.number)
    mem[mem[64] + 480] = uint64(block.timestamp)
    mem[mem[64] + 512] = mem[_686 + 540 len 4]
    return eth.balance(sub_270bf52eAddress), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           _518,
           100 * 10^6 * _540 / _518,
           mem[mem[64] + 160],
           _436,
           _457,
           _436 + _457,
           mem[mem[64] + 288],
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0],
           _217 * sub_5d98fc27 / _206,
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27,
           ext_call.return_data[0] * sub_5a8c5d60 / ext_call.return_data[0] * _217 * sub_5d98fc27 / _206 / sub_5d98fc27 * _645 / sub_5a8c5d60,
           block.number << 128,
           block.timestamp << 192,
           mem[mem[64] + 512],
           uint8(stor16.field_0),
           uint8(stor16.field_0),
           _282 << 248,
           8
}



}
