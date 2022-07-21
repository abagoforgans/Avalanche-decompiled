contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _getTotalShares()
#  - _fallback()
#
const name = 'McAvalanche', 0

const SellLimitDivider = 100

const InitialSupply = 10^17

const BalanceLimitDivider = 50

const decimals = 9

const MaxSellLockTime = 0

const MaxBuyLockTime = 0

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
mapping of uint256 stor4;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint256 stor12;
array of struct stor13;
mapping of uint256 stor14;
uint256 stor15;
uint256 sub_269a6aae;
uint256 enableAutoBlacklist;
address developmentAddress;
address marketingAddress;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 stor23;
uint8 stor24;
uint8 stor24; offset 8
uint8 stor24; offset 16
uint8 stor24; offset 32
uint8 stor24; offset 40
uint16 stor24;
uint32 stor24;
uint256 stor24; offset 48
uint256 stor24; offset 24
uint256 stor24;
address stor25;
uint256 profitPerShare;
uint256 totalStakingReward;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
mapping of uint256 stor31;
mapping of uint256 stor32;
uint256 totalLPETH;
uint8 stor34;
uint8 sellLockDisabled; offset 8
uint256 stor34; offset 8
uint256 sellLockTime;
uint8 buyLockDisabled;
uint256 buyLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
address stor38; offset 16
uint256 stor39;

function marketingShare() {
    return marketingShare
}

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function getBuyLockTimeInSeconds() {
    return buyLockTime
}

function totalSupply() {
    return totalSupply
}

function sub_269a6aae(?) {
    return sub_269a6aae
}

function buyLockDisabled() {
    return bool(buyLockDisabled)
}

function totalLPETH() {
    return totalLPETH
}

function enableAutoBlacklist() {
    return enableAutoBlacklist
}

function totalPayouts() {
    return totalPayouts
}

function buyLockTime() {
    return buyLockTime
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isExcludedFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
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

function Development() {
    return developmentAddress
}

function Marketing() {
    return marketingAddress
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

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 10^17 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 10^17 / 10^9)
}

function AddressResetBuyLock() {
    if block.timestamp > !buyLockTime:
        revert with 0, 17
    stor4[msg.sender] = block.timestamp + buyLockTime
}

function AddressResetSellLock() {
    if block.timestamp > !sellLockTime:
        revert with 0, 17
    stor3[msg.sender] = block.timestamp + sellLockTime
}

function SetupEnableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingEnabled = 1
    stor15 = block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor39:
        return 0
    if stor39 < block.timestamp:
        revert with 0, 17
    return (stor39 - block.timestamp)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor38 = arg1
}

function TeamChangeMarketing(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
}

function TeamDisableBuyLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyLockDisabled = uint8(arg1)
}

function sub_e68f136a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    developmentAddress = address(arg1)
}

function getTaxes() {
    return uint8(stor24.field_0), 
           uint8(stor24.field_0),
           uint8(stor24.field_0),
           uint8(stor24.field_0),
           uint8(stor24.field_8),
           uint8(stor24.field_0)
}

function TeamSwitchManualETHConversion(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    manualConversion = uint8(arg1)
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor34.field_8) = Mask(248, 0, arg1)
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 100
    marketingShare = arg1
}

function TeamChangeMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor23 = 10^9 * arg1
}

function TeamSetBuyLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        revert with 0, 'Buy Lock time too high'
    buyLockTime = arg1
}

function TeamSetSellLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        revert with 0, 'Sell Lock time too high'
    sellLockTime = arg1
}

function getAddressBuyLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)] <= block.timestamp:
        return 0
    if stor4[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor4[address(arg1)] - block.timestamp)
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

function TeamUnlockLiquidityInSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor39
    stor39 = arg1 + block.timestamp
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

function AddWalletExclusion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
}

function addAddressToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor14[address(arg1)]:
        stor13.length++
        stor13[stor13.length].field_0 = arg1
        stor13[stor13.length].field_160 = 0
        stor14[address(arg1)] = stor13.length
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

function TeamRemoveRemainingETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor39:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -1801:
        revert with 0, 17
    stor39 = block.timestamp + 1800
    call developmentAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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

function TeamUpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 < totalSupply / 100
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    if 10^9 * arg1 < totalSupply / 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newBalanceLimit needs to be at least target'
    if 10^9 * arg2 < totalSupply / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newSellLimit needs to be at least target'
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function TeamReleaseLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor39:
        revert with 0, 'Not yet unlocked'
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor38.0xa9059cbb with:
         gas gas_remaining wei
        args developmentAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function TeamWithdrawALLMarketingETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingBalance = 0
    if marketingBalance > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    call developmentAddress with:
       value 10 * marketingBalance / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if marketingBalance > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
        revert with 0, 17
    call marketingAddress with:
       value 90 * marketingBalance / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDividents(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[address(arg1)]:
        return stor32[address(arg1)]
    if profitPerShare and balanceOf[address(arg1)] > -1 / profitPerShare:
        revert with 0, 17
    if profitPerShare * balanceOf[address(arg1)] < stor31[address(arg1)]:
        if 0 > !stor32[address(arg1)]:
            revert with 0, 17
        return stor32[address(arg1)]
    if profitPerShare * balanceOf[address(arg1)] < stor31[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64 > !stor32[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64) + stor32[address(arg1)])
}

function removeAddressFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14[address(arg1)]:
        if stor14[address(arg1)] < 1:
            revert with 0, 17
        if stor13.length < 1:
            revert with 0, 17
        if stor13.length - 1 >= stor13.length:
            revert with 0, 50
        if stor14[address(arg1)] - 1 >= stor13.length:
            revert with 0, 50
        stor13[stor14[address(arg1)]].field_0 = stor13[stor13.length].field_0
        stor14[stor13[stor13.length].field_0] = stor14[address(arg1)]
        if not stor13.length:
            revert with 0, 49
        stor13[stor13.length].field_0 = 0
        stor13.length--
        stor14[address(arg1)] = 0
}

function TeamWithdrawXMarketingETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= marketingBalance
    if marketingBalance < arg1:
        revert with 0, 17
    marketingBalance -= arg1
    if arg1 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    call developmentAddress with:
       value 10 * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
        revert with 0, 17
    call marketingAddress with:
       value 90 * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + arg1)) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    uint8(stor24.field_0) = arg4
    uint16(stor24.field_0) = uint16(Mask(216, 40, uint256(stor24.field_0)) or stor24.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416)
    uint8(stor24.field_8) = arg5
    uint8(stor24.field_16) = arg6
    Mask(232, 0, stor24.field_24) = Mask(232, 24, Mask(216, 40, uint256(stor24.field_0)) or stor24.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416) >> 24
    uint8(stor24.field_40) = arg3
    Mask(208, 0, stor24.field_48) = 0
}

function TeamRemoveLiquidity(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor39:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -1801:
        revert with 0, 17
    stor39 = block.timestamp + 1800
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor38.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor25, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor25.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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

function TeamCreateLPandETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor34.field_0) = 1
    if uint8(stor24.field_32) > -uint8(stor24.field_40) + 255:
        revert with 0, 17
    if balanceOf[this.address] >= 5 * 10^14:
        if uint8(uint8(stor24.field_40) + uint8(stor24.field_32)):
            if uint8(stor24.field_32) > 0x901d7cf73ab0acd90f9d37014bf60a1057a6e390ca38f6533660:
                revert with 0, 17
            if not uint8(uint8(stor24.field_40) + uint8(stor24.field_32)):
                revert with 0, 18
            if 5 * 10^14 < 5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)):
                revert with 0, 17
            if 5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) < 5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2:
                revert with 0, 17
            if (5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32))) - (5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) > !(-(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32))) + 5 * 10^14):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor25:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor25].field_0 = -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14
            emit Approval((-(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14), this.address, stor25);
            mem[128] = this.address
            staticcall stor25.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor25)
            call stor25.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32))) - (5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) > 0:
                revert with 0, 17
            if not -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14:
                revert with 0, 18
            if totalLPETH > !(0 / -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14):
                revert with 0, 17
            totalLPETH += 0 / -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor25:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor25].field_0 = 5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2
            allowance[address(this.address)][stor25].field_255 = 0
            emit Approval((5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2), this.address, stor25);
            call stor25.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32)) / 2) + 5 * 10^14 wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, 5 * 10^14 * uint8(stor24.field_32) / uint8(uint8(stor24.field_40) + uint8(stor24.field_32))), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and marketingShare > 0:
                revert with 0, 17
            if marketingBalance > -1:
                revert with 0, 17
    uint8(stor34.field_0) = 0
}



}
