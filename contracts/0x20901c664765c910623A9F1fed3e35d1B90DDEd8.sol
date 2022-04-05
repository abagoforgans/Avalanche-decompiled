contract main {




// =====================  Runtime code  =====================


#
#  - inCaseTokensGetStuck(address arg1, address arg2, uint256 arg3)
#
address owner;
address pefiAddress;
address sub_85ea7903Address;
address sub_f88311b7Address;

function pefi() payable {
    return pefiAddress
}

function sub_85ea7903(?) payable {
    return sub_85ea7903Address
}

function owner() payable {
    return owner
}

function sub_f88311b7(?) payable {
    return sub_f88311b7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d1df6cce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(pefiAddress)
    staticcall pefiAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_85ea7903Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_85ea7903Address)
    staticcall sub_85ea7903Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f88311b7Address)
    staticcall sub_f88311b7Address.currentExchangeRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 > -1 / arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_f2571deb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_85ea7903Address)
    staticcall sub_85ea7903Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(pefiAddress)
    staticcall pefiAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_85ea7903Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_85ea7903Address)
    staticcall sub_85ea7903Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f88311b7Address)
    staticcall sub_f88311b7Address.currentExchangeRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_f3e6520d(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_85ea7903Address)
    staticcall sub_85ea7903Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no XPEFI to migrate. Did you already complete migration?'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_85ea7903Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_85ea7903Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_85ea7903Address)
        call sub_85ea7903Address.leave(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 296] = this.address
        require ext_code.size(pefiAddress)
        staticcall pefiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f88311b7Address)
        call sub_f88311b7Address.enter(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(sub_f88311b7Address)
        staticcall sub_f88311b7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 328] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 292] = 68
        mem[(4 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 392] = 32
        mem[(4 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_f88311b7Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 456 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 524] = 0
        call sub_f88311b7Address with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 488] == bool(mem[(4 * ceil32(return_data.size)) + 488])
                if not mem[(4 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Migrated(ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.sender);
    mem[ceil32(return_data.size) + 292] = return_data.size
    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
        if not mem[ceil32(return_data.size) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_85ea7903Address)
    call sub_85ea7903Address.leave(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
    require ext_code.size(pefiAddress)
    staticcall pefiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f88311b7Address)
    call sub_f88311b7Address.enter(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
    require ext_code.size(sub_f88311b7Address)
    staticcall sub_f88311b7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_f88311b7Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, msg.sender, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
    call sub_f88311b7Address with:
       funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Migrated(ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.sender);
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 32
        mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 458
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
        mem[(8 * ceil32(return_data.size)) + 458] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 522] = ext_call.return_data[0]
        emit Migrated(address rg1, uint256 rg2, uint256 rg3, uint256 rg4):
                      mem[(8 * ceil32(return_data.size)) + 458 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
                      msg.sender,
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
        mem[(8 * ceil32(return_data.size)) + 458] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 490] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 522] = ext_call.return_data[0]
        emit Migrated(address rg1, uint256 rg2, uint256 rg3, uint256 rg4):
                      mem[(8 * ceil32(return_data.size)) + 458 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
                      msg.sender,
    mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 462] = 32
    mem[(8 * ceil32(return_data.size)) + 494] = 42
    mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 558] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + 458
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
