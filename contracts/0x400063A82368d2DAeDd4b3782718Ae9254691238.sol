contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(uint256 arg1)
#
address owner;
uint256 depositsCount;
array of struct stor2;
array of struct sub_23c4a921;
mapping of struct lockedToken;
mapping of uint256 walletTokenBalance;
uint256 lockFee;
address marketingAddress;

function sub_23c4a921(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_23c4a921[arg1].field_0
    return sub_23c4a921[arg1][arg2].field_0
}

function depositsCount() payable {
    return depositsCount
}

function lockFee() payable {
    return lockFee
}

function owner() payable {
    return owner
}

function marketingAddress() payable {
    return marketingAddress
}

function walletTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return walletTokenBalance[arg1][arg2]
}

function lockedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
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

function setLockFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lockFee = arg1
}

function setMarketingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
}

function getTokenTotalLockedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getDepositsByTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)].field_0:
        mem[128] = stor2[address(arg1)].field_0
        if (32 * stor2[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor2[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor2[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
    mem[(32 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = mem[128 len 32 * stor2[address(arg1)].field_0]
    return memory
      from (32 * stor2[address(arg1)].field_0) + 128
       len (96 * stor2[address(arg1)].field_0) + 64
}

function sub_469d86e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_23c4a921[address(arg1)].field_0:
        mem[128] = sub_23c4a921[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_23c4a921[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_23c4a921[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_23c4a921[address(arg1)].field_0, data=mem[128 len 32 * sub_23c4a921[address(arg1)].field_0])
    mem[(32 * sub_23c4a921[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_23c4a921[address(arg1)].field_0) + 160] = sub_23c4a921[address(arg1)].field_0
    mem[(32 * sub_23c4a921[address(arg1)].field_0) + 192 len 32 * sub_23c4a921[address(arg1)].field_0] = mem[128 len 32 * sub_23c4a921[address(arg1)].field_0]
    return memory
      from (32 * sub_23c4a921[address(arg1)].field_0) + 128
       len (96 * sub_23c4a921[address(arg1)].field_0) + 64
}

function lockTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if arg3 <= 0:
        revert with 0, 'Token amount too low!'
    if arg4 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock timestamp is not in seconds!'
    if arg4 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock timestamp is not in the future!'
    mem[100] = msg.sender
    mem[132] = this.address
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Approve tokens first!'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, this.address) >> 32 == bool(uint32(msg.sender), Mask(224, 32, this.address) >> 32)
            if not uint32(msg.sender), Mask(224, 32, this.address) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if walletTokenBalance[address(arg1)][msg.sender] > !0:
        revert with 0, 17
    if not depositsCount + 1:
        revert with 0, 17
    depositsCount++
    lockedToken[stor1 + 1].field_0 = arg1
    lockedToken[stor1 + 1].field_256 = arg2
    lockedToken[stor1 + 1].field_512 = 0
    lockedToken[stor1 + 1].field_768 = arg4
    lockedToken[stor1 + 1].field_1024 = 0
    stor2[address(arg1)].field_0++
    stor2[address(arg1)][stor2[address(arg1)].field_0].field_0 = depositsCount + 1
    sub_23c4a921[address(arg2)].field_0++
    sub_23c4a921[address(arg2)][sub_23c4a921[address(arg2)].field_0].field_0 = depositsCount + 1
    emit Lock(address(arg1), 0, depositsCount + 1);
    return (depositsCount + 1)
}



}
