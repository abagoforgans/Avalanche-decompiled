contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const SellLimitDivider = 50

const InitialSupply = 10^18

const BuyLimitDivider = 50

const SecondTeamWallet = 0x10c3e7e7ed6abc967dec4dc021c312610865bb35

const BalanceLimitDivider = 50

const decimals = 9

const MaxSellLockTime = 2

const TeamWallet = 0x10c3e7e7ed6abc967dec4dc021c312610865bb35

const WhiteListBalanceLimitDivider = 50

const symbol = '', 0

const MaxTax = 95


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
mapping of uint8 stor4;
array of struct stor5;
mapping of uint256 stor6;
array of struct stor7;
mapping of uint256 stor8;
array of struct stor9;
mapping of uint256 stor10;
mapping of uint8 stor11;
uint256 stor13;
uint8 stor14;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
array of address triedToDump;
uint8 stor20;
uint8 stor20; offset 8
uint8 stor20; offset 16
uint8 stor20; offset 40
uint8 stor20; offset 48
uint16 stor20;
uint32 stor20;
uint256 stor20; offset 56
uint256 stor20; offset 24
uint256 stor20;
address stor21;
uint256 totalTokenSwapGenerated;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
uint256 totalLPAVAX;
uint8 stor29;
uint8 sellLockDisabled; offset 8
uint256 stor29; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
uint8 whiteListTrading; offset 16
address stor31; offset 24

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

function totalTokenSwapGenerated() {
    return totalTokenSwapGenerated
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sellLimit() {
    return sellLimit
}

function buyLimit() {
    return buyLimit
}

function marketingBalance() {
    return marketingBalance
}

function totalLPAVAX() {
    return totalLPAVAX
}

function wListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function whiteListTrading() {
    return bool(whiteListTrading)
}

function balanceLimit() {
    return balanceLimit
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

function triedToDump(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < triedToDump.length
    return triedToDump[arg1]
}

function _blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sellLockTime() {
    return sellLockTime
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 10^18 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 10^18 / 10^9)
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

function SetupEnableTrading() {
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    tradingEnabled = 1
}

function getTaxes() {
    return uint8(stor20.field_0), 
           uint8(stor20.field_0),
           uint8(stor20.field_0),
           uint8(stor20.field_0),
           uint8(stor20.field_8),
           uint8(stor20.field_0)
}

function TeamSetPeggedSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    stor14 = uint8(arg1)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    stor31 = arg1
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    marketingShare = arg1
}

function TeamSwitchManualAVAXConversion(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    manualConversion = uint8(arg1)
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    Mask(248, 0, stor29.field_8) = Mask(248, 0, arg1)
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
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if arg1 > 2:
        revert with 0, 'Sell Lock time too high'
    sellLockTime = arg1
}

function TeamSetWhitelistedAddressAlt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    stor4[address(arg1)] = uint8(arg2)
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

function sub_2e2d5eb3(?) {
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    marketingBalance = 0
    call 0x10c3e7e7ed6abc967dec4dc021c312610865bb35 with:
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

function TeamUpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function SetupAddToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if not stor8[address(arg1)]:
        stor7.length++
        stor7[stor7.length].field_0 = arg1
        stor7[stor7.length].field_160 = 0
        stor8[address(arg1)] = stor7.length
}

function TeamExcludeAccountFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
}

function TeamExcludeAccountFromSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if not stor10[address(arg1)]:
        stor9.length++
        stor9[stor9.length].field_0 = arg1
        stor9[stor9.length].field_160 = 0
        stor10[address(arg1)] = stor9.length
}

function TeamSetWhitelistedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    stor4[address(arg1)] = uint8(arg2)
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
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

function TeamIncludeAccountToFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if stor6[address(arg1)]:
        if stor6[address(arg1)] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 >= stor5.length:
            revert with 0, 50
        if stor6[address(arg1)] - 1 >= stor5.length:
            revert with 0, 50
        stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(arg1)] = 0
}

function SetupRemoveFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if stor8[address(arg1)]:
        if stor8[address(arg1)] < 1:
            revert with 0, 17
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 >= stor7.length:
            revert with 0, 50
        if stor8[address(arg1)] - 1 >= stor7.length:
            revert with 0, 50
        stor7[stor8[address(arg1)]].field_0 = stor7[stor7.length].field_0
        stor8[stor7[stor7.length].field_0] = stor8[address(arg1)]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[address(arg1)] = 0
}

function TeamIncludeAccountToSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if stor10[address(arg1)]:
        if stor10[address(arg1)] < 1:
            revert with 0, 17
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 >= stor9.length:
            revert with 0, 50
        if stor10[address(arg1)] - 1 >= stor9.length:
            revert with 0, 50
        stor9[stor10[address(arg1)]].field_0 = stor9[stor9.length].field_0
        stor10[stor9[stor9.length].field_0] = stor10[address(arg1)]
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length].field_0 = 0
        stor9.length--
        stor10[address(arg1)] = 0
}

function TeamSetWhitelistedAddressesAlt(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    idx = 0
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    idx = 0
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 140 len 20]]:
            stor7.length++
            stor7[stor7.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor7[stor7.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])] = stor7.length
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
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + arg1)) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    if arg4 > 95:
        revert with 0, 'taxes higher than max tax'
    if arg5 > 95:
        revert with 0, 'taxes higher than max tax'
    if arg6 > 95:
        revert with 0, 'taxes higher than max tax'
    uint8(stor20.field_0) = arg4
    uint16(stor20.field_0) = uint16(Mask(208, 48, uint256(stor20.field_0)) or uint32(stor20.field_0) or uint8(arg1) << 32 or uint8(arg2) << 40 and -71776119061282816)
    uint8(stor20.field_8) = arg5
    uint8(stor20.field_16) = arg6
    Mask(232, 0, stor20.field_24) = Mask(232, 24, Mask(208, 48, uint256(stor20.field_0)) or uint32(stor20.field_0) or uint8(arg1) << 32 or uint8(arg2) << 40 and -71776119061282816) >> 24
    uint8(stor20.field_48) = arg3
    Mask(200, 0, stor20.field_56) = 0
}

function TeamSetWhitelistedAddresses(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    idx = 0
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        stor4[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        if not stor6[mem[(32 * idx) + 140 len 20]]:
            stor5.length++
            stor5[stor5.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor5[stor5.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[address(mem[(32 * idx) + 128])] = stor5.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function TeamDistributePresale(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    idx = 0
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner == msg.sender:
        idx = 0
        while idx < arg2.length:
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 140 len 20]] > !(10^9 * arg1):
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 140 len 20]] += 10^9 * arg1
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            mem[0] = this.address
            mem[32] = 1
            if balanceOf[this.address] < 10^9 * arg1:
                revert with 0, 17
            balanceOf[this.address] += -1 * 10^9 * arg1
            if idx >= mem[96]:
                revert with 0, 50
            _54 = mem[(32 * idx) + 128]
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + 97] = 10^9 * arg1
            emit Transfer((10^9 * arg1), this.address, address(_54));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
        idx = 0
        while idx < arg2.length:
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 140 len 20]] > !(10^9 * arg1):
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 140 len 20]] += 10^9 * arg1
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            mem[0] = this.address
            mem[32] = 1
            if balanceOf[this.address] < 10^9 * arg1:
                revert with 0, 17
            balanceOf[this.address] += -1 * 10^9 * arg1
            if idx >= mem[96]:
                revert with 0, 50
            _55 = mem[(32 * idx) + 128]
            if arg1 and 10^9 > -1 / arg1:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + 97] = 10^9 * arg1
            emit Transfer((10^9 * arg1), this.address, address(_55));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function TeamManualGenerateTokenSwapBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0x10c3e7e7ed6abc967dec4dc021c312610865bb35:
            revert with 0, 'Caller not in Team'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    uint8(stor29.field_0) = 1
    if uint8(stor20.field_40) > -uint8(stor20.field_48) + 255:
        revert with 0, 17
    if stor13 <= 10^9 * arg1:
        if balanceOf[this.address] >= stor13:
            if uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                if stor13 and uint8(stor20.field_40) > -1 / stor13:
                    revert with 0, 17
                if not uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                    revert with 0, 18
                if stor13 < stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                    revert with 0, 17
                if stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) < stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2:
                    revert with 0, 17
                if (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > !(stor13 - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor21:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor21].field_0 = -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                emit Approval((-(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13), this.address, stor21);
                mem[128] = this.address
                require ext_code.size(stor21)
                staticcall stor21.0x73b295c2 with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                idx = 0
                s = ceil32(return_data.size) + 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor21)
                call stor21.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > 0:
                    revert with 0, 17
                if not -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13:
                    revert with 0, 18
                if totalLPAVAX > !(0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13):
                    revert with 0, 17
                totalLPAVAX += 0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor21:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor21].field_0 = stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2
                allowance[address(this.address)][stor21].field_255 = 0
                emit Approval((stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2), this.address, stor21);
                require ext_code.size(stor21)
                call stor21.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13 wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and marketingShare > 0:
                    revert with 0, 17
                if marketingBalance > -1:
                    revert with 0, 17
    else:
        if not stor14:
            if balanceOf[this.address] >= stor13:
                if uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                    if stor13 and uint8(stor20.field_40) > -1 / stor13:
                        revert with 0, 17
                    if not uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                        revert with 0, 18
                    if stor13 < stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                        revert with 0, 17
                    if stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) < stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2:
                        revert with 0, 17
                    if (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > !(stor13 - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                    emit Approval((-(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13), this.address, stor21);
                    mem[128] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > 0:
                        revert with 0, 17
                    if not -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13:
                        revert with 0, 18
                    if totalLPAVAX > !(0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13):
                        revert with 0, 17
                    totalLPAVAX += 0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2
                    allowance[address(this.address)][stor21].field_255 = 0
                    emit Approval((stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2), this.address, stor21);
                    require ext_code.size(stor21)
                    call stor21.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + stor13 wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, stor13 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
        else:
            if balanceOf[this.address] >= 10^9 * arg1:
                if uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                    if 10^9 * arg1 and uint8(stor20.field_40) > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                        revert with 0, 18
                    if 10^9 * arg1 < 10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)):
                        revert with 0, 17
                    if 10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) < 10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2:
                        revert with 0, 17
                    if (10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > !((10^9 * arg1) - (10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1)
                    emit Approval((-(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1)), this.address, stor21);
                    mem[128] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1)
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))) - (10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) > 0:
                        revert with 0, 17
                    if not -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1):
                        revert with 0, 18
                    if totalLPAVAX > !(0 / -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1)):
                        revert with 0, 17
                    totalLPAVAX += 0 / -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1)
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = 10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2
                    allowance[address(this.address)][stor21].field_255 = 0
                    emit Approval((10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2), this.address, stor21);
                    require ext_code.size(stor21)
                    call stor21.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40)) / 2) + (10^9 * arg1) wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, 10^9 * arg1 * uint8(stor20.field_40) / uint8(uint8(stor20.field_48) + uint8(stor20.field_40))), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
    uint8(stor29.field_0) = 0
}



}
