contract main {




// =====================  Runtime code  =====================


#
#  - sub_0be1fb07(?)
#  - sub_43fc123a(?)
#  - sub_5ec4e7af(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - deposit(uint256 arg1)
#
uint8 paused; offset 160
uint32 stor0;
address owner;
uint256 stor0;
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
    return bool(paused)
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
        staticcall address(arg1).WAVAX() with:
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
    staticcall sub_9ebdf12cAddress.balanceOf(address arg1) with:
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

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args owner
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = owner
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
            if not uint32(stor0.field_0), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = owner
        require ext_code.size(sub_9ebdf12cAddress)
        staticcall sub_9ebdf12cAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args owner
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 296] = owner
        mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_9ebdf12cAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, owner, ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call sub_9ebdf12cAddress with:
           funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
                if not uint32(stor0.field_0), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 428] = owner
            require ext_code.size(sub_ef4907aaAddress)
            staticcall sub_ef4907aaAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args owner
            mem[(2 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 460] = owner
            mem[(4 * ceil32(return_data.size)) + 492] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 424] = 68
            mem[(4 * ceil32(return_data.size)) + 456 len 4] = transfer(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 524] = 32
            mem[(4 * ceil32(return_data.size)) + 556] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_ef4907aaAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 588 len 96] = 0, owner, ext_call.return_data[0], 0
            mem[(4 * ceil32(return_data.size)) + 656] = 0
            call sub_ef4907aaAddress with:
               funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
                    if not uint32(stor0.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if eth.balance(this.address) < 10^16:
                    revert with 0, 17
                if eth.balance(this.address) < eth.balance(this.address) - 10^16:
                    revert with 0, 'Address: insufficient balance'
                call owner with:
                   value eth.balance(this.address) - 10^16 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[(4 * ceil32(return_data.size)) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 620] == bool(mem[(4 * ceil32(return_data.size)) + 620])
                if not mem[(4 * ceil32(return_data.size)) + 620]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if eth.balance(this.address) < 10^16:
                revert with 0, 17
            if eth.balance(this.address) < eth.balance(this.address) - 10^16:
                revert with 0, 'Address: insufficient balance'
            call owner with:
               value eth.balance(this.address) - 10^16 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
            mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 594] = 32
            mem[(8 * ceil32(return_data.size)) + 626] = 58
            mem[(8 * ceil32(return_data.size)) + 658] = 'Address: unable to send value, r'
            mem[(8 * ceil32(return_data.size)) + 690] = 'ecipient may have reverted'
            revert with memory
              from (8 * ceil32(return_data.size)) + 590
               len (13 * ceil32(return_data.size)) + 132
        mem[(2 * ceil32(return_data.size)) + 424] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
            if not mem[(2 * ceil32(return_data.size)) + 456]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = owner
        require ext_code.size(sub_9ebdf12cAddress)
        staticcall sub_9ebdf12cAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args owner
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = owner
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_9ebdf12cAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, owner, ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call sub_9ebdf12cAddress with:
           funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
        if return_data.size:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 42
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 430] = owner
            require ext_code.size(sub_ef4907aaAddress)
            staticcall sub_ef4907aaAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args owner
            mem[(4 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 462] = owner
            mem[(8 * ceil32(return_data.size)) + 494] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 426] = 68
            mem[(8 * ceil32(return_data.size)) + 458 len 4] = transfer(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 526] = 32
            mem[(8 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_ef4907aaAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 590 len 96] = 0, owner, ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 658] = 0
            call sub_ef4907aaAddress with:
               funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
                    if not uint32(stor0.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if eth.balance(this.address) < 10^16:
                    revert with 0, 17
                if eth.balance(this.address) < eth.balance(this.address) - 10^16:
                    revert with 0, 'Address: insufficient balance'
                call owner with:
                   value eth.balance(this.address) - 10^16 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                mem[(8 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 622] == bool(mem[(8 * ceil32(return_data.size)) + 622])
                    if not mem[(8 * ceil32(return_data.size)) + 622]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if eth.balance(this.address) < 10^16:
                    revert with 0, 17
                if eth.balance(this.address) < eth.balance(this.address) - 10^16:
                    revert with 0, 'Address: insufficient balance'
                call owner with:
                   value eth.balance(this.address) - 10^16 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    'Address: unable to send value, recipient may have reverted',
                                    mem[(12 * ceil32(return_data.size)) + 724 len 20 * ceil32(return_data.size)]
            ('bool', 'ext_call.success')
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
            if not uint32(stor0.field_0), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = owner
    require ext_code.size(sub_ef4907aaAddress)
    staticcall sub_ef4907aaAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args owner
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = owner
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 4] = transfer(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_ef4907aaAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 96] = 0, owner, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = 0
    call sub_ef4907aaAddress with:
       funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor0.field_0), mem[132 len 28] == bool(uint32(stor0.field_0), mem[132 len 28])
            if not uint32(stor0.field_0), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if eth.balance(this.address) < 10^16:
            revert with 0, 17
        if eth.balance(this.address) < eth.balance(this.address) - 10^16:
            revert with 0, 'Address: insufficient balance'
        call owner with:
           value eth.balance(this.address) - 10^16 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 594] = 32
        mem[(8 * ceil32(return_data.size)) + 626] = 58
        mem[(8 * ceil32(return_data.size)) + 658] = 'Address: unable to send value, r'
        mem[(8 * ceil32(return_data.size)) + 690] = 'ecipient may have reverted'
        revert with memory
          from (8 * ceil32(return_data.size)) + 590
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 594] = 32
        mem[(8 * ceil32(return_data.size)) + 626] = 32
        mem[(8 * ceil32(return_data.size)) + 658] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 590
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621])
        if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621]:
            mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 594] = 32
            mem[(8 * ceil32(return_data.size)) + 626] = 42
            mem[(8 * ceil32(return_data.size)) + 658] = 'SafeERC20: ERC20 operation did n'
            mem[(8 * ceil32(return_data.size)) + 690] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 590
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if eth.balance(this.address) < 10^16:
        revert with 0, 17
    if eth.balance(this.address) < eth.balance(this.address) - 10^16:
        mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 594] = 32
        mem[(8 * ceil32(return_data.size)) + 626] = 29
        mem[(8 * ceil32(return_data.size)) + 658] = 'Address: insufficient balance'
        revert with memory
          from (8 * ceil32(return_data.size)) + 590
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    call owner with:
       value eth.balance(this.address) - 10^16 wei
         gas gas_remaining wei
    if not return_data.size:
        if ext_call.success:
        mem[(8 * ceil32(return_data.size)) + 590] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 594] = 32
        mem[(8 * ceil32(return_data.size)) + 626] = 58
        mem[(8 * ceil32(return_data.size)) + 658] = 'Address: unable to send value, r'
        mem[(8 * ceil32(return_data.size)) + 690] = 'ecipient may have reverted'
        revert with memory
          from (8 * ceil32(return_data.size)) + 590
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(8 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 32
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = 58
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] = 'Address: unable to send value, r'
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 691] = 'ecipient may have reverted'
    revert with memory
      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 591
       len (13 * ceil32(return_data.size)) + 132
}



}
