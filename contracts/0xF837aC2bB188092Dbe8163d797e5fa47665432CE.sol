contract main {




// =====================  Runtime code  =====================


#
#  - sub_43fc123a(?)
#  - withdrawAll()
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_b54cf803(?)
#  - deposit(uint256 arg1)
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

function approveOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawNative(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
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

function sub_c5db6d0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9ebdf12cAddress)
    staticcall sub_9ebdf12cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x969cdd03 with:
            gas gas_remaining wei
           args 0, 96, ext_call.return_data[0], ext_call.return_data[0], 52, 0x2972656465656d20616e64207374616b6520616d6f756e743a2025732c20746f74616c207374616b656420616d6f756e743a2025, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, 0
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

function sub_c5549de3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if not stor7[address(arg1)]:
            revert with 0, 'nonexistent'
        stor7[address(arg1)] = 0
        idx = 0
        while idx < reserveDepositors.length:
            mem[0] = 6
            if reserveDepositors[idx] == address(arg1):
                if reserveDepositors.length < 1:
                    revert with 0, 17
                if idx != reserveDepositors.length - 1:
                    if reserveDepositors.length < 1:
                        revert with 0, 17
                    if reserveDepositors.length - 1 >= reserveDepositors.length:
                        revert with 0, 50
                    if idx >= reserveDepositors.length:
                        revert with 0, 50
                    mem[0] = 6
                    reserveDepositors[idx] = reserveDepositors[reserveDepositors.length]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not reserveDepositors.length:
            revert with 0, 49
        reserveDepositors[reserveDepositors.length] = 0
        reserveDepositors.length--
    else:
        if not stor9[address(arg1)]:
            revert with 0, 'nonexistent'
        stor9[address(arg1)] = 0
        idx = 0
        while idx < liquidityDepositors.length:
            mem[0] = 8
            if liquidityDepositors[idx] == address(arg1):
                if liquidityDepositors.length < 1:
                    revert with 0, 17
                if idx != liquidityDepositors.length - 1:
                    if liquidityDepositors.length < 1:
                        revert with 0, 17
                    if liquidityDepositors.length - 1 >= liquidityDepositors.length:
                        revert with 0, 50
                    if idx >= liquidityDepositors.length:
                        revert with 0, 50
                    mem[0] = 8
                    liquidityDepositors[idx] = liquidityDepositors[liquidityDepositors.length]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not liquidityDepositors.length:
            revert with 0, 49
        liquidityDepositors[liquidityDepositors.length] = 0
        liquidityDepositors.length--
}

function sub_04b2fffe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    idx = 0
    s = -1
    t = 0
    while idx < reserveDepositors.length:
        mem[0] = 6
        require ext_code.size(reserveDepositors[idx])
        staticcall reserveDepositors[idx].bondPriceInUSD() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_40]
        if idx >= reserveDepositors.length:
            revert with 0, 50
        mem[0] = 6
        require ext_code.size(reserveDepositors[idx])
        staticcall reserveDepositors[idx].bondInfo(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        if _43 >= s:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if not arg1:
            if mem[_51]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
        if idx >= reserveDepositors.length:
            revert with 0, 50
        mem[0] = 6
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _43
        t = reserveDepositors[idx]
        continue 
    idx = 0
    u = s
    v = t
    while idx < liquidityDepositors.length:
        mem[0] = 8
        require ext_code.size(liquidityDepositors[idx])
        staticcall liquidityDepositors[idx].bondPriceInUSD() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _71 = mem[_70]
        if idx >= liquidityDepositors.length:
            revert with 0, 50
        mem[0] = 8
        require ext_code.size(liquidityDepositors[idx])
        staticcall liquidityDepositors[idx].bondInfo(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        if _71 >= u:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            v = v
            continue 
        if not arg1:
            if mem[_75]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = u
                v = v
                continue 
        if idx >= liquidityDepositors.length:
            revert with 0, 50
        mem[0] = 8
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _71
        v = liquidityDepositors[idx]
        continue 
    return address(v)
}



}
