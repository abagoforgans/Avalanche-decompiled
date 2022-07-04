contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _getTotalShares()
#  - _fallback()
#
const name = 'MICROMACHINES', 0

const SellLimitDivider = 50

const InitialSupply = 10^12

const BalanceLimitDivider = 50

const decimals = 9

const MaxSellLockTime = 0

const MaxBuyLockTime = 0

const symbol = '', 0


address owner;
uint256 sub_a54fe533;
address sub_07086909Address;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of struct stor7;
mapping of uint256 stor8;
mapping of uint256 stor14;
address teamWalletAddress;
address walletTwoAddress;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 stor20;
uint8 stor21;
uint8 stor21; offset 8
uint8 stor21; offset 16
uint8 stor21; offset 32
uint8 stor21; offset 40
uint16 stor21;
uint32 stor21;
address sub_d8c61c0fAddress; offset 48
uint256 stor21; offset 48
uint256 stor21; offset 24
uint256 stor21;
uint8 stor22; offset 160
address stor22;
uint256 profitPerShare;
uint256 totalStakingReward;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
mapping of uint256 stor28;
mapping of uint256 stor29;
uint256 totalLPBNB;
uint8 stor31;
uint8 sellLockDisabled; offset 8
uint256 stor31; offset 8
uint256 sellLockTime;
uint8 buyLockDisabled;
uint256 buyLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
address stor35; offset 16
uint256 stor36;

function sub_07086909(?) {
    return sub_07086909Address
}

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

function walletTwo() {
    return walletTwoAddress
}

function buyLockDisabled() {
    return bool(buyLockDisabled)
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

function TeamWallet() {
    return teamWalletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isExcludedFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
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

function totalLPBNB() {
    return totalLPBNB
}

function owner() {
    return owner
}

function sub_a54fe533(?) {
    return sub_a54fe533
}

function sub_d8c61c0f(?) {
    return sub_d8c61c0fAddress
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
    if 10^12 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 10^12 / 10^9)
}

function SetupEnableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingEnabled = 1
}

function AddressResetBuyLock() {
    if block.timestamp > !buyLockTime:
        revert with 0, 17
    stor6[msg.sender] = block.timestamp + buyLockTime
}

function AddressResetSellLock() {
    if block.timestamp > !sellLockTime:
        revert with 0, 17
    stor5[msg.sender] = block.timestamp + sellLockTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_86bb4f79(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a54fe533 = arg1
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor36:
        return 0
    if stor36 < block.timestamp:
        revert with 0, 17
    return (stor36 - block.timestamp)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35 = arg1
}

function TeamChangeWalletTwo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    walletTwoAddress = arg1
}

function TeamChangeTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function TeamDisableBuyLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyLockDisabled = uint8(arg1)
}

function sub_1734ab70(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07086909Address = address(arg1)
}

function getTaxes() {
    return uint8(stor21.field_0), 
           uint8(stor21.field_0),
           uint8(stor21.field_0),
           uint8(stor21.field_0),
           uint8(stor21.field_8),
           uint8(stor21.field_0)
}

function TeamSwitchManualBNBConversion(bool arg1) {
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
    Mask(248, 0, stor31.field_8) = Mask(248, 0, arg1)
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 100
    marketingShare = arg1
}

function TeamSetBuyLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        revert with 0, 'Buy Lock time too high'
    buyLockTime = arg1
}

function TeamChangeAntiWhale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor20 = 10^9 * arg1
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
    if stor6[address(arg1)] <= block.timestamp:
        return 0
    if stor6[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor6[address(arg1)] - block.timestamp)
}

function getAddressSellLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)] <= block.timestamp:
        return 0
    if stor5[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor5[address(arg1)] - block.timestamp)
}

function TeamUnlockLiquidityInSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor36
    stor36 = arg1 + block.timestamp
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
    if not stor8[address(arg1)]:
        stor7.length++
        stor7[stor7.length].field_0 = arg1
        stor7[stor7.length].field_160 = 0
        stor8[address(arg1)] = stor7.length
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

function TeamRemoveRemainingBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor36:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -1801:
        revert with 0, 17
    stor36 = block.timestamp + 1800
    call teamWalletAddress with:
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
    if 10^9 * arg2 < totalSupply / 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newSellLimit needs to be at least target'
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function TeamReleaseLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor36:
        revert with 0, 'Not yet unlocked'
    staticcall stor35.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor35.0xa9059cbb with:
         gas gas_remaining wei
        args teamWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function TeamWithdrawALLMarketingBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingBalance = 0
    if marketingBalance > 0x333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    call teamWalletAddress with:
       value 80 * marketingBalance / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if marketingBalance > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
        revert with 0, 17
    call walletTwoAddress with:
       value 20 * marketingBalance / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDividents(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14[address(arg1)]:
        return stor29[address(arg1)]
    if profitPerShare and balanceOf[address(arg1)] > -1 / profitPerShare:
        revert with 0, 17
    if profitPerShare * balanceOf[address(arg1)] < stor28[address(arg1)]:
        if 0 > !stor29[address(arg1)]:
            revert with 0, 17
        return stor29[address(arg1)]
    if profitPerShare * balanceOf[address(arg1)] < stor28[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor28[address(arg1)]) >> 64 > !stor29[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor28[address(arg1)]) >> 64) + stor29[address(arg1)])
}

function TeamWithdrawXMarketingBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= marketingBalance
    if marketingBalance < arg1:
        revert with 0, 17
    marketingBalance -= arg1
    if arg1 > 0x333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    call teamWalletAddress with:
       value 80 * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
        revert with 0, 17
    call walletTwoAddress with:
       value 20 * arg1 / 100 wei
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
    uint8(stor21.field_0) = arg4
    uint16(stor21.field_0) = uint16(Mask(216, 40, uint256(stor21.field_0)) or stor21.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416)
    uint8(stor21.field_8) = arg5
    uint8(stor21.field_16) = arg6
    Mask(232, 0, stor21.field_24) = Mask(232, 24, Mask(216, 40, uint256(stor21.field_0)) or stor21.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416) >> 24
    uint8(stor21.field_40) = arg3
    Mask(208, 0, stor21.field_48) = 0
}

function TeamRemoveLiquidity(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor36:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -1801:
        revert with 0, 17
    stor36 = block.timestamp + 1800
    staticcall stor35.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor35.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor22.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(stor22.field_0).removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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

function TeamCreateLPandBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor31.field_0) = 1
    if uint8(stor21.field_32) > -uint8(stor21.field_40) + 255:
        revert with 0, 17
    if sub_a54fe533 and 10^9 > -1 / sub_a54fe533:
        revert with 0, 17
    if balanceOf[this.address] >= 10^9 * sub_a54fe533:
        if uint8(uint8(stor21.field_40) + uint8(stor21.field_32)):
            if 10^9 * sub_a54fe533 and uint8(stor21.field_32) > -1 / 10^9 * sub_a54fe533:
                revert with 0, 17
            if not uint8(uint8(stor21.field_40) + uint8(stor21.field_32)):
                revert with 0, 18
            if 10^9 * sub_a54fe533 < 10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)):
                revert with 0, 17
            if 10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) < 10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2:
                revert with 0, 17
            if (10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32))) - (10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) > !((10^9 * sub_a54fe533) - (10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)))):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor22.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor22.field_0)].field_0 = -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533)
            emit Approval((-(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533)), this.address, address(stor22.field_0));
            mem[128] = this.address
            staticcall address(stor22.field_0).WAVAX() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533)
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32))) - (10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) > 0:
                revert with 0, 17
            if not -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533):
                revert with 0, 18
            if totalLPBNB > !(0 / -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533)):
                revert with 0, 17
            totalLPBNB += 0 / -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533)
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor22.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor22.field_0)].field_0 = 10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2
            allowance[address(this.address)][address(stor22.field_0)].field_255 = 0
            emit Approval((10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2), this.address, address(stor22.field_0));
            call address(stor22.field_0).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32)) / 2) + (10^9 * sub_a54fe533) wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, 10^9 * sub_a54fe533 * uint8(stor21.field_32) / uint8(uint8(stor21.field_40) + uint8(stor21.field_32))), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and marketingShare > 0:
                revert with 0, 17
            if marketingBalance > -1:
                revert with 0, 17
    uint8(stor31.field_0) = 0
}

function XRPWithdraw() {
    require not uint8(stor22.field_160)
    uint8(stor22.field_160) = 1
    if stor14[address(msg.sender)]:
        stor29[address(msg.sender)] = 0
        if stor29[address(msg.sender)]:
            if totalPayouts > !stor29[address(msg.sender)]:
                revert with 0, 17
            totalPayouts += stor29[address(msg.sender)]
            staticcall address(stor22.field_0).WAVAX() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = sub_07086909Address
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
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value stor29[address(msg.sender)] wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit OnWithdrawXRP(stor29[address(msg.sender)], msg.sender);
    else:
        if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
            revert with 0, 17
        if profitPerShare * balanceOf[address(msg.sender)] < stor28[address(msg.sender)]:
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor28[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor29[address(msg.sender)] > -1:
                revert with 0, 17
            stor29[address(msg.sender)] = 0
            if stor29[address(msg.sender)]:
                if totalPayouts > !stor29[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor29[address(msg.sender)]
                staticcall address(stor22.field_0).WAVAX() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = sub_07086909Address
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
                require ext_code.size(address(stor22.field_0))
                call address(stor22.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor29[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawXRP(stor29[address(msg.sender)], msg.sender);
        else:
            if profitPerShare * balanceOf[address(msg.sender)] < stor28[address(msg.sender)]:
                revert with 0, 17
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor28[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor29[address(msg.sender)] > !(Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64):
                revert with 0, 17
            stor29[address(msg.sender)] = 0
            if stor29[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64):
                if totalPayouts > !(stor29[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64)):
                    revert with 0, 17
                totalPayouts = totalPayouts + stor29[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64)
                staticcall address(stor22.field_0).WAVAX() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = sub_07086909Address
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
                require ext_code.size(address(stor22.field_0))
                call address(stor22.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor29[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64) wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawXRP(stor29[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor28[address(msg.sender)]) >> 64), msg.sender);
    uint8(stor22.field_160) = 0
}



}
