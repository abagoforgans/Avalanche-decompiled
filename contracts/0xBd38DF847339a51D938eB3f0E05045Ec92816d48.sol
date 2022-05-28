contract main {




// =====================  Runtime code  =====================


#
#  - sub_c73d1ae8(?)
#
uint8 stor0; offset 160
address owner;
address tokenAddress;
address sub_9ebdf12cAddress;
address sub_ef4907aaAddress;
address stakingAddress;
address stakingHelperAddress;
array of address reserveDepositors;
mapping of uint8 stor7;
array of address liquidityDepositors;
mapping of uint8 stor9;
uint8 nativeToken;
address sub_59c91f19Address; offset 8
uint256 stor10;
address routerAddress;
address sub_bfc05348Address;

function isReserveDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function staking() payable {
    return stakingAddress
}

function sub_59c91f19(?) payable {
    return sub_59c91f19Address
}

function paused() payable {
    return bool(stor0)
}

function reserveDepositors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveDepositors.length
    return reserveDepositors[arg1]
}

function stakingHelper() payable {
    return stakingHelperAddress
}

function owner() payable {
    return owner
}

function liquidityDepositors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < liquidityDepositors.length
    return liquidityDepositors[arg1]
}

function sub_9ebdf12c(?) payable {
    return sub_9ebdf12cAddress
}

function isLiquidityDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function sub_bfc05348(?) payable {
    return sub_bfc05348Address
}

function nativeToken() payable {
    if nativeToken >= 2:
        revert with 0, 33
    return nativeToken
}

function sub_ef4907aa(?) payable {
    return sub_ef4907aaAddress
}

function router() payable {
    return routerAddress
}

function token() payable {
    return tokenAddress
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

function sub_83f1d681(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 1:
        revert with 0, 33
    stor10 = arg2 or Mask(248, 8, stor10)
    if not arg2:
        require ext_code.size(address(arg1))
        staticcall address(arg1).WETH() with:
                gas gas_remaining wei
    else:
        if arg2 > 1:
            revert with 0, 33
        if arg2 != 1:
            revert with 0, 'unknown wrapped native token'
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x73b295c2 with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_59c91f19Address = ext_call.return_data[12 len 20]
    routerAddress = address(arg1)
}

function sub_41646210(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != tokenAddress:
        require ext_code.size(address(arg1))
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == tokenAddress
    sub_bfc05348Address = address(arg1)
}

function sub_26a760ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if stor7[address(arg1)]:
            revert with 0, 'existing'
        stor7[address(arg1)] = 1
        reserveDepositors.length++
        reserveDepositors[reserveDepositors.length] = address(arg1)
    else:
        if stor9[address(arg1)]:
            revert with 0, 'existing'
        require ext_code.size(address(arg1))
        staticcall address(arg1).principle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if tokenAddress != address(ext_call.return_data[0]):
            require tokenAddress == ext_call.return_data[12 len 20]
        stor9[address(arg1)] = 1
        liquidityDepositors.length++
        liquidityDepositors[liquidityDepositors.length] = address(arg1)
}

function sub_d41edb7b(?) payable {
    require ext_code.size(sub_bfc05348Address)
    staticcall sub_bfc05348Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bfc05348Address)
    staticcall sub_bfc05348Address.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bfc05348Address)
    staticcall sub_bfc05348Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if tokenAddress != address(ext_call.return_data[0]):
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
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
        if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
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
    if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    return (Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
}



}
