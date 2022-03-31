contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _getTotalShares()
#  - _fallback()
#
const name = 'eSTINKY', 0

const SellLimitDivider = 500

const InitialSupply = 10^17

const BalanceLimitDivider = 50

const decimals = 9

const MaxSellLockTime = (2 * 3600)

const TeamWallet = 0xd499fea6615f9aa16e4041259f929c7983be8b2c

const WhiteListBalanceLimitDivider = 500

const symbol = '', 0

const MaxTax = 20


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
array of struct stor8;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint8 stor15;
uint8 stor15; offset 8
uint8 stor15; offset 16
uint8 stor15; offset 32
uint8 stor15; offset 40
uint16 stor15;
uint32 stor15;
uint256 stor15; offset 48
uint256 stor15; offset 24
uint256 stor15;
uint8 stor16; offset 160
address stor16;
uint256 profitPerShare;
uint256 totalStakingReward;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
mapping of uint256 stor22;
mapping of uint256 stor23;
uint256 totalLPAVAX;
uint8 stor25;
uint8 sellLockDisabled; offset 8
uint256 stor25; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
uint8 whiteListTrading; offset 16
uint16 stor27; offset 8
address stor27; offset 24
uint256 stor28;
uint8 sub_49bdf873;

function marketingShare() {
    return marketingShare
}

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function totalSupply() {
    return totalSupply
}

function totalPayouts() {
    return totalPayouts
}

function sub_49bdf873(?) {
    return bool(sub_49bdf873)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sellLimit() {
    return sellLimit
}

function marketingBalance() {
    return marketingBalance
}

function totalLPAVAX() {
    return totalLPAVAX
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function whiteListTrading() {
    return bool(whiteListTrading)
}

function isExcludedFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function balanceLimit() {
    return balanceLimit
}

function profitPerShare() {
    return profitPerShare
}

function manualConversion() {
    return bool(manualConversion)
}

function sellLockDisabled() {
    return bool(sellLockDisabled)
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function getWhitelistedStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function totalStakingReward() {
    return totalStakingReward
}

function sellLockTime() {
    return sellLockTime
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 10^17 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 10^17 / 10^9)
}

function AddressResetSellLock() {
    if block.timestamp > !sellLockTime:
        revert with 0, 17
    stor3[msg.sender] = block.timestamp + sellLockTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor28:
        return 0
    if stor28 < block.timestamp:
        revert with 0, 17
    return (stor28 - block.timestamp)
}

function TeamlimitLiquidityReleaseTo20Percent() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    sub_49bdf873 = 1
}

function getTaxes() {
    return uint8(stor15.field_0), 
           uint8(stor15.field_0),
           uint8(stor15.field_0),
           uint8(stor15.field_0),
           uint8(stor15.field_8),
           uint8(stor15.field_0)
}

function SetupEnableTrading() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require tradingEnabled
    require whiteListTrading
    whiteListTrading = 0
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    address(stor27.field_24) = arg1
}

function TeamSwitchManualAVAXConversion(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    manualConversion = uint8(arg1)
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    Mask(248, 0, stor25.field_8) = Mask(248, 0, arg1)
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require arg1 <= 50
    marketingShare = arg1
}

function getAddressSellLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)] <= block.timestamp:
        return 0
    if stor3[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor3[address(arg1)] - block.timestamp)
}

function TeamSetSellLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if arg1 > 2 * 3600:
        revert with 0, 'Sell Lock time too high'
    sellLockTime = arg1
}

function SetupEnableWhitelistTrading() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require not tradingEnabled
    uint16(stor27.field_8) = 257
    if block.timestamp > -3601:
        revert with 0, 17
    stor28 = block.timestamp + 3600
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function TeamUnlockLiquidityInSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor28
    stor28 = arg1 + block.timestamp
}

function sub_2e2d5eb3(?) {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    marketingBalance = 0
    call 0xd499fea6615f9aa16e4041259f929c7983be8b2c with:
       value marketingBalance wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function SetupAddToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
}

function TeamExcludeAccountFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
}

function TeamExcludeAccountFromSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if not stor9[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
        stor8[stor8.length].field_160 = 0
        stor9[address(arg1)] = stor8.length
}

function sub_1b5fa530(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require arg1 <= marketingBalance
    if marketingBalance < arg1:
        revert with 0, 17
    marketingBalance -= arg1
    call 0xd499fea6615f9aa16e4041259f929c7983be8b2c with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function TeamRemoveRemainingAVAX() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if 720 * 24 * 3600 > !stor28:
        revert with 0, 17
    if block.timestamp < stor28 + (720 * 24 * 3600):
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -3601:
        revert with 0, 17
    stor28 = block.timestamp + 3600
    call 0xd499fea6615f9aa16e4041259f929c7983be8b2c with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function TeamUpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require arg2 < totalSupply / 100
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    if 10^9 * arg1 < totalSupply / 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newBalanceLimit needs to be at least target'
    if 10^9 * arg2 < totalSupply / 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newSellLimit needs to be at least target'
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function getDividents(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[address(arg1)]:
        return stor23[address(arg1)]
    if profitPerShare and balanceOf[address(arg1)] > -1 / profitPerShare:
        revert with 0, 17
    if profitPerShare * balanceOf[address(arg1)] < stor22[address(arg1)]:
        if 0 > !stor23[address(arg1)]:
            revert with 0, 17
        return stor23[address(arg1)]
    if profitPerShare * balanceOf[address(arg1)] < stor22[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor22[address(arg1)]) >> 64 > !stor23[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor22[address(arg1)]) >> 64) + stor23[address(arg1)])
}

function TeamIncludeAccountToFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[address(arg1)] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
}

function SetupRemoveFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if stor7[address(arg1)]:
        if stor7[address(arg1)] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor7[address(arg1)] - 1 >= stor6.length:
            revert with 0, 50
        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(arg1)] = 0
}

function TeamIncludeAccountToSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if stor9[address(arg1)]:
        if stor9[address(arg1)] < 1:
            revert with 0, 17
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if stor9[address(arg1)] - 1 >= stor8.length:
            revert with 0, 50
        stor8[stor9[address(arg1)]].field_0 = stor8[stor8.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[address(arg1)] = 0
}

function TeamIncludeToStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require stor11[address(arg1)]
    if stor11[address(arg1)]:
        if stor11[address(arg1)] < 1:
            revert with 0, 17
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        if stor11[address(arg1)] - 1 >= stor10.length:
            revert with 0, 50
        stor10[stor11[address(arg1)]].field_0 = stor10[stor10.length].field_0
        stor11[stor10[stor10.length].field_0] = stor11[address(arg1)]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length].field_0 = 0
        stor10.length--
        stor11[address(arg1)] = 0
    if balanceOf[address(arg1)] and profitPerShare > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    stor22[address(arg1)] = balanceOf[address(arg1)] * profitPerShare
}

function SetupAddArrayToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
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
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if not stor7[mem[(32 * idx) + 140 len 20]]:
            stor6.length++
            stor6[stor6.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor6[stor6.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            stor7[address(mem[(32 * idx) + 128])] = stor6.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function TeamSetTaxes(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + arg1)) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    if arg4 > 20:
        revert with 0, 'taxes higher than max tax'
    if arg5 > 20:
        revert with 0, 'taxes higher than max tax'
    if arg6 > 20:
        revert with 0, 'taxes higher than max tax'
    uint8(stor15.field_0) = arg4
    uint16(stor15.field_0) = uint16(Mask(216, 40, uint256(stor15.field_0)) or stor15.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416)
    uint8(stor15.field_8) = arg5
    uint8(stor15.field_16) = arg6
    Mask(232, 0, stor15.field_24) = Mask(232, 24, Mask(216, 40, uint256(stor15.field_0)) or stor15.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416) >> 24
    uint8(stor15.field_40) = arg3
    Mask(208, 0, stor15.field_48) = 0
}

function TeamReleaseLiquidity() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if block.timestamp < stor28:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(address(stor27.field_24))
    staticcall address(stor27.field_24).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_49bdf873:
        require ext_code.size(address(stor27.field_24))
        call address(stor27.field_24).0xa9059cbb with:
             gas gas_remaining wei
            args 0xd499fea6615f9aa16e4041259f929c7983be8b2c, ext_call.return_data[0]
    else:
        if block.timestamp > -3601:
            revert with 0, 17
        stor28 = block.timestamp + 3600
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(address(stor27.field_24))
        call address(stor27.field_24).0xa9059cbb with:
             gas gas_remaining wei
            args 0xd499fea6615f9aa16e4041259f929c7983be8b2c, 2 * ext_call.return_data[0] / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function TeamExcludeFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    require stor10.length < 30
    require not stor11[address(arg1)]
    if profitPerShare and balanceOf[address(arg1)] > -1 / profitPerShare:
        revert with 0, 17
    if profitPerShare * balanceOf[address(arg1)] < stor22[address(arg1)]:
        if balanceOf[address(arg1)] and profitPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        stor22[address(arg1)] = balanceOf[address(arg1)] * profitPerShare
        if stor23[address(arg1)] > -1:
            revert with 0, 17
    else:
        if profitPerShare * balanceOf[address(arg1)] < stor22[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and profitPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        stor22[address(arg1)] = balanceOf[address(arg1)] * profitPerShare
        if stor23[address(arg1)] > !(Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor22[address(arg1)]) >> 64):
            revert with 0, 17
        stor23[address(arg1)] += Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor22[address(arg1)]) >> 64
    if not stor11[address(arg1)]:
        stor10.length++
        stor10[stor10.length].field_0 = arg1
        stor10[stor10.length].field_160 = 0
        stor11[address(arg1)] = stor10.length
}

function TeamRemoveLiquidity(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    if block.timestamp < stor28:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -3601:
        revert with 0, 17
    stor28 = block.timestamp + 3600
    require ext_code.size(address(stor27.field_24))
    staticcall address(stor27.field_24).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_49bdf873:
        require ext_code.size(address(stor27.field_24))
        call address(stor27.field_24).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor16.field_0))
        call address(stor16.field_0).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
             gas gas_remaining wei
            args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    else:
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(address(stor27.field_24))
        call address(stor27.field_24).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), 2 * ext_call.return_data[0] / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor16.field_0))
        call address(stor16.field_0).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
             gas gas_remaining wei
            args address(this.address), 2 * ext_call.return_data[0] / 10, 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if arg1:
        if False and marketingShare > 0:
            revert with 0, 17
    if marketingBalance > -1:
        revert with 0, 17
}

function TeamCreateLPandAVAX() {
    if owner != msg.sender:
        if msg.sender != 0xd499fea6615f9aa16e4041259f929c7983be8b2c:
            revert with 0, 'Caller not in Team'
    uint8(stor25.field_0) = 1
    if uint8(stor15.field_32) > -uint8(stor15.field_40) + 255:
        revert with 0, 17
    if balanceOf[this.address] >= sellLimit:
        if uint8(uint8(stor15.field_40) + uint8(stor15.field_32)):
            if sellLimit and uint8(stor15.field_32) > -1 / sellLimit:
                revert with 0, 17
            if not uint8(uint8(stor15.field_40) + uint8(stor15.field_32)):
                revert with 0, 18
            if sellLimit < sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)):
                revert with 0, 17
            if sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) < sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2:
                revert with 0, 17
            if (sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32))) - (sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) > !(sellLimit - (sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)))):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor16.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor16.field_0)].field_0 = -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit
            emit Approval((-(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit), this.address, address(stor16.field_0));
            mem[128] = this.address
            require ext_code.size(address(stor16.field_0))
            staticcall address(stor16.field_0).WAVAX() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor16.field_0))
            call address(stor16.field_0).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32))) - (sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) > 0:
                revert with 0, 17
            if not -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit:
                revert with 0, 18
            if totalLPAVAX > !(0 / -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit):
                revert with 0, 17
            totalLPAVAX += 0 / -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor16.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor16.field_0)].field_0 = sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2
            allowance[address(this.address)][address(stor16.field_0)].field_255 = 0
            emit Approval((sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2), this.address, address(stor16.field_0));
            require ext_code.size(address(stor16.field_0))
            call address(stor16.field_0).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value 0 / -(sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32)) / 2) + sellLimit wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, sellLimit * uint8(stor15.field_32) / uint8(uint8(stor15.field_40) + uint8(stor15.field_32))), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and marketingShare > 0:
                revert with 0, 17
            if marketingBalance > -1:
                revert with 0, 17
    uint8(stor25.field_0) = 0
}

function sub_820c86d8(?) {
    require not uint8(stor16.field_160)
    uint8(stor16.field_160) = 1
    if stor11[address(msg.sender)]:
        stor23[address(msg.sender)] = 0
        if stor23[address(msg.sender)]:
            if totalPayouts > !stor23[address(msg.sender)]:
                revert with 0, 17
            totalPayouts += stor23[address(msg.sender)]
            require ext_code.size(address(stor16.field_0))
            staticcall address(stor16.field_0).WAVAX() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = 0xb3fe5374f67d7a22886a0ee082b2e2f9d2651651
            mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor16.field_0))
            call address(stor16.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value stor23[address(msg.sender)] wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x8c98b5b3: stor23[address(msg.sender)], msg.sender
    else:
        if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
            revert with 0, 17
        if profitPerShare * balanceOf[address(msg.sender)] < stor22[address(msg.sender)]:
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor22[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor23[address(msg.sender)] > -1:
                revert with 0, 17
            stor23[address(msg.sender)] = 0
            if stor23[address(msg.sender)]:
                if totalPayouts > !stor23[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor23[address(msg.sender)]
                require ext_code.size(address(stor16.field_0))
                staticcall address(stor16.field_0).WAVAX() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = 0xb3fe5374f67d7a22886a0ee082b2e2f9d2651651
                mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = 0
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor16.field_0))
                call address(stor16.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value stor23[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x8c98b5b3: stor23[address(msg.sender)], msg.sender
        else:
            if profitPerShare * balanceOf[address(msg.sender)] < stor22[address(msg.sender)]:
                revert with 0, 17
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor22[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor23[address(msg.sender)] > !(Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64):
                revert with 0, 17
            stor23[address(msg.sender)] = 0
            if stor23[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64):
                if totalPayouts > !(stor23[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64)):
                    revert with 0, 17
                totalPayouts = totalPayouts + stor23[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64)
                require ext_code.size(address(stor16.field_0))
                staticcall address(stor16.field_0).WAVAX() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = 0xb3fe5374f67d7a22886a0ee082b2e2f9d2651651
                mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = 0
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor16.field_0))
                call address(stor16.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value stor23[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64) wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x8c98b5b3: stor23[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor22[address(msg.sender)]) >> 64), msg.sender
    uint8(stor16.field_160) = 0
}



}
