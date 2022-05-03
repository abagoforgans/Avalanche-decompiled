contract main {




// =====================  Runtime code  =====================


#
#  - buyToken(uint256 arg1)
#
const getContractBalance = eth.balance(this.address)


uint32 stor0;
address owner;
uint256 stor0;
address tokenAddress;
address usdcTokenAddress;
uint256 _price;
uint256 presaleTimeEnds;
uint256 totalTokenSold;
uint256 presaleStarts;
uint256 totalTokensClaimed;
uint8 stor8;
uint256 MAX_BUY_LIMIT;
uint256 totalPresaleQuantity;
mapping of uint256 userLockedBalances;

function usdcToken() payable {
    return usdcTokenAddress
}

function presaleStarts() payable {
    return presaleStarts
}

function _price() payable {
    return _price
}

function presaleTimeEnds() payable {
    return presaleTimeEnds
}

function totalTokensClaimed() payable {
    return totalTokensClaimed
}

function userLockedBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userLockedBalances[arg1]
}

function isClaimable() payable {
    return bool(stor8)
}

function owner() payable {
    return address(owner)
}

function MAX_BUY_LIMIT() payable {
    return MAX_BUY_LIMIT
}

function totalPresaleQuantity() payable {
    return totalPresaleQuantity
}

function totalTokenSold() payable {
    return totalTokenSold
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setIsClaimable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    stor8 = uint8(arg1)
}

function setMaxLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    MAX_BUY_LIMIT = arg1
}

function setPresaleStarts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    presaleStarts = arg1
}

function changePresaleEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    presaleTimeEnds = arg1
}

function changePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    if arg1 <= 0:
        revert with 0, 'invalid price'
    _price = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    if not arg1:
        revert with 0, 'invalid Address'
    address(owner) = arg1
}

function getTokenBalance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getUsdcBalance() payable {
    require ext_code.size(usdcTokenAddress)
    staticcall usdcTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function calculateTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if _price <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not _price:
            revert with 'NH{q', 18
        return (0 / _price)
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if _price <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not _price:
        revert with 'NH{q', 18
    return (10^18 * arg1 / _price)
}

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(owner), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawUSDC() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Not authorized'
    mem[100] = this.address
    require ext_code.size(usdcTokenAddress)
    staticcall usdcTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(usdcTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call usdcTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function claimTokens() payable {
    if bool(stor8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't claim it now, please wait'
    if totalTokensClaimed > -userLockedBalances[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if totalTokensClaimed + userLockedBalances[address(msg.sender)] < totalTokensClaimed:
        revert with 0, 'SafeMath: addition overflow'
    if totalTokensClaimed + userLockedBalances[address(msg.sender)] > totalPresaleQuantity:
        revert with 0, 'contract tokens already drained'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < userLockedBalances[address(msg.sender)]:
        revert with 0, 'Contract has no balance'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = userLockedBalances[address(msg.sender)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, userLockedBalances[address(msg.sender)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, userLockedBalances[address(msg.sender)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, userLockedBalances[address(msg.sender)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if totalTokensClaimed > -userLockedBalances[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if totalTokensClaimed + userLockedBalances[address(msg.sender)] < totalTokensClaimed:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensClaimed += userLockedBalances[address(msg.sender)]
    userLockedBalances[address(msg.sender)] = 0
}



}
