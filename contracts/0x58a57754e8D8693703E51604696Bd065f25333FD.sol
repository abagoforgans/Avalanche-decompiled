contract main {




// =====================  Runtime code  =====================


const sub_74415b01(?) = 30


address owner;
address stor1;
mapping of struct sub_b393211e;
address uniswapAddress;

function uniswap() payable {
    return uniswapAddress
}

function owner() payable {
    return owner
}

function sub_b393211e(?) payable {
    require calldata.size - 4 >= 32
    return sub_b393211e[arg1].field_0, 
           bool(sub_b393211e[arg1].field_160),
           sub_b393211e[arg1].field_256,
           sub_b393211e[arg1].field_512,
           sub_b393211e[arg1].field_768
}

function getOracleForPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_b393211e[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function pokeOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function oracleNeedsPoking(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function oracleNeedsUpdates(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function getTimePeriodAfterPoke(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function oracleNeedsInitialization(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getPairHasOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not sub_b393211e[arg1][arg2].field_0
}

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function getValueOfAsset(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_b393211e[arg1][arg2].field_160:
        return sub_b393211e[arg1][arg2].field_768
    if not arg3:
        return -1
    else:
        return 0
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

function canOracleBeCreatedForRoute(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg1 != arg2
    require ext_code.size(uniswapAddress)
    staticcall uniswapAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return not not ext_call.return_data[12 len 20]
}

function initializeOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(uniswapAddress)
    staticcall uniswapAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not address(ext_call.return_data[0]):
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(ext_call.return_data[0]) == arg1:
        staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b393211e[arg1][arg2].field_0 = 0
    sub_b393211e[arg1][arg2].field_96 = uint64(ext_call.return_data[0])
    sub_b393211e[arg1][arg2].field_160 = 0
    sub_b393211e[arg1][arg2].field_256 = ext_call.return_data[92 len 4]
    sub_b393211e[arg1][arg2].field_512 = ext_call.return_data[0]
    sub_b393211e[arg1][arg2].field_768 = 0
    return 1
}

function getInstantPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == arg1:
            if Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.0xd21220a7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 'Asset not part of oracle'
        if Mask(112, 0, ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == arg1:
            if 10^uint8(ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return (10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.0xd21220a7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 'Asset not part of oracle'
        if 10^uint8(ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return (10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
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
        revert with 'NH{q', 17
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    staticcall sub_b393211e[arg1][arg2].field_0.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg1:
        if s * t and Mask(112, 0, ext_call.return_data[32]) > -1 / s * t:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return (s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    staticcall sub_b393211e[arg1][arg2].field_0.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'Asset not part of oracle'
    if s * t and Mask(112, 0, ext_call.return_data[0]) > -1 / s * t:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    return (s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
}

function updateOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_b393211e[arg1][arg2].field_256 > -31:
        revert with 'NH{q', 17
    if block.timestamp <= sub_b393211e[arg1][arg2].field_256 + 30:
        return 0
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    staticcall sub_b393211e[arg1][arg2].field_0.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    if ext_call.return_data[12 len 20] == arg1:
        staticcall sub_b393211e[arg1][arg2].field_0.price1CumulativeLast() with:
                gas gas_remaining wei
    else:
        staticcall sub_b393211e[arg1][arg2].field_0.price0CumulativeLast() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b393211e[arg1][arg2].field_0)
    staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 <= 0:
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        call sub_b393211e[arg1][arg2].field_0.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        if address(ext_call.return_data[0]) == arg1:
            staticcall sub_b393211e[arg1][arg2].field_0.price1CumulativeLast() with:
                    gas gas_remaining wei
        else:
            staticcall sub_b393211e[arg1][arg2].field_0.price0CumulativeLast() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_b393211e[arg1][arg2].field_0)
        staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 <= 0:
            return 0
        if ext_call.return_data[92 len 4] < sub_b393211e[arg1][arg2].field_256:
            revert with 'NH{q', 17
        if ext_call.return_data[92 len 4] - sub_b393211e[arg1][arg2].field_256 <= 0:
            return 0
    else:
        if ext_call.return_data[92 len 4] < sub_b393211e[arg1][arg2].field_256:
            revert with 'NH{q', 17
        if ext_call.return_data[92 len 4] - sub_b393211e[arg1][arg2].field_256 <= 0:
            require ext_code.size(sub_b393211e[arg1][arg2].field_0)
            call sub_b393211e[arg1][arg2].field_0.sync() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_b393211e[arg1][arg2].field_0)
            if address(ext_call.return_data[0]) == arg1:
                staticcall sub_b393211e[arg1][arg2].field_0.price1CumulativeLast() with:
                        gas gas_remaining wei
            else:
                staticcall sub_b393211e[arg1][arg2].field_0.price0CumulativeLast() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_b393211e[arg1][arg2].field_0)
            staticcall sub_b393211e[arg1][arg2].field_0.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                revert with 'NH{q', 17
            if ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 <= 0:
                return 0
            if ext_call.return_data[92 len 4] < sub_b393211e[arg1][arg2].field_256:
                revert with 'NH{q', 17
            if ext_call.return_data[92 len 4] - sub_b393211e[arg1][arg2].field_256 <= 0:
                return 0
    if sub_b393211e[arg1][arg2].field_160:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                revert with 'NH{q', 17
            if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                revert with 'NH{q', 17
            if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                revert with 'NH{q', 18
            if ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1:
                revert with 'NH{q', 17
            sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 18
                if 10^ext_call.return_data[31 len 1] and ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1 / 10^ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 18
                if s * t and ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1 / s * t:
                    revert with 'NH{q', 17
                sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, s * t * ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
        sub_b393211e[arg1][arg2].field_800 = 0
        sub_b393211e[arg1][arg2].field_512 = ext_call.return_data[0]
        sub_b393211e[arg1][arg2].field_256 = uint32(ext_call.return_data[64])
        sub_b393211e[arg1][arg2].field_288 = 0
    else:
        if not sub_b393211e[arg1][arg2].field_256:
            sub_b393211e[arg1][arg2].field_256 = ext_call.return_data[92 len 4]
            sub_b393211e[arg1][arg2].field_288 = 0
            require ext_code.size(uniswapAddress)
            staticcall uniswapAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_b393211e[arg1][arg2].field_0 = ext_call.return_data[12 len 20]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1:
                    revert with 'NH{q', 17
                sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                        revert with 'NH{q', 17
                    if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                        revert with 'NH{q', 18
                    if 10^ext_call.return_data[31 len 1] and ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1 / 10^ext_call.return_data[31 len 1]:
                        revert with 'NH{q', 17
                    sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if uint32(ext_call.return_data[64]) < sub_b393211e[arg1][arg2].field_256:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < sub_b393211e[arg1][arg2].field_512:
                        revert with 'NH{q', 17
                    if not uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256:
                        revert with 'NH{q', 18
                    if s * t and ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256 > -1 / s * t:
                        revert with 'NH{q', 17
                    sub_b393211e[arg1][arg2].field_768 = Mask(32, 112, s * t * ext_call.return_data[0] - sub_b393211e[arg1][arg2].field_512 / uint32(ext_call.return_data[64]) - sub_b393211e[arg1][arg2].field_256) >> 112
            sub_b393211e[arg1][arg2].field_800 = 0
            sub_b393211e[arg1][arg2].field_512 = ext_call.return_data[0]
            sub_b393211e[arg1][arg2].field_256 = uint32(ext_call.return_data[64])
            sub_b393211e[arg1][arg2].field_288 = 0
            sub_b393211e[arg1][arg2].field_160 = 1
    return 1
}



}
