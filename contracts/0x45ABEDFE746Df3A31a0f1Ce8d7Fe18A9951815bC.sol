contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(uint256 arg1)
#  - claim()
#  - depositTokens(uint256 arg1)
#
address owner;
address tokenAddress;
address subjectAddress;
address walletAddress;
uint256 numerator;
uint256 denominator;
uint256 sub_9eb9efcf;
mapping of uint256 sub_28df0416;
mapping of uint8 stor9;
uint256 openingTime;
uint256 closingTime;
array of address whitelist;
uint256 hardCap;
uint256 sub_504e4956;
uint8 claimOpen;

function subject() payable {
    return subjectAddress
}

function sub_28df0416(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_28df0416[arg1]
}

function closingTime() payable {
    return closingTime
}

function claimOpen() payable {
    return bool(claimOpen)
}

function sub_504e4956(?) payable {
    return sub_504e4956
}

function wallet() payable {
    return walletAddress
}

function whitelist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelist.length
    return whitelist[arg1]
}

function owner() payable {
    return owner
}

function denominator() payable {
    return denominator
}

function sub_9eb9efcf(?) payable {
    return sub_9eb9efcf
}

function openingTime() payable {
    return openingTime
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function numerator() payable {
    return numerator
}

function hardCap() payable {
    return hardCap
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

function openClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimOpen = 1
}

function closeClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimOpen = 0
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

function setCap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardCap = arg1
    sub_504e4956 = arg2
}

function getTokenAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and numerator > -1 / arg1:
        revert with 0, 17
    if not denominator:
        revert with 0, 18
    return (arg1 * numerator / denominator)
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: token is the zero address'
    tokenAddress = arg1
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

function extendTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: already closed'
    if arg1 <= closingTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TimedCrowdsale: new closing time is before current closing time'
    emit TimedCrowdsaleExtended(closingTime, arg1);
    closingTime = arg1
}

function sub_cb2ed4f0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_504e4956 < sub_28df0416[address(arg1)]:
        return 0
    if arg2 > !sub_9eb9efcf:
        revert with 0, 17
    if arg2 + sub_9eb9efcf <= hardCap:
        if arg2 < sub_28df0416[address(arg1)]:
            revert with 0, 17
        return (arg2 - sub_28df0416[address(arg1)])
    if hardCap < sub_9eb9efcf:
        revert with 0, 17
    if hardCap - sub_9eb9efcf < sub_28df0416[address(arg1)]:
        revert with 0, 17
    return (hardCap - sub_9eb9efcf - sub_28df0416[address(arg1)])
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cbc432a9(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Crowdsale: rate is 0'
    if arg2 <= 0:
        revert with 0, 'Crowdsale: rate is 0'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: wallet is the zero address'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: subjuct is the zero address'
    numerator = arg1
    denominator = arg2
    walletAddress = address(arg3)
    tokenAddress = address(arg5)
    subjectAddress = address(arg4)
}

function addWallets(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        whitelist.length++
        mem[0] = 12
        whitelist[whitelist.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_28df0416[address(arg1)] and numerator > -1 / sub_28df0416[address(arg1)]:
        revert with 0, 17
    if not denominator:
        revert with 0, 18
    if block.timestamp <= closingTime:
        return (block.timestamp > closingTime)
    if stor9[address(arg1)]:
        return not bool(stor9[address(arg1)])
    if not sub_28df0416[address(arg1)] * numerator / denominator:
        return bool(sub_28df0416[address(arg1)] * numerator / denominator)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args walletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_28df0416[address(arg1)] * numerator / denominator:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args walletAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return ext_call.return_data[0] >= sub_28df0416[address(arg1)] * numerator / denominator
}



}
