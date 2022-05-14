contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address sub_59a05f89Address;
address sub_72f0a2e5Address;
address sub_726f3d17Address;
address dexRouterAddress;
address sub_f242ab41Address;
address presaleWalletAddress;
bool stor12; offset 256
uint8 stor12; offset 168
uint8 stor12; offset 176
uint128 stor12; offset 184
address presaleRouterAddress;
uint256 stor13;
address liquidityWalletAddress;
address marketingWalletAddress;
address deadWalletAddress;
uint256 sub_943913c1;
uint256 swapTokensAtAmount;
uint256 rewardsFee;
uint256 liquidityFee;
uint256 totalFees;
uint256 sub_820b581a;
uint256 sellFeeIncreaseFactor;
uint256 gasForProcessing;
mapping of uint8 stor26;
mapping of uint8 stor27;
mapping of uint8 stor28;

function name() {
    return name[0 len name.length]
}

function dexRouter() {
    return dexRouterAddress
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function presaleWallet() {
    return presaleWalletAddress
}

function sellFeeIncreaseFactor() {
    return sellFeeIncreaseFactor
}

function rewardsFee() {
    return rewardsFee
}

function presaleRouter() {
    return presaleRouterAddress
}

function sub_59a05f89(?) {
    return sub_59a05f89Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_726f3d17(?) {
    return sub_726f3d17Address
}

function sub_72f0a2e5(?) {
    return sub_72f0a2e5Address
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_820b581a(?) {
    return sub_820b581a
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function sub_943913c1(?) {
    return sub_943913c1
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function gasForProcessing() {
    return gasForProcessing
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor28[arg1])
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function sub_f242ab41(?) {
    return sub_f242ab41Address
}

function _fallback() payable {
    revert
}

function sub_29408024(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor13 = arg1
}

function offBeginning() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor12.field_168) = 0
    uint8(stor12.field_176) = 1
}

function setPresaleOver() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(stor12.field_176):
        revert with 0, '04'
    uint8(stor12.field_168) = 1
    uint8(stor12.field_176) = 1
    Mask(72, 0, stor12.field_184) = 0
    stor12.field_256 % 1 = 0
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 == bool(stor26[address(arg1)]):
        revert with 0, '01'
    stor26[address(arg1)] = uint8(arg2)
    stor27[address(arg1)] = uint8(arg2)
}

function claim() {
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2608a7d5(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    rewardsFee = arg1
    liquidityFee = arg2
    if arg1 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + arg2
    sellFeeIncreaseFactor = arg3
}

function getTotalRewardsDistributed() {
    require ext_code.size(sub_59a05f89Address)
    staticcall sub_59a05f89Address.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < 200000:
        revert with 0, '06'
    if arg1 > 10^6:
        revert with 0, '06'
    if arg1 == gasForProcessing:
        revert with 0, '01'
    gasForProcessing = arg1
}

function processRewardsTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_21bb7f5d(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.0x20ed4506 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function seeOffset(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_59a05f89Address)
    staticcall sub_59a05f89Address.viewOffset(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_33199d6a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_726f3d17Address)
    call sub_726f3d17Address.withdrawToMarketing(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_72f0a2e5Address)
    call sub_72f0a2e5Address.buyOrder(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyBackChange(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_72f0a2e5Address)
    call sub_72f0a2e5Address.changeAddy(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkRewardTokenShares(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_59a05f89Address)
    staticcall sub_59a05f89Address.checkShares(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function seeUserCustomToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_59a05f89Address)
    staticcall sub_59a05f89Address.viewUserCustomToken(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeMinimumBalanceToReceiveRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.setMinimumBalanceToReceiveDividends(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_461eb8a7(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.0xec963fbd with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff6abba4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_726f3d17Address)
    call sub_726f3d17Address.adder(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resetUserCustomToken(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73596f752063616e206f6e6c7920636c65617220637573746f6d20746f6b656e7320666f7220796f757273656c66,
                    mem[210 len 18]
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.clearUserCustomToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAccountRewardsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_59a05f89Address)
    staticcall sub_59a05f89Address.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeUserCustomToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x65596f752063616e206f6e6c792073657420637573746f6d20746f6b656e7320666f7220796f757273656c66,
                    mem[208 len 20]
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.updateUserCustomToken(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_bebe37ad(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[196 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 196] = 0
    mem[floor32(arg1.length) + 196] = arg2.length
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.0xdb8559eb with:
         gas gas_remaining wei
        args 0, 64, floor32(arg1.length) + 96, arg1.length, mem[196 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPresaleWalletandRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(stor12.field_176):
        revert with 0, '04'
    if not arg1:
        revert with 0, '05'
    if not arg2:
        revert with 0, '05'
    presaleWalletAddress = arg1
    presaleRouterAddress = arg2
    stor27[address(arg1)] = 1
    stor26[address(arg1)] = 1
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_59a05f89Address)
    call sub_59a05f89Address.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor27[address(arg2)] = 1
    stor26[address(stor12.field_0)] = 1
}



}
