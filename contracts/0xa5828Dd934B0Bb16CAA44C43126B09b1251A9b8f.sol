contract main {




// =====================  Runtime code  =====================


const certificate = 32, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[194 len 30] >> 272, 0


uint256 stor0;
address stableCoinAddress;
address tokenAddress;
address walletAddress;
uint256 rate;
address whitelistAddress;
uint256 weiRaised;
uint256 sub_f179d9b0;
address sub_d97768adAddress;
uint256 stor8;
uint256 cap;
uint256 stor10;
address stor11;
uint256 openingTime;
uint256 closingTime;
uint8 finalized;
uint256 goal;
address stor16;
mapping of uint256 refundAmount;
address sub_4dd45900Address;
mapping of uint256 balanceOf;
array of address sub_c97533d9;
address _vaultAddress;
uint256 investorMinCap;
mapping of uint256 contributions;
uint8 stage;
uint256 sub_a82eb7a3;
uint256 sub_1015c682;
uint256 stor27;
uint256 sub_0f83c0df;
address beneficiaryAddress;
address tokensAddress;
address ownerWallet;
array of address stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function sub_0f83c0df(?) payable {
    return sub_0f83c0df
}

function sub_1015c682(?) payable {
    return sub_1015c682
}

function rate() payable {
    return rate
}

function cap() payable {
    return cap
}

function contributionAddress() payable {
    return beneficiaryAddress
}

function goal() payable {
    return goal
}

function weiRaised() payable {
    return weiRaised
}

function contributions(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function closingTime() payable {
    return closingTime
}

function sub_4dd45900(?) payable {
    return sub_4dd45900Address
}

function wallet() payable {
    return walletAddress
}

function getBeneficiary() payable {
    return beneficiaryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function ownerWallet() payable {
    return ownerWallet
}

function whitelist() payable {
    return whitelistAddress
}

function stableCoin() payable {
    return stableCoinAddress
}

function tokens() payable {
    return tokensAddress
}

function sub_a82eb7a3(?) payable {
    return sub_a82eb7a3
}

function refundAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= goal:
        revert with 0, 'RefundableCrowdsale: goal reached'
    return refundAmount[address(arg1)]
}

function investorMinCap() payable {
    return investorMinCap
}

function finalized() payable {
    return bool(finalized)
}

function openingTime() payable {
    return openingTime
}

function getUserContribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[address(arg1)]
}

function stage() payable {
    if stage >= 2:
        revert with 0, 33
    return stage
}

function sub_c97533d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c97533d9.length
    return sub_c97533d9[arg1]
}

function sub_d97768ad(?) payable {
    return address(sub_d97768adAddress)
}

function tokenAdd() payable {
    return tokenAddress
}

function _token() payable {
    return tokenAddress
}

function sub_f179d9b0(?) payable {
    return sub_f179d9b0
}

function token() payable {
    return tokenAddress
}

function _vault() payable {
    return _vaultAddress
}

function closeSTO() payable {
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isSuperAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only SuperAdmin can destroy Contract'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function hasClosed() payable {
    return (block.timestamp > closingTime)
}

function basicCap() payable {
    if sub_1015c682 and 20 > -1 / sub_1015c682:
        revert with 0, 17
    return (20 * sub_1015c682 / 100 * 10^18)
}

function isOpen() payable {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function capReached() payable {
    require ext_code.size(stor11)
    staticcall stor11.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= cap
}

function goalReached() payable {
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= goal
}

function sub_632b4c45(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    sub_0f83c0df = arg1
    stor10 = arg1
}

function sub_309842b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    tokenAddress = address(arg1)
}

function sub_f3bfb256(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    walletAddress = address(arg1)
}

function sub_dd9a2ee9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    stableCoinAddress = address(arg1)
}

function changeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    whitelistAddress = arg1
    whitelistAddress = arg1
    return 1
}

function sub_9e01fbe0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    if block.timestamp < openingTime:
        revert with 0, 'STO: Already Closed'
    if block.timestamp > closingTime:
        revert with 0, 'STO: Already Closed'
    if sub_0f83c0df < arg1:
        revert with 0, 17
    sub_0f83c0df -= arg1
    stor10 = arg1
}

function extendTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: already closed'
    if arg1 <= closingTime:
        revert with 0, 'TimedCrowdsale: new closing time is before current closing time'
    emit TimedCrowdsaleExtended(closingTime, arg1);
    closingTime = arg1
}

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < goal:
        revert with 0, 'PostGoalCrowdsale: Goal not reached'
    if not balanceOf[address(arg1)]:
        revert with 0, 'PostGoalCrowdsale: beneficiary is not due any tokens'
    balanceOf[address(arg1)] = 0
    require ext_code.size(_vaultAddress)
    call _vaultAddress.transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args tokenAddress, address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawStable() payable {
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < goal:
        revert with 0, 'RefundableCrowdsale: goal not reached'
    require ext_code.size(stableCoinAddress)
    staticcall stableCoinAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_4dd45900Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4dd45900Address)
    call sub_4dd45900Address.transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stableCoinAddress, walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRefund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not finalized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RefundableCrowdsale: not finalized'
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= goal:
        revert with 0, 'RefundableCrowdsale: goal reached'
    if not refundAmount[address(arg1)]:
        revert with 0, 'RefundableCrowdsale: refundee is not due any tokens'
    refundAmount[address(arg1)] = 0
    require ext_code.size(sub_4dd45900Address)
    call sub_4dd45900Address.transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stableCoinAddress, address(arg1), refundAmount[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a687a063(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cap:
        revert with 0, 'Cap already reached'
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isSuperAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.isAdmin(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only SuperAdmin can update STO Price'
    if arg1 <= 0:
        revert with 0, 'Please Provide correct rate'
    if arg1 == rate:
        revert with 0, 'New rate should not be equal to existing rate'
    investorMinCap = arg1
    rate = arg1
    return arg1
}

function withdrawAllTokens() payable {
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < goal:
        revert with 0, 'PostGoalCrowdsale: Goal not reached'
    idx = 0
    while uint8(idx) < sub_c97533d9.length:
        mem[0] = sub_c97533d9[uint8(idx)]
        mem[32] = 19
        if balanceOf[stor20[uint8(idx)]]:
            if uint8(idx) >= sub_c97533d9.length:
                revert with 0, 50
            mem[32] = 19
            balanceOf[stor20[uint8(idx)]] = 0
            mem[0] = 20
            mem[ceil32(return_data.size) + 96] = 0xbeabacc800000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = tokenAddress
            mem[ceil32(return_data.size) + 132] = sub_c97533d9[uint8(idx)]
            mem[ceil32(return_data.size) + 164] = balanceOf[stor20[uint8(idx)]]
            require ext_code.size(_vaultAddress)
            call _vaultAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, sub_c97533d9[uint8(idx)], balanceOf[stor20[uint8(idx)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function bytesToUint(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if 1 > !idx:
            revert with 0, 17
        if arg1.length < idx + 1:
            revert with 0, 17
        if arg1.length + -idx - 1 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not 8 * arg1.length + -idx - 1:
            if idx >= arg1.length:
                revert with 0, 50
            if Mask(256, -248, mem[idx + 128]) and 1 > -1 / uint8(mem[idx + 128]) >> 248:
                revert with 0, 17
            if s > !(uint8(mem[idx + 128]) >> 248):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint8(mem[idx + 128]) >> 248)
            continue 
        if 8 * arg1.length + -idx - 1 > 255:
            revert with 0, 17
        if 1 << 8 * arg1.length + -idx - 1 > -1:
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(256, -248, mem[idx + 128]) and 1 << 8 * arg1.length + -idx - 1 > -1 / uint8(mem[idx + 128]) >> 248:
            revert with 0, 17
        if s > !(uint8(mem[idx + 128]) >> 248 * 1 << 8 * arg1.length + -idx - 1):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (uint8(mem[idx + 128]) >> 248 * 1 << 8 * arg1.length + -idx - 1)
        continue 
    mem[ceil32(arg1.length) + 128] = s
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function updateGoal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract address cannot update Goal'
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.isSuperAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.0x7f394e19 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only SuperAdmin can update Goal'
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= goal:
        revert with 0, 'goal is reached'
    if block.timestamp > closingTime:
        revert with 0, 'STO is closed'
    if arg1 <= 0:
        revert with 0, 'Provide goal greater that zero'
    require ext_code.size(tokensAddress)
    staticcall tokensAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        revert with 0, 'Tokens minted must be less than New Goal'
    if arg1 == sub_a82eb7a3:
        revert with 0, 'New goal should not be equal to existing goal'
    if arg1 > cap:
        revert with 0, 'Goal cannot be greater than Cap'
    sub_a82eb7a3 = arg1
    goal = arg1
    return arg1
}

function finalize() payable {
    if finalized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FinalizableCrowdsale: already finalized'
    if block.timestamp <= closingTime:
        revert with 0, 'FinalizableCrowdsale: not closed'
    finalized = 1
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= goal:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor27:
            revert with 0, 18
        if sub_1015c682 / stor27 < sub_0f83c0df:
            revert with 0, 17
        if (sub_1015c682 / stor27) - sub_0f83c0df < ext_call.return_data[0]:
            revert with 0, 17
        if (sub_1015c682 / stor27) - sub_0f83c0df - ext_call.return_data[0] > 0:
            if (sub_1015c682 / stor27) - sub_0f83c0df < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xbb3acde9 with:
                 gas gas_remaining wei
                args ownerWallet, (sub_1015c682 / stor27) - sub_0f83c0df - ext_call.return_data[0], 96, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[(2 * ceil32(return_data.size)) + 194 len 30] >> 272, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf2fde38b with:
             gas gas_remaining wei
            args walletAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    s = 0
    while idx < arg3.length:
        if 1 > !idx:
            revert with 0, 17
        if arg3.length < idx + 1:
            revert with 0, 17
        if arg3.length + -idx - 1 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not 8 * arg3.length + -idx - 1:
            if idx >= arg3.length:
                revert with 0, 50
            if Mask(256, -248, mem[idx + 128]) and 1 > -1 / uint8(mem[idx + 128]) >> 248:
                revert with 0, 17
            if s > !(uint8(mem[idx + 128]) >> 248):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint8(mem[idx + 128]) >> 248)
            continue 
        if 8 * arg3.length + -idx - 1 > 255:
            revert with 0, 17
        if 1 << 8 * arg3.length + -idx - 1 > -1:
            revert with 0, 17
        if idx >= arg3.length:
            revert with 0, 50
        if Mask(256, -248, mem[idx + 128]) and 1 << 8 * arg3.length + -idx - 1 > -1 / uint8(mem[idx + 128]) >> 248:
            revert with 0, 17
        if s > !(uint8(mem[idx + 128]) >> 248 * 1 << 8 * arg3.length + -idx - 1):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (uint8(mem[idx + 128]) >> 248 * 1 << 8 * arg3.length + -idx - 1)
        continue 
    sub_f179d9b0 = s
    if arg2 < investorMinCap:
        revert with 0, 'Investment is less than Minimum Invest Limit'
    if rate and s > -1 / rate:
        revert with 0, 17
    if arg2 < rate * s:
        revert with 0, 17
    if not rate:
        revert with 0, 18
    if arg2 - (rate * s) % rate:
        revert with 0, 'Invest amount must be multiple of _rate'
    if sub_1015c682 and 20 > -1 / sub_1015c682:
        revert with 0, 17
    if contributions[address(arg1)] > !arg2:
        revert with 0, 17
    require ext_code.size(whitelistAddress)
    if contributions[address(arg1)] + arg2 / 10^18 <= 20 * sub_1015c682 / 100 * 10^18:
        staticcall whitelistAddress.isWhitelistedUser(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0, ext_call.return_data[4 len 28] != 200:
            revert with 0, 'WhitelistCrowdsale: beneficiary doesn't have the Whitelisted role'
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if not arg1:
            revert with 0, 'Crowdsale: beneficiary is the zero address'
        if not arg2:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if not s:
            revert with 0, 'Crowdsale: targetTokens is 0'
        require ext_code.size(stor11)
        staticcall stor11.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !s:
            revert with 0, 17
        if ext_call.return_data[0] + s > !stor10:
            revert with 0, 17
        if ext_call.return_data[0] + s + stor10 > cap:
            revert with 0, 'CappedCrowdsale: cap exceeded'
        if not rate:
            revert with 0, 18
        if weiRaised > !arg2:
            revert with 0, 17
        weiRaised += arg2
        if stage > 1:
            revert with 0, 33
        if stage == 1:
            uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
            require ext_code.size(tokenAddress)
            call tokenAddress.0xbb3acde9 with:
                 gas gas_remaining wei
                args address(arg1), arg2 / rate, 96, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 226 len 30] >> 272, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'MintedCrowdsale: minting failed'
        else:
            if balanceOf[address(arg1)] > !(arg2 / rate):
                revert with 0, 17
            balanceOf[address(arg1)] += arg2 / rate
            uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
            require ext_code.size(tokenAddress)
            call tokenAddress.0xbb3acde9 with:
                 gas gas_remaining wei
                args _vaultAddress, arg2 / rate, 96, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 226 len 30] >> 272, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'MintedCrowdsale: minting failed'
            if balanceOf[address(arg1)]:
            else:
                sub_c97533d9.length++
                storCE6D[stor20.length] = arg1
    else:
        staticcall whitelistAddress.userType(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        if not 0, ext_call.return_data[4 len 28]:
            revert with 0, 'You have need to Upgrade Premium Account'
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.isWhitelistedUser(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 200:
            revert with 0, 'WhitelistCrowdsale: beneficiary doesn't have the Whitelisted role'
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if not arg1:
            revert with 0, 'Crowdsale: beneficiary is the zero address'
        if not arg2:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if not s:
            revert with 0, 'Crowdsale: targetTokens is 0'
        require ext_code.size(stor11)
        staticcall stor11.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !s:
            revert with 0, 17
        if ext_call.return_data[0] + s > !stor10:
            revert with 0, 17
        if ext_call.return_data[0] + s + stor10 > cap:
            revert with 0, 'CappedCrowdsale: cap exceeded'
        if not rate:
            revert with 0, 18
        if weiRaised > !arg2:
            revert with 0, 17
        weiRaised += arg2
        if stage > 1:
            revert with 0, 33
        if stage == 1:
            uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
            require ext_code.size(tokenAddress)
            call tokenAddress.0xbb3acde9 with:
                 gas gas_remaining wei
                args address(arg1), arg2 / rate, 96, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'MintedCrowdsale: minting failed'
        else:
            if balanceOf[address(arg1)] > !(arg2 / rate):
                revert with 0, 17
            balanceOf[address(arg1)] += arg2 / rate
            uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
            require ext_code.size(tokenAddress)
            call tokenAddress.0xbb3acde9 with:
                 gas gas_remaining wei
                args _vaultAddress, arg2 / rate, 96, 66, 0xfe3078313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030, mem[ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 226 len 30] >> 272, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'MintedCrowdsale: minting failed'
            if balanceOf[address(arg1)]:
            else:
                sub_c97533d9.length++
                storCE6D[stor20.length] = arg1
    emit TokensPurchased(arg2, arg2 / rate, msg.sender, arg1);
    if contributions[address(arg1)] > !arg2:
        revert with 0, 17
    contributions[address(arg1)] += arg2
    beneficiaryAddress = arg1
    if block.timestamp >= openingTime:
        if block.timestamp <= closingTime:
            require ext_code.size(stor16)
            staticcall stor16.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= goal:
                if stage > 1:
                    revert with 0, 33
                if not stage:
                    stage = 1
    if stage > 1:
        revert with 0, 33
    if stage == 1:
        require ext_code.size(stableCoinAddress)
        call stableCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args walletAddress, arg2
    else:
        if refundAmount[address(arg1)] > !arg2:
            revert with 0, 17
        refundAmount[address(arg1)] += arg2
        require ext_code.size(stableCoinAddress)
        call stableCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_4dd45900Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 1
    return 1
}



}
