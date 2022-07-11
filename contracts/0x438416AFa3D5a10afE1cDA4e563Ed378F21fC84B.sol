contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address joePairAddress;
address sub_527509f3Address;
address teamPoolAddress;
address rewardsPoolAddress;
address sub_ad5ec617Address;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 sub_bc32f4a3;
uint16 maxTransferAmountRate;
uint16 maxBalanceAmountRate; offset 16
uint256 swapTokensAmount;
uint256 totalClaimed;
uint8 isTradingEnabled;
uint8 sub_fabc4035; offset 8
address stor27;
address joeRouterAddress; offset 16
uint256 stor27; offset 8
address stor28;
uint256 stor29;
uint8 stor30;
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint8 stor33;
mapping of uint8 stor34;
mapping of uint8 stor35;
uint256 sub_e8a49293;
uint256 sub_78df908c;
uint256 sub_32f3e7d1;
uint256 sub_eb8174f2;
uint256 sub_a0095b93;
uint256 sub_da8c4051;
uint256 sub_cabd3e25;
uint256 sub_d7441d0e;
uint256 sub_ed590c9a;
uint256 sub_7e0b1742;
uint256 refPercent;
uint256 teamPercent;
uint256 sub_e4d062e6;
uint256 sub_a9b981a3;
address presaleAddress;
uint8 sub_992800e1; offset 160
uint128 stor51; offset 160
address airdropAddress;
uint256 sub_6d2de930;
array of address sub_04c13834;
mapping of struct sub_a4786f3d;
mapping of uint8 stor55;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160973;

function rewardsPool() {
    return rewardsPoolAddress
}

function sub_04c13834(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_04c13834.length
    return sub_04c13834[arg1]
}

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor33[address(arg1)])
}

function sub_32f3e7d1(?) {
    return sub_32f3e7d1
}

function airdrop() {
    return airdropAddress
}

function teamPool() {
    return teamPoolAddress
}

function totalShares() {
    return totalShares
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function sub_4b0a957b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor55[arg1])
}

function maxBalanceAmountRate() {
    return maxBalanceAmountRate
}

function sub_527509f3(?) {
    return sub_527509f3Address
}

function refPercent() {
    return refPercent
}

function joeRouter() {
    return joeRouterAddress
}

function swapTokensAmount() {
    return swapTokensAmount
}

function joePair() {
    return joePairAddress
}

function sub_6d2de930(?) {
    return sub_6d2de930
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_78df908c(?) {
    return sub_78df908c
}

function sub_7e0b1742(?) {
    return sub_7e0b1742
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_992800e1(?) {
    return bool(sub_992800e1)
}

function sub_a0095b93(?) {
    return sub_a0095b93
}

function sub_a4786f3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a4786f3d[arg1].field_0, sub_a4786f3d[arg1].field_256
}

function sub_a9b981a3(?) {
    return sub_a9b981a3
}

function sub_ad5ec617(?) {
    return sub_ad5ec617Address
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function sub_bc32f4a3(?) {
    return sub_bc32f4a3
}

function sub_cabd3e25(?) {
    return sub_cabd3e25
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalClaimed() {
    return totalClaimed
}

function sub_d7441d0e(?) {
    return sub_d7441d0e
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function sub_da8c4051(?) {
    return sub_da8c4051
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function teamPercent() {
    return teamPercent
}

function totalReleased() {
    return totalReleased
}

function sub_e4d062e6(?) {
    return sub_e4d062e6
}

function sub_e8a49293(?) {
    return sub_e8a49293
}

function sub_eb8174f2(?) {
    return sub_eb8174f2
}

function sub_ed590c9a(?) {
    return sub_ed590c9a
}

function sub_fabc4035(?) {
    return bool(sub_fabc4035)
}

function presale() {
    return presaleAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function sub_0fabba2d(?) {
    require calldata.size - 4 >= 32
    if arg1 > sub_cabd3e25:
        return sub_eb8174f2
    return sub_32f3e7d1
}

function sub_6f4f5a11(?) {
    require calldata.size - 4 >= 32
    if arg1 > sub_d7441d0e:
        return sub_da8c4051
    return sub_a0095b93
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_35fdc788(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bc32f4a3 = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function sub_78c58d5f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a9b981a3 = arg1
    sub_e4d062e6 = arg2
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function updatePresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleAddress = arg1
}

function updateAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAddress = arg1
}

function sub_61329040(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35[address(arg1)] = 1
}

function sub_8fd0eaca(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor51 = Mask(96, 0, bool(arg1))
}

function sub_2ae883fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isTradingEnabled = uint8(bool(arg1))
}

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor27.field_8) = Mask(248, 0, bool(arg1))
}

function sub_6eacab12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamPoolAddress = address(arg1)
    stor34[address(arg1)] = 1
}

function sub_6653a340(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = address(arg1)
    stor34[address(arg1)] = 1
}

function sub_948279a5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ad5ec617Address = address(arg1)
    stor34[address(arg1)] = 1
}

function sub_01197225(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34[address(arg1)] = uint8(bool(arg2))
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31[address(arg1)] = uint8(arg2)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor33[address(arg1)] = uint8(arg2)
}

function updateTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = arg1
    if stor18 > !stor19:
        revert with 0, 17
    if stor18 + stor19 > !arg1:
        revert with 0, 17
    stor22 = stor18 + stor19 + arg1
}

function sub_fbae1dd2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if presaleAddress != msg.sender:
            if airdropAddress != msg.sender:
                revert with 0, 'NOT_GUARD'
    sub_04c13834.length++
    storCFA4[stor53.length] = address(arg1)
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
    if arg1 > !stor19:
        revert with 0, 17
    if arg1 + stor19 > !stor20:
        revert with 0, 17
    stor22 = arg1 + stor19 + stor20
}

function updateLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
    if stor18 > !arg1:
        revert with 0, 17
    if stor18 + arg1 > !stor20:
        revert with 0, 17
    stor22 = stor18 + arg1 + stor20
}

function maxBalanceAmount() {
    if totalSupply < balanceOf[stor16]:
        revert with 0, 17
    if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
        revert with 0, 17
    return ((totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000)
}

function maxTransferAmount() {
    if totalSupply < balanceOf[stor16]:
        revert with 0, 17
    if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
        revert with 0, 17
    return ((totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joePairAddress == arg1:
        revert with 0, 'TKN:2'
    if arg2 == bool(stor32[address(arg1)]):
        revert with 0, 'TKN:3'
    stor32[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function updatemaxBalanceAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    if arg1 < 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must  exceed the minimum rate.'
    emit 0x48a8b3c1: maxTransferAmountRate, arg1, msg.sender
    maxBalanceAmountRate = arg1
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    if arg1 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updateMaxTransferAmountRate: Max transfer amount rate must exceed the minimum rate.'
    emit MaxTransferAmountRateUpdated(maxTransferAmountRate, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function sub_bb95228b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not joeRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(stor27.field_0)].field_0 = arg1
    emit Approval(arg1, this.address, joeRouterAddress);
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, uint32(this.address), arg1, 0, 0, rewardsPoolAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_e159b3ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joeRouterAddress == address(arg1):
        revert with 0, 'TKN:1'
    emit 0xb172ff8d: address(arg1), joeRouterAddress
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joePairAddress = ext_call.return_data[12 len 20]
    sub_527509f3Address = address(arg1)
    stor34[address(arg1)] = 1
    stor34[stor13] = 1
}

function sub_92012e3f(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_32f3e7d1 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_eb8174f2 = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_a0095b93 = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    sub_da8c4051 = mem[224]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    sub_ed590c9a = mem[ceil32(32 * ('cd', 4).length) + 129]
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    sub_7e0b1742 = mem[ceil32(32 * ('cd', 4).length) + 161]
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    refPercent = mem[ceil32(32 * ('cd', 4).length) + 193]
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    teamPercent = mem[ceil32(32 * ('cd', 4).length) + 225]
    if block.timestamp > !cd[68]:
        revert with 0, 17
    sub_cabd3e25 = block.timestamp + cd[68]
    if block.timestamp > !cd[100]:
        revert with 0, 17
    sub_d7441d0e = block.timestamp + cd[100]
}

function migrate(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _42 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _44 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and 10^18 > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(10^18 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129]):
            revert with 0, 17
        totalSupply += 10^18 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        if balanceOf[mem[(32 * idx) + 140 len 20]] > !(10^18 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129]):
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 140 len 20]] += 10^18 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 10^18 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        emit Transfer((10^18 * _44), 0, address(_42));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'CASHOUT:1'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor28)
    staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:4'
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor16] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor16] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
        require ext_code.size(stor28)
        call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalClaimed > !ext_call.return_data[0]:
            revert with 0, 17
        totalClaimed += ext_call.return_data[0]
        emit Cashout(ext_call.return_data[0], msg.sender, arg1);
    else:
        if not stor21:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], msg.sender, arg1);
        else:
            if ext_call.return_data[0] and stor21 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0] * stor21 / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0] * stor21 / 100
            if balanceOf[this.address] > !(ext_call.return_data[0] * stor21 / 100):
                revert with 0, 17
            balanceOf[this.address] += ext_call.return_data[0] * stor21 / 100
            emit Transfer((ext_call.return_data[0] * stor21 / 100), rewardsPoolAddress, this.address);
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not joeRouterAddress:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * stor21 / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * stor21 / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, joeRouterAddress);
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * stor21 / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor21 / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor21 / 100:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * stor21 / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)), rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)
            emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)), msg.sender, arg1);
}

function cashoutAll() {
    if not msg.sender:
        revert with 0, 'CASHOUT:5'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    mem[100] = msg.sender
    require ext_code.size(stor28)
    staticcall stor28.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:8'
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor16] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor16] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
        require ext_code.size(stor28)
        call stor28.cashoutAllNodesRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalClaimed > !ext_call.return_data[0]:
            revert with 0, 17
        totalClaimed += ext_call.return_data[0]
        emit Cashout(ext_call.return_data[0], msg.sender, 0);
    else:
        if not stor21:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], msg.sender, 0);
        else:
            if ext_call.return_data[0] and stor21 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0] * stor21 / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0] * stor21 / 100
            if balanceOf[this.address] > !(ext_call.return_data[0] * stor21 / 100):
                revert with 0, 17
            balanceOf[this.address] += ext_call.return_data[0] * stor21 / 100
            emit Transfer((ext_call.return_data[0] * stor21 / 100), rewardsPoolAddress, this.address);
            if ext_call.return_data[0] * stor21 / 100 and sub_a9b981a3 > -1 / ext_call.return_data[0] * stor21 / 100:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not joeRouterAddress:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * stor21 / 100 * sub_a9b981a3 / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * stor21 / 100 * sub_a9b981a3 / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, joeRouterAddress);
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * stor21 / 100 * sub_a9b981a3 / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor21 / 100 * sub_a9b981a3 / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] * stor21 / 100 and sub_e4d062e6 > -1 / ext_call.return_data[0] * stor21 / 100:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 192] = 2
            mem[(2 * ceil32(return_data.size)) + 224] = this.address
            require ext_code.size(joeRouterAddress)
            staticcall joeRouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not joeRouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * stor21 / 100 * sub_e4d062e6 / 100
            emit Approval((ext_call.return_data[0] * stor21 / 100 * sub_e4d062e6 / 100), this.address, joeRouterAddress);
            mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * stor21 / 100 * sub_e4d062e6 / 100
            mem[(4 * ceil32(return_data.size)) + 324] = 0
            mem[(4 * ceil32(return_data.size)) + 356] = 160
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 484
            t = (2 * ceil32(return_data.size)) + 224
            while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 388] = this.address
            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor21 / 100 * sub_e4d062e6 / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call teamPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor21 / 100:
                revert with 0, 17
            if not rewardsPoolAddress:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 37
                mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + 388] = 0x6472657373000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (5 * ceil32(return_data.size)) + 132
            if not msg.sender:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 35
                mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + 388] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (5 * ceil32(return_data.size)) + 132
            if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100):
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 38
                mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer amount exceeds b'
                mem[(4 * ceil32(return_data.size)) + 388] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (5 * ceil32(return_data.size)) + 132
            balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * stor21 / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)), rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)
            emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor21 / 100)), msg.sender, 0);
}

function sub_5c69cb5d(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'COMP:1'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor28)
    staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'COMP:3'
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor16] < ext_call.return_data[0]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor16] -= ext_call.return_data[0]
    if balanceOf[this.address] > !ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[this.address] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 17
    if sub_fabc4035:
        if not stor30:
            if owner != msg.sender:
                if not stor32[address(msg.sender)]:
                    stor30 = 1
                    if 0 and stor20 > -1 / 0:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    if not this.address:
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 36
                        mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 192
                           len ceil32(return_data.size) + 132
                    if not joeRouterAddress:
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 34
                        mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                        mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 192
                           len ceil32(return_data.size) + 132
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100
                    mem[(2 * ceil32(return_data.size)) + 192] = (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100
                    emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, joeRouterAddress);
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = ceil32(return_data.size) + 128
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call teamPoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 and stor18 > -1 / 0:
                        revert with 0, 17
                    if (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 and stor29 > -1 / (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 192] = 2
                    mem[(2 * ceil32(return_data.size)) + 224] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100
                    emit Approval(((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100), this.address, joeRouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100
                    mem[(4 * ceil32(return_data.size)) + 324] = 0
                    mem[(4 * ceil32(return_data.size)) + 356] = 160
                    mem[(4 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 484
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 388] = this.address
                    mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call rewardsPoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 < (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100:
                        revert with 0, 17
                    if not this.address:
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = 32
                        mem[(4 * ceil32(return_data.size)) + 324] = 37
                        mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                        mem[(4 * ceil32(return_data.size)) + 388] = 0x6472657373000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 288
                           len (5 * ceil32(return_data.size)) + 132
                    if not rewardsPoolAddress:
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = 32
                        mem[(4 * ceil32(return_data.size)) + 324] = 35
                        mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                        mem[(4 * ceil32(return_data.size)) + 388] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 288
                           len (5 * ceil32(return_data.size)) + 132
                    if balanceOf[address(this.address)] < ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100):
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = 32
                        mem[(4 * ceil32(return_data.size)) + 324] = 38
                        mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer amount exceeds b'
                        mem[(4 * ceil32(return_data.size)) + 388] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 288
                           len (5 * ceil32(return_data.size)) + 132
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) + ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)
                    if balanceOf[stor16] > !(((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)):
                        revert with 0, 17
                    balanceOf[stor16] = balanceOf[stor16] + ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)
                    emit Transfer((((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                    if 0 and stor19 > -1 / 0:
                        revert with 0, 17
                    if (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 < (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 288] = 2
                    mem[(4 * ceil32(return_data.size)) + 320] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2
                    allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                    emit Approval(((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2), this.address, joeRouterAddress);
                    mem[(6 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 388] = (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2
                    mem[(6 * ceil32(return_data.size)) + 548] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 580
                    t = (4 * ceil32(return_data.size)) + 320
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 516] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)
                    emit Approval((((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)), this.address, joeRouterAddress);
                    mem[(6 * ceil32(return_data.size)) + 452] = 0
                    mem[(6 * ceil32(return_data.size)) + 484] = 0
                    mem[(6 * ceil32(return_data.size)) + 516] = rewardsPoolAddress
                    mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[(6 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                    mem[(6 * ceil32(return_data.size)) + 384 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(8 * ceil32(return_data.size)) + 384] = (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2
                    mem[(8 * ceil32(return_data.size)) + 416] = 0
                    mem[(8 * ceil32(return_data.size)) + 448] = ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)
                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                        mem[(8 * ceil32(return_data.size)) + 384 len (13 * ceil32(return_data.size)) + 96],
                    mem[(8 * ceil32(return_data.size)) + 384] = 2
                    mem[(8 * ceil32(return_data.size)) + 416] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 1)
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[this.address]
                    emit Approval(balanceOf[this.address], this.address, joeRouterAddress);
                    mem[(10 * ceil32(return_data.size)) + 480] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 484] = balanceOf[this.address]
                    mem[(10 * ceil32(return_data.size)) + 516] = 0
                    mem[(10 * ceil32(return_data.size)) + 548] = 160
                    mem[(10 * ceil32(return_data.size)) + 644] = 2
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 676
                    t = (8 * ceil32(return_data.size)) + 416
                    while idx < mem[(8 * ceil32(return_data.size)) + 384]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + 580] = this.address
                    mem[(10 * ceil32(return_data.size)) + 612] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + 384]) + -mem[64] + 672]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor30 = 0
    require ext_code.size(stor28)
    call stor28.0xcbd14993 with:
         gas gas_remaining wei
        args msg.sender, arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Compound(ext_call.return_data[0], msg.sender, arg1);
}

function createNodeWithTokens(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require not sub_992800e1
    if arg2 < sub_bc32f4a3:
        revert with 0, 'NC: Not enough SMN tokens'
    if arg1.length <= 3:
        revert with 0, 'NC:Invalid Name'
    if arg1.length >= 32:
        revert with 0, 'NC:Invalid Name'
    if not msg.sender:
        revert with 0, 'NC:Wrong address'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NC:Insufficient balance'
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[this.address] > !arg2:
        revert with 0, 17
    balanceOf[this.address] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 17
    if not sub_fabc4035:
        require ext_code.size(stor28)
        call stor28.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    else:
        if stor30:
            require ext_code.size(stor28)
            call stor28.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
        else:
            if owner == msg.sender:
                require ext_code.size(stor28)
                call stor28.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
            else:
                if stor32[address(msg.sender)]:
                    require ext_code.size(stor28)
                    call stor28.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                else:
                    stor30 = 1
                    if 0 and stor20 > -1 / 0:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = 2
                    mem[ceil32(ceil32(arg1.length)) + 129] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + 193] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + 161] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100
                    emit Approval(((balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100), this.address, joeRouterAddress);
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 197] = (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 357] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 389
                    t = ceil32(ceil32(arg1.length)) + 129
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 325] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (balanceOf[this.address] * stor20) - (balanceOf[this.address] * stor20) / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 389 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call teamPoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 and stor18 > -1 / 0:
                        revert with 0, 17
                    if (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 and stor29 > -1 / (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 1)
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100
                    emit Approval(((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100), this.address, joeRouterAddress);
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 160
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485
                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225
                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]) + -mem[64] + 481]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call rewardsPoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 < (balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(this.address)] < ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 0
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) + ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)
                    mem[0] = rewardsPoolAddress
                    if balanceOf[stor16] > !(((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)):
                        revert with 0, 17
                    balanceOf[stor16] = balanceOf[stor16] + ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)
                    emit Transfer((((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100) - ((balanceOf[this.address] * stor18) - (balanceOf[this.address] * stor18) / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                    if 0 and stor19 > -1 / 0:
                        revert with 0, 17
                    if (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 < (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2:
                        revert with 0, 17
                    _292 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_292 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_292]:
                        revert with 0, 50
                    mem[_292 + 32] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[_292 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _292 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_292]:
                        revert with 0, 50
                    mem[_292 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 1)
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2
                    allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                    emit Approval(((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2), this.address, joeRouterAddress);
                    mem[_292 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_292 + ceil32(return_data.size) + 100] = (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2
                    mem[_292 + ceil32(return_data.size) + 132] = 0
                    mem[_292 + ceil32(return_data.size) + 164] = 160
                    mem[_292 + ceil32(return_data.size) + 260] = mem[_292]
                    idx = 0
                    s = _292 + ceil32(return_data.size) + 292
                    t = _292 + 32
                    while idx < mem[_292]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100), 0, 160, address(this.address), block.timestamp, mem[_292 + ceil32(return_data.size) + 260 len (32 * mem[_292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor27.field_0)].field_0 = ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)
                    emit Approval((((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)), this.address, joeRouterAddress);
                    mem[_292 + ceil32(return_data.size) + 164] = 0
                    mem[_292 + ceil32(return_data.size) + 196] = 0
                    mem[_292 + ceil32(return_data.size) + 228] = rewardsPoolAddress
                    mem[_292 + ceil32(return_data.size) + 260] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                    mem[_292 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_292 + (2 * ceil32(return_data.size)) + 160] = ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2)
                    emit SwapAndLiquify(Mask(255, 1, (balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100), 0, ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100) - ((balanceOf[this.address] * stor19) - (balanceOf[this.address] * stor19) / 100 / 2));
                    if not balanceOf[this.address]:
                        stor30 = 0
                        mem[_292 + (2 * ceil32(return_data.size)) + 96] = 0x9021973200000000000000000000000000000000000000000000000000000000
                        mem[_292 + (2 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[_292 + (2 * ceil32(return_data.size)) + 132] = 96
                        mem[_292 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                        mem[_292 + (2 * ceil32(return_data.size)) + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _292 + (2 * ceil32(return_data.size)) + 228] = 0
                        require ext_code.size(stor28)
                        call stor28.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=mem[96], data=mem[_292 + (2 * ceil32(return_data.size)) + 228 len ceil32(mem[96])]), arg2
                    else:
                        mem[_292 + (2 * ceil32(return_data.size)) + 96] = 2
                        mem[_292 + (2 * ceil32(return_data.size)) + 128] = this.address
                        require ext_code.size(joeRouterAddress)
                        staticcall joeRouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[_292 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _292 + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_292 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not joeRouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = joeRouterAddress
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[this.address]
                        emit Approval(balanceOf[this.address], this.address, joeRouterAddress);
                        mem[_292 + (4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_292 + (4 * ceil32(return_data.size)) + 196] = balanceOf[this.address]
                        mem[_292 + (4 * ceil32(return_data.size)) + 228] = 0
                        mem[_292 + (4 * ceil32(return_data.size)) + 260] = 160
                        mem[_292 + (4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = _292 + (4 * ceil32(return_data.size)) + 388
                        t = _292 + (2 * ceil32(return_data.size)) + 128
                        while idx < mem[_292 + (2 * ceil32(return_data.size)) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_292 + (4 * ceil32(return_data.size)) + 292] = this.address
                        mem[_292 + (4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(joeRouterAddress)
                        call joeRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _292 + (4 * ceil32(return_data.size)) + (32 * mem[_292 + (2 * ceil32(return_data.size)) + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor30 = 0
                        _428 = mem[64]
                        mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 100] = mem[96]
                        mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            require ext_code.size(stor28)
                            call stor28.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
                        else:
                            mem[mem[96] + mem[64] + 132] = 0
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(stor28)
                            call stor28.0x90219732 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[96]) + _428 + -mem[64] + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor55[address(msg.sender)]:
        stor55[address(msg.sender)] = 1
        sub_04c13834.length++
        storCFA4[stor53.length] = msg.sender
}



}
