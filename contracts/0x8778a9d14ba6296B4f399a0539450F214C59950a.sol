contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(uint256 arg1)
#  - sub_38e4f064(?)
#
address owner;
address tokenAddress;
address paymentTokenAddress;
uint256 rateNumerator;
uint256 sub_865192f7;
uint256 weiRaised;
uint32 stor7;
address tokenWalletAddress;
uint256 stor7;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint256 holdPeriod;
mapping of uint256 balanceOf;
mapping of uint256 releaseTimeOf;
uint256 maxUserCap;

function rateNumerator() payable {
    return rateNumerator
}

function releaseTimeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return releaseTimeOf[address(arg1)]
}

function paymentToken() payable {
    return paymentTokenAddress
}

function cap() payable {
    return cap
}

function weiRaised() payable {
    return weiRaised
}

function closingTime() payable {
    return closingTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxUserCap() payable {
    return maxUserCap
}

function sub_865192f7(?) payable {
    return sub_865192f7
}

function owner() payable {
    return owner
}

function openingTime() payable {
    return openingTime
}

function tokenWallet() payable {
    return address(tokenWalletAddress)
}

function holdPeriod() payable {
    return holdPeriod
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function hasClosed() payable {
    return (block.timestamp > closingTime)
}

function isOpen() payable {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
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

function remainingTokens() payable {
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(tokenWalletAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(tokenWalletAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function capReached() payable {
    if not weiRaised:
        if rateNumerator <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not rateNumerator:
            revert with 'NH{q', 18
        return 0 / rateNumerator >= cap
    if weiRaised and sub_865192f7 > -1 / weiRaised:
        revert with 'NH{q', 17
    if not weiRaised:
        revert with 'NH{q', 18
    if weiRaised * sub_865192f7 / weiRaised != sub_865192f7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if rateNumerator <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not rateNumerator:
        revert with 'NH{q', 18
    return weiRaised * sub_865192f7 / rateNumerator >= cap
}

function claimTokens() payable {
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address is not due any tokens'
    if block.timestamp < releaseTimeOf[address(msg.sender)]:
        revert with 0, 'Tokens are on hold'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer, check allowance'
    balanceOf[address(msg.sender)] = 0
    emit ClaimToken(balanceOf[address(msg.sender)], msg.sender);
}

function burnRemainingTokens() payable {
    if block.timestamp < closingTime:
        revert with 0, 'Sale is not over yet'
    mem[100] = address(tokenWalletAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(tokenWalletAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(tokenWalletAddress)
    mem[ceil32(return_data.size) + 132] = this.address
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(tokenWalletAddress), this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to burn'
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor7)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), 57005, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 228 len 28]
    call tokenAddress.mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(stor7), mem[132 len 28] == bool(uint32(stor7), mem[132 len 28])
            if not uint32(stor7), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit TokensBurned(block.timestamp, ext_call.return_data[0]);
}



}
