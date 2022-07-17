contract main {




// =====================  Runtime code  =====================


#
#  - sub_2096879b(?)
#
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address nodeRewardManagerAddress;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
address sub_b18d9840Address;
address tokenAddress;
address deadWalletAddress;
address sub_b12cbc76Address;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor23;
uint8 stor24;
uint8 stor24; offset 8
uint256 stor24; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor26;
mapping of uint8 stor27;
mapping of uint256 sub_c7e17a17;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function cashoutFee() {
    return cashoutFee
}

function nodeRewardManager() {
    return nodeRewardManagerAddress
}

function deadWallet() {
    return deadWalletAddress
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

function futurUsePool() {
    return futurUsePoolAddress
}

function futurFee() {
    return futurFee
}

function sub_b12cbc76(?) {
    return sub_b12cbc76Address
}

function sub_b18d9840(?) {
    return sub_b18d9840Address
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
}

function distributionPool() {
    return distributionPoolAddress
}

function sub_c7e17a17(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c7e17a17[arg1]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function updateFuturWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurUsePoolAddress = arg1
}

function sub_913a0aa6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b18d9840Address = address(arg1)
}

function sub_92662bc7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b12cbc76Address = address(arg1)
}

function updateRewardsWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function setNodeManagement(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeRewardManagerAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor24.field_8) = Mask(248, 0, arg1)
}

function publiDistriRewards() {
    call nodeRewardManagerAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = uint8(arg2)
}

function getNodePrice() {
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimTime() {
    staticcall nodeRewardManagerAddress.claimTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardPerNode() {
    staticcall nodeRewardManagerAddress.rewardPerNode() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasDistri() {
    staticcall nodeRewardManagerAddress.gasForDistribution() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    staticcall nodeRewardManagerAddress.lastDistributionCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalStakedReward() {
    staticcall nodeRewardManagerAddress.totalRewardStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    staticcall nodeRewardManagerAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getReferralBonus() {
    staticcall nodeRewardManagerAddress.0xb8c7a1a2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAutoDistri() {
    staticcall nodeRewardManagerAddress.autoDistri() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c8a22eb4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall nodeRewardManagerAddress.0x139fae2c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function distributeRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call nodeRewardManagerAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function changeGasDistri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeGasDistri(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeNodePrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeClaimTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeClaimTime(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setReferralBonusPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.setReferralBonus(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeRewardPerNode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeRewardPerNode(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeAutoDistri(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeAutoDistri(bool arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5953658b(?) {
    staticcall nodeRewardManagerAddress.0x609d9bbb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require 255 < return_data.size + 224
    if not bool(ceil32(return_data.size) + 352 <= test266151307()):
        revert with 0, 65
    require 128 <= return_data.size
    return ext_call.return_data[0 len 128]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function boostReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + arg1 > !futurFee:
        revert with 0, 17
    if futurFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + arg1 + futurFee
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + liquidityPoolFee > !futurFee:
        revert with 0, 17
    if futurFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityPoolFee + futurFee
}

function updateFuturFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + liquidityPoolFee + arg1
}

function sub_fae8fee0(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor26[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    if stor26[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xe0f2cfd8 with:
         gas gas_remaining wei
        args msg.sender, arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1d94f216(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint32(arg2)
    call nodeRewardManagerAddress.0x2da9622e with:
         gas gas_remaining wei
        args msg.sender, arg2 << 224, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawReferralBonus() {
    call nodeRewardManagerAddress.0xd2b6fc4c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Not enough funds to withdraw'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1 - uniswapV2PairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if not bool(stor27[address(arg1)]) - arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor27[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1 - uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function sub_679cf1a2(?) {
    mem[96] = 0xafed2bc400000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress.0xafed2bc4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getReferrals() {
    mem[96] = 0x41a0894d00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress.getReferrals(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _4 + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor26[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    call nodeRewardManagerAddress._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if uint8(stor24.field_8):
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, sub_b12cbc76Address, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor26[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if uint8(stor24.field_8):
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, sub_b12cbc76Address, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    if not -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)]:
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

function getNodesNames() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall nodeRewardManagerAddress._getNodesNames(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesCreatime() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall nodeRewardManagerAddress._getNodesCreationTime(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesRewards() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x4a389fae00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall nodeRewardManagerAddress._getNodesRewardAvailable(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesLastClaims() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x5759fb0200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall nodeRewardManagerAddress._getNodesLastClaimTime(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
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
    if not -((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) + released[address(arg1)][address(arg2)]:
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

function sub_d013cce0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not msg.sender:
        revert with 0, 'CSHT:  creation from the zero address'
    mem[0] = msg.sender
    mem[32] = 26
    if stor26[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _43 = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, _43
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if s > !mem[_49 + 32]:
            revert with 0, 17
        if t > !mem[_49]:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_49 + 32]
        t = t + mem[_49]
        continue 
    if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor24.field_8):
        _47 = mem[64]
        mem[64] = mem[64] + 64
        mem[_47] = 30
        mem[_47 + 32] = 'SafeMath: subtraction overflow'
        if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length > t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 17
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == bool(mem[_60])
    else:
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = sub_b12cbc76Address
        mem[mem[64] + 68] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, sub_b12cbc76Address, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_52] == bool(mem[_52])
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = 30
        mem[_61 + 32] = 'SafeMath: subtraction overflow'
        if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length > t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 17
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_70] == bool(mem[_70])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x88c41d7c(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xbdf24a53(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9c82751c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x91ca7f3c(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x88c41d7c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            futurFee = cd[4]
                            if rewardsFee > !liquidityPoolFee:
                                revert with 0, 17
                            if rewardsFee + liquidityPoolFee < rewardsFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if rewardsFee + liquidityPoolFee > !cd[4]:
                                revert with 0, 17
                            if cd[4] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees = rewardsFee + liquidityPoolFee + cd[4]
                        else:
                            if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if cd[4] >= payee.length:
                                    revert with 0, 50
                                return payee[cd[4]]
                            if unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor23 = cd[4]
                            else:
                                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return owner
                                require unknown_0x913a0aa6(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_b18d9840Address = address(cd[4])
                    else:
                        if unknown_0x91ca7f3c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            call nodeRewardManagerAddress.0xd2b6fc4c with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Not enough funds to withdraw'
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if unknown_0x92662bc7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_b12cbc76Address = address(cd[4])
                            else:
                                if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require cd[4] == address(cd[4])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    distributionPoolAddress = address(cd[4])
                                else:
                                    if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        require cd[4] == address(cd[4])
                                        return released[address(cd[4])]
                                    require unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 64
                                    require cd[4] == address(cd[4])
                                    require cd[36] == bool(cd[36])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    if not address(cd[4]) - uniswapV2PairAddress:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                                    if not bool(stor27[address(cd[4])]) - bool(cd[36]):
                                        revert with 0, 'TKN: Automated market maker pair is already set to that value'
                                    stor27[address(cd[4])] = uint8(bool(cd[36]))
                                    emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
                if unknown_0xab574761(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurFee
                    if unknown_0xb12cbc76(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b12cbc76Address
                    if unknown_0xb18d9840(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b18d9840Address
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor27[cd[4]])
                    require unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x9c82751c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall nodeRewardManagerAddress.totalNodesCreated() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if uint32(call.func_hash) >> 224 != unknown_0xa2a376cd(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xa5021a17(?????):
                        require unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return futurUsePoolAddress
                    require not msg.value
                    staticcall nodeRewardManagerAddress.nodePrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                mem[128] = 0x41a0894d00000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                staticcall nodeRewardManagerAddress.getReferrals(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                _140 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _189 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _140 + (32 * _189) + 32 <= return_data.size
                s = ceil32(return_data.size) + 160
                idx = _140 + 160
                while idx < _140 + (32 * _189) + 160:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _838 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _189
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _189:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _838 + (32 * _189) + -mem[64] + 64
            if unknown_0xdb3ad6b5(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf74c9934(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf7b9f943(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nodeRewardManagerAddress.gasForDistribution() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf9afc763(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nodeRewardManagerAddress.autoDistri() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    if uint32(call.func_hash) >> 224 != 1169326 * 3600:
                        if uint32(call.func_hash) >> 224 != unknown_0xfb0a7494(?????):
                            require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return tokenAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        nodeRewardManagerAddress = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if stor26[msg.sender]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        if stor26[address(cd[36])]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.0xe0f2cfd8 with:
                             gas gas_remaining wei
                            args msg.sender, cd[4], address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall nodeRewardManagerAddress.rewardPerNode() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                if uint32(call.func_hash) >> 224 != unknown_0xee1afdbf(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        staticcall nodeRewardManagerAddress.claimTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NO NODE OWNER'
                mem[ceil32(return_data.size) + 128] = 0x5759fb0200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                staticcall nodeRewardManagerAddress._getNodesLastClaimTime(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _385 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _416 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _385 + _416 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_416)] = mem[ceil32(return_data.size) + _385 + 160 len ceil32(_416)]
                if ceil32(_416) <= _416:
                    _877 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _416
                    mem[mem[64] + 64 len ceil32(_416)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_416)]
                    if ceil32(_416) <= _416:
                        return Array(len=_416, data=mem[mem[64] + 64 len ceil32(_416)])
                    mem[_416 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_416) + _877 + -mem[64] + 64
                mem[_416 + (2 * ceil32(return_data.size)) + 160] = 0
                _878 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _416
                mem[mem[64] + 64 len ceil32(_416)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_416)]
                if ceil32(_416) <= _416:
                    return Array(len=_416, data=mem[mem[64] + 64 len ceil32(_416)])
                mem[_416 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_416) + _878 + -mem[64] + 64
            if unknown_0xd013cce0(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                    if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return distributionPoolAddress
                    if unknown_0xc7e17a17(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return sub_c7e17a17[cd[4]]
                    if uint32(call.func_hash) >> 224 != unknown_0xc8a22eb4(?????):
                        require unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return shares[address(cd[4])]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    staticcall nodeRewardManagerAddress.0x139fae2c with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NO NODE OWNER'
                mem[ceil32(return_data.size) + 128] = 0xc92819ce00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                staticcall nodeRewardManagerAddress._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _353 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _380 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _353 + _380 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_380)] = mem[ceil32(return_data.size) + _353 + 160 len ceil32(_380)]
                if ceil32(_380) > _380:
                    mem[_380 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _380
                mem[mem[64] + 64 len ceil32(_380)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_380)]
                if ceil32(_380) > _380:
                    mem[_380 + mem[64] + 64] = 0
                return Array(len=_380, data=mem[mem[64] + 64 len ceil32(_380)])
            if uint32(call.func_hash) >> 224 != unknown_0xd013cce0(?????):
                if unknown_0xd0f77474(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress._changeAutoDistri(bool arg1) with:
                         gas gas_remaining wei
                        args bool(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return totalReleased[address(cd[4])]
                    if uint32(call.func_hash) >> 224 != unknown_0xd8929342(?????):
                        require unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        staticcall nodeRewardManagerAddress.lastDistributionCount() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor26[address(cd[4])] = uint8(bool(cd[36]))
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require calldata.size > cd[4] + 35
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + 129
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                if not msg.sender:
                    revert with 0, 'CSHT:  creation from the zero address'
                mem[0] = msg.sender
                mem[32] = 26
                if stor26[address(msg.sender)]:
                    revert with 0, 'MANIA CSHT: Blacklisted address'
                if futurUsePoolAddress == msg.sender:
                    revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                idx = 0
                s = 0
                t = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _1771 = mem[(32 * idx) + 160]
                    mem[mem[64] + 36] = mem[(32 * idx) + 160]
                    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1771
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if s > !mem[_1801 + 32]:
                        revert with 0, 17
                    if t > !mem[_1801]:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1801 + 32]
                    t = t + mem[_1801]
                    continue 
                if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
                    revert with 0, 'CSHT: You don't have enough reward to cash out'
                if not uint8(stor24.field_8):
                    _1799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1799] = 30
                    mem[_1799 + 32] = 'SafeMath: subtraction overflow'
                    if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length > t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
                        revert with 0, 17
                    mem[mem[64] + 4] = distributionPoolAddress
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2164] == bool(mem[_2164])
                else:
                    mem[mem[64] + 4] = distributionPoolAddress
                    mem[mem[64] + 36] = sub_b12cbc76Address
                    mem[mem[64] + 68] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, sub_b12cbc76Address, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1892] == bool(mem[_1892])
                    _2165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2165] = 30
                    mem[_2165 + 32] = 'SafeMath: subtraction overflow'
                    if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length > t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
                        revert with 0, 17
                    mem[mem[64] + 4] = distributionPoolAddress
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, (t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2618] == bool(mem[_2618])
        else:
            if unknown_0x54557973(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x679cf1a2(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                        else:
                            if unknown_0x7628b3d7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return nodeRewardManagerAddress
                            if unknown_0x7b770392(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(nodeRewardManagerAddress)
                                call nodeRewardManagerAddress._changeRewardPerNode(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress._changeNodePrice(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        return deadWalletAddress
                                    require unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    call nodeRewardManagerAddress._distributeRewards() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                    if uint32(call.func_hash) >> 224 != unknown_0x679cf1a2(?????):
                        if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            cashoutFee = cd[4]
                        if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return cashoutFee
                        if unknown_0x6f4a2cd0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            call nodeRewardManagerAddress._distributeRewards() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
                        require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    mem[128] = 0xafed2bc400000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    staticcall nodeRewardManagerAddress.0xafed2bc4 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _98 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _157 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _98 + _157 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160 len ceil32(_157)] = mem[_98 + 160 len ceil32(_157)]
                    if ceil32(_157) <= _157:
                        _872 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _157
                        mem[mem[64] + 64 len ceil32(_157)] = mem[ceil32(return_data.size) + 160 len ceil32(_157)]
                        if ceil32(_157) <= _157:
                            return Array(len=_157, data=mem[mem[64] + 64 len ceil32(_157)])
                        mem[_157 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_157) + _872 + -mem[64] + 64
                    mem[_157 + ceil32(return_data.size) + 160] = 0
                    _873 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _157
                    mem[mem[64] + 64 len ceil32(_157)] = mem[ceil32(return_data.size) + 160 len ceil32(_157)]
                    if ceil32(_157) <= _157:
                        return Array(len=_157, data=mem[mem[64] + 64 len ceil32(_157)])
                    mem[_157 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_157) + _873 + -mem[64] + 64
                if unknown_0x5b0d4674(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                        if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return liquidityPoolFee
                        if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == bool(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            Mask(248, 0, stor24.field_8) = Mask(248, 0, bool(cd[4]))
                        else:
                            if unknown_0x5953658b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                staticcall nodeRewardManagerAddress.0x609d9bbb with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 128
                                require 287 < return_data.size + 256
                                if not bool(ceil32(return_data.size) + 384 <= test266151307()):
                                    revert with 0, 65
                                require 128 <= return_data.size
                                return ext_call.return_data[0 len 128]
                            require unknown_0x59640ed9(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress._changeGasDistri(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'MANIA CSHT:  creation from the zero address'
                        if stor26[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        call nodeRewardManagerAddress._cashoutAllNodesReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
                        if uint8(stor24.field_8):
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, sub_b12cbc76Address, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[32] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if uint32(call.func_hash) >> 224 != unknown_0x5b0d4674(?????):
                    if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAmount
                    if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]) - uniswapV2RouterAddress:
                            revert with 0, 'TKN: The router already has that address'
                        emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                        uniswapV2RouterAddress = address(cd[4])
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        uniswapV2PairAddress = ext_call.return_data[12 len 20]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                            require unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            swapTokensAmount = cd[4]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'CSHT:  creation from the zero address'
                            if stor26[address(msg.sender)]:
                                revert with 0, 'MANIA CSHT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if uint8(stor24.field_8):
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args distributionPoolAddress, sub_b12cbc76Address, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[32] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < ext_call.return_data[32]:
                                revert with 0, 17
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NO NODE OWNER'
                mem[ceil32(return_data.size) + 128] = 0x4a389fae00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                staticcall nodeRewardManagerAddress._getNodesRewardAvailable(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _347 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _376 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _347 + _376 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_376)] = mem[ceil32(return_data.size) + _347 + 160 len ceil32(_376)]
                if ceil32(_376) > _376:
                    mem[_376 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _376
                mem[mem[64] + 64 len ceil32(_376)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_376)]
                if ceil32(_376) > _376:
                    mem[_376 + mem[64] + 64] = 0
                return Array(len=_376, data=mem[mem[64] + 64 len ceil32(_376)])
            if unknown_0x1d94f216(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x13899303(?????) > uint32(call.func_hash) >> 224:
                    if setReferralBonusPercent(uint256 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.setReferralBonus(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if updateRewardsFee(uint256 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        rewardsFee = cd[4]
                        if cd[4] > !liquidityPoolFee:
                            revert with 0, 17
                        if cd[4] + liquidityPoolFee < cd[4]:
                            revert with 0, 'SafeMath: addition overflow'
                        if cd[4] + liquidityPoolFee > !futurFee:
                            revert with 0, 17
                        if futurFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees = cd[4] + liquidityPoolFee + futurFee
                    if uint32(call.func_hash) >> 224 != getRewardAmount():
                        if uint32(call.func_hash) >> 224 != updateFuturWall(address arg1):
                            require unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return totalFees
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        futurUsePoolAddress = address(cd[4])
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NO NODE OWNER'
                    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x13899303(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall nodeRewardManagerAddress.0xb8c7a1a2 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if uint32(call.func_hash) >> 224 != unknown_0x138a634a(?????):
                    if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2RouterAddress
                    if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                        require unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor26[cd[4]])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not shares[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account has no shares'
                    if eth.balance(this.address) > !totalReleased:
                        revert with 0, 17
                    if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                        revert with 0, 17
                    if not -((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) + released[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account is not due payment'
                    if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                    if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[4]) with:
                       value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NO NODE OWNER'
                mem[ceil32(return_data.size) + 128] = 0x334de3a200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                staticcall nodeRewardManagerAddress._getNodesNames(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _362 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _387 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _362 + _387 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_387)] = mem[ceil32(return_data.size) + _362 + 160 len ceil32(_387)]
                if ceil32(_387) > _387:
                    mem[_387 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _387
                mem[mem[64] + 64 len ceil32(_387)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_387)]
                if ceil32(_387) > _387:
                    mem[_387 + mem[64] + 64] = 0
                return Array(len=_387, data=mem[mem[64] + 64 len ceil32(_387)])
            if unknown_0x4195fbf3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x4195fbf3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if cd[4] <= eth.balance(this.address):
                        call owner with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x42bc9fca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        liquidityPoolFee = cd[4]
                        if rewardsFee > !cd[4]:
                            revert with 0, 17
                        if rewardsFee + cd[4] < rewardsFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardsFee + cd[4] > !futurFee:
                            revert with 0, 17
                        if futurFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees = rewardsFee + cd[4] + futurFee
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x48e5642b(?????):
                                require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return uniswapV2PairAddress
                            require not msg.value
                            staticcall nodeRewardManagerAddress.totalRewardStaked() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not shares[address(cd[36])]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        mem[132] = this.address
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !totalReleased[address(cd[4])]:
                            revert with 0, 17
                        if ext_call.return_data[0] + totalReleased[address(cd[4])] and shares[address(cd[36])] > -1 / ext_call.return_data[0] + totalReleased[address(cd[4])]:
                            revert with 0, 17
                        if not totalShares:
                            revert with 0, 18
                        if (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares < released[address(cd[4])][address(cd[36])]:
                            revert with 0, 17
                        if not -((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) + released[address(cd[4])][address(cd[36])]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[address(cd[4])][address(cd[36])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                            revert with 0, 17
                        released[address(cd[4])][address(cd[36])] = (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares
                        if totalReleased[address(cd[4])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                            revert with 0, 17
                        totalReleased[address(cd[4])] = totalReleased[address(cd[4])] + ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                        mem[ceil32(return_data.size) + 164] = address(cd[36])
                        mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                        mem[ceil32(return_data.size) + 128] = 68
                        mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 228] = 32
                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(cd[4])):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0
                        mem[ceil32(return_data.size) + 360] = 0
                        call address(cd[4]) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                if not mem[ceil32(return_data.size) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit ERC20PaymentReleased(address(cd[36]), ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], address(cd[4]));
            else:
                if unknown_0x1d94f216(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    require cd[36] == uint32(cd[36])
                    call nodeRewardManagerAddress.0x2da9622e with:
                         gas gas_remaining wei
                        args msg.sender, cd[36] << 224, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x2096879b(?????):
                        if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsFee
                        if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalShares
                        require unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return released[address(cd[4])][address(cd[36])]
                    require calldata.size - 4 >= 128
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                    mem[('cd', 4).length + 160] = 0
                    require cd[36] == address(cd[36])
                    require cd[100] == uint32(cd[100])
                    if cd[68] > 5:
                        revert with 0, 'Max: 5 nodes Min: 1'
                    if cd[68] < 1:
                        revert with 0, 'Max: 5 nodes Min: 1'
                    if ('cd', 4).length <= 3:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if ('cd', 4).length >= 32:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if not msg.sender:
                        revert with 0, 'NODE CREATION:  creation from the zero address'
                    mem[0] = msg.sender
                    mem[32] = 26
                    if stor26[address(msg.sender)]:
                        revert with 0, 'NODE CREATION: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                    mem[ceil32(ceil32(('cd', 4).length)) + 133] = uint32(cd[100])
                    staticcall nodeRewardManagerAddress.0xb76adfd6 with:
                            gas gas_remaining wei
                           args uint32(cd[100])
                    mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 133] = msg.sender
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'NODE CREATION: Balance too low for creation.'
                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < swapTokensAmount:
                        if not -cd[68]:
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = 0
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < cd[68]:
                                if not -idx:
                                    _826 = mem[64]
                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 128
                                    _840 = mem[128]
                                    mem[mem[64] + 132] = mem[128]
                                    s = 0
                                    while s < mem[128]:
                                        mem[s + mem[64] + 164] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    if ceil32(_840) > _840:
                                        mem[_840 + mem[64] + 164] = 0
                                    mem[mem[64] + 68] = address(cd[36])
                                    mem[_826 + 100] = uint32(cd[100])
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(_840) + _826 + -mem[64] + 160]
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if not -idx - 1:
                                        _888 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_888] = 1
                                        mem[_888 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _924 = mem[64]
                                        _941 = mem[128]
                                        s = 0
                                        while s < _941:
                                            mem[s + _924 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_924 + _941 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_941) <= _941:
                                            _1775 = mem[_888]
                                            s = 0
                                            while s < _1775:
                                                mem[s + _924 + _941 + 33] = mem[s + _888 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1775) <= _1775:
                                                _2892 = mem[64]
                                                mem[mem[64]] = _1775 + _924 + _941 + -mem[64] + 1
                                                mem[64] = _1775 + _924 + _941 + 33
                                                mem[_1775 + _924 + _941 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1775 + _924 + _941 + 37] = msg.sender
                                                mem[_1775 + _924 + _941 + 69] = 128
                                                _2948 = mem[_2892]
                                                mem[_1775 + _924 + _941 + 165] = mem[_2892]
                                                s = 0
                                                while s < _2948:
                                                    mem[s + _1775 + _924 + _941 + 197] = mem[s + _2892 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2948) > _2948:
                                                    mem[_2948 + _1775 + _924 + _941 + 197] = 0
                                                mem[_1775 + _924 + _941 + 101] = address(cd[36])
                                                mem[_1775 + _924 + _941 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1775 + _924 + _941 + 165 len ceil32(_2948) + 32]
                                            else:
                                                mem[_1775 + _924 + _941 + 33] = 0
                                                _2893 = mem[64]
                                                mem[mem[64]] = _1775 + _924 + _941 + -mem[64] + 1
                                                mem[64] = _1775 + _924 + _941 + 33
                                                mem[_1775 + _924 + _941 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1775 + _924 + _941 + 37] = msg.sender
                                                mem[_1775 + _924 + _941 + 69] = 128
                                                _2949 = mem[_2893]
                                                mem[_1775 + _924 + _941 + 165] = mem[_2893]
                                                s = 0
                                                while s < _2949:
                                                    mem[s + _1775 + _924 + _941 + 197] = mem[s + _2893 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2949) > _2949:
                                                    mem[_2949 + _1775 + _924 + _941 + 197] = 0
                                                mem[_1775 + _924 + _941 + 101] = address(cd[36])
                                                mem[_1775 + _924 + _941 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1775 + _924 + _941 + 165 len ceil32(_2949) + 32]
                                        else:
                                            _1776 = mem[_888]
                                            s = 0
                                            while s < _1776:
                                                mem[s + _924 + _941 + 33] = mem[s + _888 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1776) <= _1776:
                                                _2894 = mem[64]
                                                mem[mem[64]] = _1776 + _924 + _941 + -mem[64] + 1
                                                mem[64] = _1776 + _924 + _941 + 33
                                                mem[_1776 + _924 + _941 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1776 + _924 + _941 + 37] = msg.sender
                                                mem[_1776 + _924 + _941 + 69] = 128
                                                _2950 = mem[_2894]
                                                mem[_1776 + _924 + _941 + 165] = mem[_2894]
                                                s = 0
                                                while s < _2950:
                                                    mem[s + _1776 + _924 + _941 + 197] = mem[s + _2894 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2950) > _2950:
                                                    mem[_2950 + _1776 + _924 + _941 + 197] = 0
                                                mem[_1776 + _924 + _941 + 101] = address(cd[36])
                                                mem[_1776 + _924 + _941 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1776 + _924 + _941 + 165 len ceil32(_2950) + 32]
                                            else:
                                                mem[_1776 + _924 + _941 + 33] = 0
                                                _2895 = mem[64]
                                                mem[mem[64]] = _1776 + _924 + _941 + -mem[64] + 1
                                                mem[64] = _1776 + _924 + _941 + 33
                                                mem[_1776 + _924 + _941 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1776 + _924 + _941 + 37] = msg.sender
                                                mem[_1776 + _924 + _941 + 69] = 128
                                                _2951 = mem[_2895]
                                                mem[_1776 + _924 + _941 + 165] = mem[_2895]
                                                s = 0
                                                while s < _2951:
                                                    mem[s + _1776 + _924 + _941 + 197] = mem[s + _2895 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2951) > _2951:
                                                    mem[_2951 + _1776 + _924 + _941 + 197] = 0
                                                mem[_1776 + _924 + _941 + 101] = address(cd[36])
                                                mem[_1776 + _924 + _941 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1776 + _924 + _941 + 165 len ceil32(_2951) + 32]
                                    else:
                                        t = 0
                                        s = idx + 1
                                        while s:
                                            if not t + 1:
                                                revert with 0, 17
                                            t = t + 1
                                            s = s / 10
                                            continue 
                                        if t > test266151307():
                                            revert with 0, 65
                                        _1757 = mem[64]
                                        mem[mem[64]] = t
                                        mem[64] = mem[64] + ceil32(t) + 32
                                        if not t:
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1757]:
                                                    revert with 0, 50
                                                mem[u + _1757 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _2842 = mem[64]
                                            _2866 = mem[128]
                                            s = 0
                                            while s < _2866:
                                                mem[s + _2842 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_2842 + _2866 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_2866) <= _2866:
                                                _3832 = mem[_1757]
                                                s = 0
                                                while s < _3832:
                                                    mem[s + _2842 + _2866 + 33] = mem[s + _1757 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3832) <= _3832:
                                                    _4556 = mem[64]
                                                    mem[mem[64]] = _3832 + _2842 + _2866 + -mem[64] + 1
                                                    mem[64] = _3832 + _2842 + _2866 + 33
                                                    mem[_3832 + _2842 + _2866 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3832 + _2842 + _2866 + 37] = msg.sender
                                                    mem[_3832 + _2842 + _2866 + 69] = 128
                                                    _4652 = mem[_4556]
                                                    mem[_3832 + _2842 + _2866 + 165] = mem[_4556]
                                                    s = 0
                                                    while s < _4652:
                                                        mem[s + _3832 + _2842 + _2866 + 197] = mem[s + _4556 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4652) > _4652:
                                                        mem[_4652 + _3832 + _2842 + _2866 + 197] = 0
                                                    mem[_3832 + _2842 + _2866 + 101] = address(cd[36])
                                                    mem[_3832 + _2842 + _2866 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3832 + _2842 + _2866 + 165 len ceil32(_4652) + 32]
                                                else:
                                                    mem[_3832 + _2842 + _2866 + 33] = 0
                                                    _4557 = mem[64]
                                                    mem[mem[64]] = _3832 + _2842 + _2866 + -mem[64] + 1
                                                    mem[64] = _3832 + _2842 + _2866 + 33
                                                    mem[_3832 + _2842 + _2866 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3832 + _2842 + _2866 + 37] = msg.sender
                                                    mem[_3832 + _2842 + _2866 + 69] = 128
                                                    _4653 = mem[_4557]
                                                    mem[_3832 + _2842 + _2866 + 165] = mem[_4557]
                                                    s = 0
                                                    while s < _4653:
                                                        mem[s + _3832 + _2842 + _2866 + 197] = mem[s + _4557 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4653) > _4653:
                                                        mem[_4653 + _3832 + _2842 + _2866 + 197] = 0
                                                    mem[_3832 + _2842 + _2866 + 101] = address(cd[36])
                                                    mem[_3832 + _2842 + _2866 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3832 + _2842 + _2866 + 165 len ceil32(_4653) + 32]
                                            else:
                                                _3833 = mem[_1757]
                                                s = 0
                                                while s < _3833:
                                                    mem[s + _2842 + _2866 + 33] = mem[s + _1757 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3833) <= _3833:
                                                    _4558 = mem[64]
                                                    mem[mem[64]] = _3833 + _2842 + _2866 + -mem[64] + 1
                                                    mem[64] = _3833 + _2842 + _2866 + 33
                                                    mem[_3833 + _2842 + _2866 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3833 + _2842 + _2866 + 37] = msg.sender
                                                    mem[_3833 + _2842 + _2866 + 69] = 128
                                                    _4654 = mem[_4558]
                                                    mem[_3833 + _2842 + _2866 + 165] = mem[_4558]
                                                    s = 0
                                                    while s < _4654:
                                                        mem[s + _3833 + _2842 + _2866 + 197] = mem[s + _4558 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4654) > _4654:
                                                        mem[_4654 + _3833 + _2842 + _2866 + 197] = 0
                                                    mem[_3833 + _2842 + _2866 + 101] = address(cd[36])
                                                    mem[_3833 + _2842 + _2866 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3833 + _2842 + _2866 + 165 len ceil32(_4654) + 32]
                                                else:
                                                    mem[_3833 + _2842 + _2866 + 33] = 0
                                                    _4559 = mem[64]
                                                    mem[mem[64]] = _3833 + _2842 + _2866 + -mem[64] + 1
                                                    mem[64] = _3833 + _2842 + _2866 + 33
                                                    mem[_3833 + _2842 + _2866 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3833 + _2842 + _2866 + 37] = msg.sender
                                                    mem[_3833 + _2842 + _2866 + 69] = 128
                                                    _4655 = mem[_4559]
                                                    mem[_3833 + _2842 + _2866 + 165] = mem[_4559]
                                                    s = 0
                                                    while s < _4655:
                                                        mem[s + _3833 + _2842 + _2866 + 197] = mem[s + _4559 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4655) > _4655:
                                                        mem[_4655 + _3833 + _2842 + _2866 + 197] = 0
                                                    mem[_3833 + _2842 + _2866 + 101] = address(cd[36])
                                                    mem[_3833 + _2842 + _2866 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3833 + _2842 + _2866 + 165 len ceil32(_4655) + 32]
                                        else:
                                            mem[_1757 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1757]:
                                                    revert with 0, 50
                                                mem[u + _1757 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _2843 = mem[64]
                                            _2867 = mem[128]
                                            s = 0
                                            while s < _2867:
                                                mem[s + _2843 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_2843 + _2867 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_2867) <= _2867:
                                                _3834 = mem[_1757]
                                                s = 0
                                                while s < _3834:
                                                    mem[s + _2843 + _2867 + 33] = mem[s + _1757 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3834) <= _3834:
                                                    _4560 = mem[64]
                                                    mem[mem[64]] = _3834 + _2843 + _2867 + -mem[64] + 1
                                                    mem[64] = _3834 + _2843 + _2867 + 33
                                                    mem[_3834 + _2843 + _2867 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3834 + _2843 + _2867 + 37] = msg.sender
                                                    mem[_3834 + _2843 + _2867 + 69] = 128
                                                    _4656 = mem[_4560]
                                                    mem[_3834 + _2843 + _2867 + 165] = mem[_4560]
                                                    s = 0
                                                    while s < _4656:
                                                        mem[s + _3834 + _2843 + _2867 + 197] = mem[s + _4560 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4656) > _4656:
                                                        mem[_4656 + _3834 + _2843 + _2867 + 197] = 0
                                                    mem[_3834 + _2843 + _2867 + 101] = address(cd[36])
                                                    mem[_3834 + _2843 + _2867 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3834 + _2843 + _2867 + 165 len ceil32(_4656) + 32]
                                                else:
                                                    mem[_3834 + _2843 + _2867 + 33] = 0
                                                    _4561 = mem[64]
                                                    mem[mem[64]] = _3834 + _2843 + _2867 + -mem[64] + 1
                                                    mem[64] = _3834 + _2843 + _2867 + 33
                                                    mem[_3834 + _2843 + _2867 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3834 + _2843 + _2867 + 37] = msg.sender
                                                    mem[_3834 + _2843 + _2867 + 69] = 128
                                                    _4657 = mem[_4561]
                                                    mem[_3834 + _2843 + _2867 + 165] = mem[_4561]
                                                    s = 0
                                                    while s < _4657:
                                                        mem[s + _3834 + _2843 + _2867 + 197] = mem[s + _4561 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4657) > _4657:
                                                        mem[_4657 + _3834 + _2843 + _2867 + 197] = 0
                                                    mem[_3834 + _2843 + _2867 + 101] = address(cd[36])
                                                    mem[_3834 + _2843 + _2867 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3834 + _2843 + _2867 + 165 len ceil32(_4657) + 32]
                                            else:
                                                _3835 = mem[_1757]
                                                s = 0
                                                while s < _3835:
                                                    mem[s + _2843 + _2867 + 33] = mem[s + _1757 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3835) <= _3835:
                                                    _4562 = mem[64]
                                                    mem[mem[64]] = _3835 + _2843 + _2867 + -mem[64] + 1
                                                    mem[64] = _3835 + _2843 + _2867 + 33
                                                    mem[_3835 + _2843 + _2867 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3835 + _2843 + _2867 + 37] = msg.sender
                                                    mem[_3835 + _2843 + _2867 + 69] = 128
                                                    _4658 = mem[_4562]
                                                    mem[_3835 + _2843 + _2867 + 165] = mem[_4562]
                                                    s = 0
                                                    while s < _4658:
                                                        mem[s + _3835 + _2843 + _2867 + 197] = mem[s + _4562 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4658) > _4658:
                                                        mem[_4658 + _3835 + _2843 + _2867 + 197] = 0
                                                    mem[_3835 + _2843 + _2867 + 101] = address(cd[36])
                                                    mem[_3835 + _2843 + _2867 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3835 + _2843 + _2867 + 165 len ceil32(_4658) + 32]
                                                else:
                                                    mem[_3835 + _2843 + _2867 + 33] = 0
                                                    _4563 = mem[64]
                                                    mem[mem[64]] = _3835 + _2843 + _2867 + -mem[64] + 1
                                                    mem[64] = _3835 + _2843 + _2867 + 33
                                                    mem[_3835 + _2843 + _2867 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3835 + _2843 + _2867 + 37] = msg.sender
                                                    mem[_3835 + _2843 + _2867 + 69] = 128
                                                    _4659 = mem[_4563]
                                                    mem[_3835 + _2843 + _2867 + 165] = mem[_4563]
                                                    s = 0
                                                    while s < _4659:
                                                        mem[s + _3835 + _2843 + _2867 + 197] = mem[s + _4563 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4659) > _4659:
                                                        mem[_4659 + _3835 + _2843 + _2867 + 197] = 0
                                                    mem[_3835 + _2843 + _2867 + 101] = address(cd[36])
                                                    mem[_3835 + _2843 + _2867 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3835 + _2843 + _2867 + 165 len ceil32(_4659) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                revert with 0, 17
                            if not cd[68]:
                                revert with 0, 18
                            if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < cd[68]:
                                if not -idx:
                                    _825 = mem[64]
                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 128
                                    _839 = mem[128]
                                    mem[mem[64] + 132] = mem[128]
                                    s = 0
                                    while s < _839:
                                        mem[s + mem[64] + 164] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    if ceil32(_839) > _839:
                                        mem[_839 + _825 + 164] = 0
                                    mem[_825 + 68] = address(cd[36])
                                    mem[_825 + 100] = uint32(cd[100])
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(_839) + _825 + -mem[64] + 160]
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if not -idx - 1:
                                        _886 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_886] = 1
                                        mem[_886 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _923 = mem[64]
                                        _940 = mem[128]
                                        s = 0
                                        while s < _940:
                                            mem[s + _923 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_923 + _940 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_940) <= _940:
                                            _1773 = mem[_886]
                                            s = 0
                                            while s < _1773:
                                                mem[s + _923 + _940 + 33] = mem[s + _886 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1773) <= _1773:
                                                _2888 = mem[64]
                                                mem[mem[64]] = _1773 + _923 + _940 + -mem[64] + 1
                                                mem[64] = _1773 + _923 + _940 + 33
                                                mem[_1773 + _923 + _940 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1773 + _923 + _940 + 37] = msg.sender
                                                mem[_1773 + _923 + _940 + 69] = 128
                                                _2942 = mem[_2888]
                                                mem[_1773 + _923 + _940 + 165] = mem[_2888]
                                                s = 0
                                                while s < _2942:
                                                    mem[s + _1773 + _923 + _940 + 197] = mem[s + _2888 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2942) > _2942:
                                                    mem[_2942 + _1773 + _923 + _940 + 197] = 0
                                                mem[_1773 + _923 + _940 + 101] = address(cd[36])
                                                mem[_1773 + _923 + _940 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1773 + _923 + _940 + 165 len ceil32(_2942) + 32]
                                            else:
                                                mem[_1773 + _923 + _940 + 33] = 0
                                                _2889 = mem[64]
                                                mem[mem[64]] = _1773 + _923 + _940 + -mem[64] + 1
                                                mem[64] = _1773 + _923 + _940 + 33
                                                mem[_1773 + _923 + _940 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1773 + _923 + _940 + 37] = msg.sender
                                                mem[_1773 + _923 + _940 + 69] = 128
                                                _2943 = mem[_2889]
                                                mem[_1773 + _923 + _940 + 165] = mem[_2889]
                                                s = 0
                                                while s < _2943:
                                                    mem[s + _1773 + _923 + _940 + 197] = mem[s + _2889 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2943) > _2943:
                                                    mem[_2943 + _1773 + _923 + _940 + 197] = 0
                                                mem[_1773 + _923 + _940 + 101] = address(cd[36])
                                                mem[_1773 + _923 + _940 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1773 + _923 + _940 + 165 len ceil32(_2943) + 32]
                                        else:
                                            _1774 = mem[_886]
                                            s = 0
                                            while s < _1774:
                                                mem[s + _923 + _940 + 33] = mem[s + _886 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1774) <= _1774:
                                                _2890 = mem[64]
                                                mem[mem[64]] = _1774 + _923 + _940 + -mem[64] + 1
                                                mem[64] = _1774 + _923 + _940 + 33
                                                mem[_1774 + _923 + _940 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1774 + _923 + _940 + 37] = msg.sender
                                                mem[_1774 + _923 + _940 + 69] = 128
                                                _2944 = mem[_2890]
                                                mem[_1774 + _923 + _940 + 165] = mem[_2890]
                                                s = 0
                                                while s < _2944:
                                                    mem[s + _1774 + _923 + _940 + 197] = mem[s + _2890 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2944) > _2944:
                                                    mem[_2944 + _1774 + _923 + _940 + 197] = 0
                                                mem[_1774 + _923 + _940 + 101] = address(cd[36])
                                                mem[_1774 + _923 + _940 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1774 + _923 + _940 + 165 len ceil32(_2944) + 32]
                                            else:
                                                mem[_1774 + _923 + _940 + 33] = 0
                                                _2891 = mem[64]
                                                mem[mem[64]] = _1774 + _923 + _940 + -mem[64] + 1
                                                mem[64] = _1774 + _923 + _940 + 33
                                                mem[_1774 + _923 + _940 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1774 + _923 + _940 + 37] = msg.sender
                                                mem[_1774 + _923 + _940 + 69] = 128
                                                _2945 = mem[_2891]
                                                mem[_1774 + _923 + _940 + 165] = mem[_2891]
                                                s = 0
                                                while s < _2945:
                                                    mem[s + _1774 + _923 + _940 + 197] = mem[s + _2891 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2945) > _2945:
                                                    mem[_2945 + _1774 + _923 + _940 + 197] = 0
                                                mem[_1774 + _923 + _940 + 101] = address(cd[36])
                                                mem[_1774 + _923 + _940 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1774 + _923 + _940 + 165 len ceil32(_2945) + 32]
                                    else:
                                        t = 0
                                        s = idx + 1
                                        while s:
                                            if not t + 1:
                                                revert with 0, 17
                                            t = t + 1
                                            s = s / 10
                                            continue 
                                        if t > test266151307():
                                            revert with 0, 65
                                        _1756 = mem[64]
                                        mem[mem[64]] = t
                                        mem[64] = mem[64] + ceil32(t) + 32
                                        if not t:
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1756]:
                                                    revert with 0, 50
                                                mem[u + _1756 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _2840 = mem[64]
                                            _2864 = mem[128]
                                            s = 0
                                            while s < _2864:
                                                mem[s + _2840 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_2840 + _2864 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_2864) <= _2864:
                                                _3828 = mem[_1756]
                                                s = 0
                                                while s < _3828:
                                                    mem[s + _2840 + _2864 + 33] = mem[s + _1756 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3828) <= _3828:
                                                    _4548 = mem[64]
                                                    mem[mem[64]] = _3828 + _2840 + _2864 + -mem[64] + 1
                                                    mem[64] = _3828 + _2840 + _2864 + 33
                                                    mem[_3828 + _2840 + _2864 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3828 + _2840 + _2864 + 37] = msg.sender
                                                    mem[_3828 + _2840 + _2864 + 69] = 128
                                                    _4644 = mem[_4548]
                                                    mem[_3828 + _2840 + _2864 + 165] = mem[_4548]
                                                    s = 0
                                                    while s < _4644:
                                                        mem[s + _3828 + _2840 + _2864 + 197] = mem[s + _4548 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4644) > _4644:
                                                        mem[_4644 + _3828 + _2840 + _2864 + 197] = 0
                                                    mem[_3828 + _2840 + _2864 + 101] = address(cd[36])
                                                    mem[_3828 + _2840 + _2864 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3828 + _2840 + _2864 + 165 len ceil32(_4644) + 32]
                                                else:
                                                    mem[_3828 + _2840 + _2864 + 33] = 0
                                                    _4549 = mem[64]
                                                    mem[mem[64]] = _3828 + _2840 + _2864 + -mem[64] + 1
                                                    mem[64] = _3828 + _2840 + _2864 + 33
                                                    mem[_3828 + _2840 + _2864 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3828 + _2840 + _2864 + 37] = msg.sender
                                                    mem[_3828 + _2840 + _2864 + 69] = 128
                                                    _4645 = mem[_4549]
                                                    mem[_3828 + _2840 + _2864 + 165] = mem[_4549]
                                                    s = 0
                                                    while s < _4645:
                                                        mem[s + _3828 + _2840 + _2864 + 197] = mem[s + _4549 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4645) > _4645:
                                                        mem[_4645 + _3828 + _2840 + _2864 + 197] = 0
                                                    mem[_3828 + _2840 + _2864 + 101] = address(cd[36])
                                                    mem[_3828 + _2840 + _2864 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3828 + _2840 + _2864 + 165 len ceil32(_4645) + 32]
                                            else:
                                                _3829 = mem[_1756]
                                                s = 0
                                                while s < _3829:
                                                    mem[s + _2840 + _2864 + 33] = mem[s + _1756 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3829) <= _3829:
                                                    _4550 = mem[64]
                                                    mem[mem[64]] = _3829 + _2840 + _2864 + -mem[64] + 1
                                                    mem[64] = _3829 + _2840 + _2864 + 33
                                                    mem[_3829 + _2840 + _2864 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3829 + _2840 + _2864 + 37] = msg.sender
                                                    mem[_3829 + _2840 + _2864 + 69] = 128
                                                    _4646 = mem[_4550]
                                                    mem[_3829 + _2840 + _2864 + 165] = mem[_4550]
                                                    s = 0
                                                    while s < _4646:
                                                        mem[s + _3829 + _2840 + _2864 + 197] = mem[s + _4550 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4646) > _4646:
                                                        mem[_4646 + _3829 + _2840 + _2864 + 197] = 0
                                                    mem[_3829 + _2840 + _2864 + 101] = address(cd[36])
                                                    mem[_3829 + _2840 + _2864 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3829 + _2840 + _2864 + 165 len ceil32(_4646) + 32]
                                                else:
                                                    mem[_3829 + _2840 + _2864 + 33] = 0
                                                    _4551 = mem[64]
                                                    mem[mem[64]] = _3829 + _2840 + _2864 + -mem[64] + 1
                                                    mem[64] = _3829 + _2840 + _2864 + 33
                                                    mem[_3829 + _2840 + _2864 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3829 + _2840 + _2864 + 37] = msg.sender
                                                    mem[_3829 + _2840 + _2864 + 69] = 128
                                                    _4647 = mem[_4551]
                                                    mem[_3829 + _2840 + _2864 + 165] = mem[_4551]
                                                    s = 0
                                                    while s < _4647:
                                                        mem[s + _3829 + _2840 + _2864 + 197] = mem[s + _4551 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4647) > _4647:
                                                        mem[_4647 + _3829 + _2840 + _2864 + 197] = 0
                                                    mem[_3829 + _2840 + _2864 + 101] = address(cd[36])
                                                    mem[_3829 + _2840 + _2864 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3829 + _2840 + _2864 + 165 len ceil32(_4647) + 32]
                                        else:
                                            mem[_1756 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1756]:
                                                    revert with 0, 50
                                                mem[u + _1756 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _2841 = mem[64]
                                            _2865 = mem[128]
                                            s = 0
                                            while s < _2865:
                                                mem[s + _2841 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_2841 + _2865 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_2865) <= _2865:
                                                _3830 = mem[_1756]
                                                s = 0
                                                while s < _3830:
                                                    mem[s + _2841 + _2865 + 33] = mem[s + _1756 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3830) <= _3830:
                                                    _4552 = mem[64]
                                                    mem[mem[64]] = _3830 + _2841 + _2865 + -mem[64] + 1
                                                    mem[64] = _3830 + _2841 + _2865 + 33
                                                    mem[_3830 + _2841 + _2865 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3830 + _2841 + _2865 + 37] = msg.sender
                                                    mem[_3830 + _2841 + _2865 + 69] = 128
                                                    _4648 = mem[_4552]
                                                    mem[_3830 + _2841 + _2865 + 165] = mem[_4552]
                                                    s = 0
                                                    while s < _4648:
                                                        mem[s + _3830 + _2841 + _2865 + 197] = mem[s + _4552 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4648) > _4648:
                                                        mem[_4648 + _3830 + _2841 + _2865 + 197] = 0
                                                    mem[_3830 + _2841 + _2865 + 101] = address(cd[36])
                                                    mem[_3830 + _2841 + _2865 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3830 + _2841 + _2865 + 165 len ceil32(_4648) + 32]
                                                else:
                                                    mem[_3830 + _2841 + _2865 + 33] = 0
                                                    _4553 = mem[64]
                                                    mem[mem[64]] = _3830 + _2841 + _2865 + -mem[64] + 1
                                                    mem[64] = _3830 + _2841 + _2865 + 33
                                                    mem[_3830 + _2841 + _2865 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3830 + _2841 + _2865 + 37] = msg.sender
                                                    mem[_3830 + _2841 + _2865 + 69] = 128
                                                    _4649 = mem[_4553]
                                                    mem[_3830 + _2841 + _2865 + 165] = mem[_4553]
                                                    s = 0
                                                    while s < _4649:
                                                        mem[s + _3830 + _2841 + _2865 + 197] = mem[s + _4553 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4649) > _4649:
                                                        mem[_4649 + _3830 + _2841 + _2865 + 197] = 0
                                                    mem[_3830 + _2841 + _2865 + 101] = address(cd[36])
                                                    mem[_3830 + _2841 + _2865 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3830 + _2841 + _2865 + 165 len ceil32(_4649) + 32]
                                            else:
                                                _3831 = mem[_1756]
                                                s = 0
                                                while s < _3831:
                                                    mem[s + _2841 + _2865 + 33] = mem[s + _1756 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3831) <= _3831:
                                                    _4554 = mem[64]
                                                    mem[mem[64]] = _3831 + _2841 + _2865 + -mem[64] + 1
                                                    mem[64] = _3831 + _2841 + _2865 + 33
                                                    mem[_3831 + _2841 + _2865 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3831 + _2841 + _2865 + 37] = msg.sender
                                                    mem[_3831 + _2841 + _2865 + 69] = 128
                                                    _4650 = mem[_4554]
                                                    mem[_3831 + _2841 + _2865 + 165] = mem[_4554]
                                                    s = 0
                                                    while s < _4650:
                                                        mem[s + _3831 + _2841 + _2865 + 197] = mem[s + _4554 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4650) > _4650:
                                                        mem[_4650 + _3831 + _2841 + _2865 + 197] = 0
                                                    mem[_3831 + _2841 + _2865 + 101] = address(cd[36])
                                                    mem[_3831 + _2841 + _2865 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3831 + _2841 + _2865 + 165 len ceil32(_4650) + 32]
                                                else:
                                                    mem[_3831 + _2841 + _2865 + 33] = 0
                                                    _4555 = mem[64]
                                                    mem[mem[64]] = _3831 + _2841 + _2865 + -mem[64] + 1
                                                    mem[64] = _3831 + _2841 + _2865 + 33
                                                    mem[_3831 + _2841 + _2865 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3831 + _2841 + _2865 + 37] = msg.sender
                                                    mem[_3831 + _2841 + _2865 + 69] = 128
                                                    _4651 = mem[_4555]
                                                    mem[_3831 + _2841 + _2865 + 165] = mem[_4555]
                                                    s = 0
                                                    while s < _4651:
                                                        mem[s + _3831 + _2841 + _2865 + 197] = mem[s + _4555 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4651) > _4651:
                                                        mem[_4651 + _3831 + _2841 + _2865 + 197] = 0
                                                    mem[_3831 + _2841 + _2865 + 101] = address(cd[36])
                                                    mem[_3831 + _2841 + _2865 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3831 + _2841 + _2865 + 165 len ceil32(_4651) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        if not uint8(stor24.field_8):
                            if not -cd[68]:
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < cd[68]:
                                    if not -idx:
                                        _828 = mem[64]
                                        mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 128
                                        _842 = mem[128]
                                        mem[mem[64] + 132] = mem[128]
                                        s = 0
                                        while s < mem[128]:
                                            mem[s + mem[64] + 164] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        if ceil32(_842) > _842:
                                            mem[_842 + mem[64] + 164] = 0
                                        mem[mem[64] + 68] = address(cd[36])
                                        mem[_828 + 100] = uint32(cd[100])
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_842) + _828 + -mem[64] + 160]
                                    else:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _892 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_892] = 1
                                            mem[_892 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _926 = mem[64]
                                            _943 = mem[128]
                                            s = 0
                                            while s < _943:
                                                mem[s + _926 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_926 + _943 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_943) <= _943:
                                                _1779 = mem[_892]
                                                s = 0
                                                while s < _1779:
                                                    mem[s + _926 + _943 + 33] = mem[s + _892 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1779) <= _1779:
                                                    _2900 = mem[64]
                                                    mem[mem[64]] = _1779 + _926 + _943 + -mem[64] + 1
                                                    mem[64] = _1779 + _926 + _943 + 33
                                                    mem[_1779 + _926 + _943 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1779 + _926 + _943 + 37] = msg.sender
                                                    mem[_1779 + _926 + _943 + 69] = 128
                                                    _2960 = mem[_2900]
                                                    mem[_1779 + _926 + _943 + 165] = mem[_2900]
                                                    s = 0
                                                    while s < _2960:
                                                        mem[s + _1779 + _926 + _943 + 197] = mem[s + _2900 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2960) > _2960:
                                                        mem[_2960 + _1779 + _926 + _943 + 197] = 0
                                                    mem[_1779 + _926 + _943 + 101] = address(cd[36])
                                                    mem[_1779 + _926 + _943 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1779 + _926 + _943 + 165 len ceil32(_2960) + 32]
                                                else:
                                                    mem[_1779 + _926 + _943 + 33] = 0
                                                    _2901 = mem[64]
                                                    mem[mem[64]] = _1779 + _926 + _943 + -mem[64] + 1
                                                    mem[64] = _1779 + _926 + _943 + 33
                                                    mem[_1779 + _926 + _943 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1779 + _926 + _943 + 37] = msg.sender
                                                    mem[_1779 + _926 + _943 + 69] = 128
                                                    _2961 = mem[_2901]
                                                    mem[_1779 + _926 + _943 + 165] = mem[_2901]
                                                    s = 0
                                                    while s < _2961:
                                                        mem[s + _1779 + _926 + _943 + 197] = mem[s + _2901 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2961) > _2961:
                                                        mem[_2961 + _1779 + _926 + _943 + 197] = 0
                                                    mem[_1779 + _926 + _943 + 101] = address(cd[36])
                                                    mem[_1779 + _926 + _943 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1779 + _926 + _943 + 165 len ceil32(_2961) + 32]
                                            else:
                                                _1780 = mem[_892]
                                                s = 0
                                                while s < _1780:
                                                    mem[s + _926 + _943 + 33] = mem[s + _892 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1780) <= _1780:
                                                    _2902 = mem[64]
                                                    mem[mem[64]] = _1780 + _926 + _943 + -mem[64] + 1
                                                    mem[64] = _1780 + _926 + _943 + 33
                                                    mem[_1780 + _926 + _943 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1780 + _926 + _943 + 37] = msg.sender
                                                    mem[_1780 + _926 + _943 + 69] = 128
                                                    _2962 = mem[_2902]
                                                    mem[_1780 + _926 + _943 + 165] = mem[_2902]
                                                    s = 0
                                                    while s < _2962:
                                                        mem[s + _1780 + _926 + _943 + 197] = mem[s + _2902 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2962) > _2962:
                                                        mem[_2962 + _1780 + _926 + _943 + 197] = 0
                                                    mem[_1780 + _926 + _943 + 101] = address(cd[36])
                                                    mem[_1780 + _926 + _943 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1780 + _926 + _943 + 165 len ceil32(_2962) + 32]
                                                else:
                                                    mem[_1780 + _926 + _943 + 33] = 0
                                                    _2903 = mem[64]
                                                    mem[mem[64]] = _1780 + _926 + _943 + -mem[64] + 1
                                                    mem[64] = _1780 + _926 + _943 + 33
                                                    mem[_1780 + _926 + _943 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1780 + _926 + _943 + 37] = msg.sender
                                                    mem[_1780 + _926 + _943 + 69] = 128
                                                    _2963 = mem[_2903]
                                                    mem[_1780 + _926 + _943 + 165] = mem[_2903]
                                                    s = 0
                                                    while s < _2963:
                                                        mem[s + _1780 + _926 + _943 + 197] = mem[s + _2903 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2963) > _2963:
                                                        mem[_2963 + _1780 + _926 + _943 + 197] = 0
                                                    mem[_1780 + _926 + _943 + 101] = address(cd[36])
                                                    mem[_1780 + _926 + _943 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1780 + _926 + _943 + 165 len ceil32(_2963) + 32]
                                        else:
                                            t = 0
                                            s = idx + 1
                                            while s:
                                                if not t + 1:
                                                    revert with 0, 17
                                                t = t + 1
                                                s = s / 10
                                                continue 
                                            if t > test266151307():
                                                revert with 0, 65
                                            _1759 = mem[64]
                                            mem[mem[64]] = t
                                            mem[64] = mem[64] + ceil32(t) + 32
                                            if not t:
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1759]:
                                                        revert with 0, 50
                                                    mem[u + _1759 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _2846 = mem[64]
                                                _2870 = mem[128]
                                                s = 0
                                                while s < _2870:
                                                    mem[s + _2846 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_2846 + _2870 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_2870) <= _2870:
                                                    _3840 = mem[_1759]
                                                    s = 0
                                                    while s < _3840:
                                                        mem[s + _2846 + _2870 + 33] = mem[s + _1759 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3840) <= _3840:
                                                        _4572 = mem[64]
                                                        mem[mem[64]] = _3840 + _2846 + _2870 + -mem[64] + 1
                                                        mem[64] = _3840 + _2846 + _2870 + 33
                                                        mem[_3840 + _2846 + _2870 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3840 + _2846 + _2870 + 37] = msg.sender
                                                        mem[_3840 + _2846 + _2870 + 69] = 128
                                                        _4668 = mem[_4572]
                                                        mem[_3840 + _2846 + _2870 + 165] = mem[_4572]
                                                        s = 0
                                                        while s < _4668:
                                                            mem[s + _3840 + _2846 + _2870 + 197] = mem[s + _4572 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4668) > _4668:
                                                            mem[_4668 + _3840 + _2846 + _2870 + 197] = 0
                                                        mem[_3840 + _2846 + _2870 + 101] = address(cd[36])
                                                        mem[_3840 + _2846 + _2870 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3840 + _2846 + _2870 + 165 len ceil32(_4668) + 32]
                                                    else:
                                                        mem[_3840 + _2846 + _2870 + 33] = 0
                                                        _4573 = mem[64]
                                                        mem[mem[64]] = _3840 + _2846 + _2870 + -mem[64] + 1
                                                        mem[64] = _3840 + _2846 + _2870 + 33
                                                        mem[_3840 + _2846 + _2870 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3840 + _2846 + _2870 + 37] = msg.sender
                                                        mem[_3840 + _2846 + _2870 + 69] = 128
                                                        _4669 = mem[_4573]
                                                        mem[_3840 + _2846 + _2870 + 165] = mem[_4573]
                                                        s = 0
                                                        while s < _4669:
                                                            mem[s + _3840 + _2846 + _2870 + 197] = mem[s + _4573 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4669) > _4669:
                                                            mem[_4669 + _3840 + _2846 + _2870 + 197] = 0
                                                        mem[_3840 + _2846 + _2870 + 101] = address(cd[36])
                                                        mem[_3840 + _2846 + _2870 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3840 + _2846 + _2870 + 165 len ceil32(_4669) + 32]
                                                else:
                                                    _3841 = mem[_1759]
                                                    s = 0
                                                    while s < _3841:
                                                        mem[s + _2846 + _2870 + 33] = mem[s + _1759 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3841) <= _3841:
                                                        _4574 = mem[64]
                                                        mem[mem[64]] = _3841 + _2846 + _2870 + -mem[64] + 1
                                                        mem[64] = _3841 + _2846 + _2870 + 33
                                                        mem[_3841 + _2846 + _2870 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3841 + _2846 + _2870 + 37] = msg.sender
                                                        mem[_3841 + _2846 + _2870 + 69] = 128
                                                        _4670 = mem[_4574]
                                                        mem[_3841 + _2846 + _2870 + 165] = mem[_4574]
                                                        s = 0
                                                        while s < _4670:
                                                            mem[s + _3841 + _2846 + _2870 + 197] = mem[s + _4574 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4670) > _4670:
                                                            mem[_4670 + _3841 + _2846 + _2870 + 197] = 0
                                                        mem[_3841 + _2846 + _2870 + 101] = address(cd[36])
                                                        mem[_3841 + _2846 + _2870 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3841 + _2846 + _2870 + 165 len ceil32(_4670) + 32]
                                                    else:
                                                        mem[_3841 + _2846 + _2870 + 33] = 0
                                                        _4575 = mem[64]
                                                        mem[mem[64]] = _3841 + _2846 + _2870 + -mem[64] + 1
                                                        mem[64] = _3841 + _2846 + _2870 + 33
                                                        mem[_3841 + _2846 + _2870 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3841 + _2846 + _2870 + 37] = msg.sender
                                                        mem[_3841 + _2846 + _2870 + 69] = 128
                                                        _4671 = mem[_4575]
                                                        mem[_3841 + _2846 + _2870 + 165] = mem[_4575]
                                                        s = 0
                                                        while s < _4671:
                                                            mem[s + _3841 + _2846 + _2870 + 197] = mem[s + _4575 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4671) > _4671:
                                                            mem[_4671 + _3841 + _2846 + _2870 + 197] = 0
                                                        mem[_3841 + _2846 + _2870 + 101] = address(cd[36])
                                                        mem[_3841 + _2846 + _2870 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3841 + _2846 + _2870 + 165 len ceil32(_4671) + 32]
                                            else:
                                                mem[_1759 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1759]:
                                                        revert with 0, 50
                                                    mem[u + _1759 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _2847 = mem[64]
                                                _2871 = mem[128]
                                                s = 0
                                                while s < _2871:
                                                    mem[s + _2847 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_2847 + _2871 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_2871) <= _2871:
                                                    _3842 = mem[_1759]
                                                    s = 0
                                                    while s < _3842:
                                                        mem[s + _2847 + _2871 + 33] = mem[s + _1759 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3842) <= _3842:
                                                        _4576 = mem[64]
                                                        mem[mem[64]] = _3842 + _2847 + _2871 + -mem[64] + 1
                                                        mem[64] = _3842 + _2847 + _2871 + 33
                                                        mem[_3842 + _2847 + _2871 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3842 + _2847 + _2871 + 37] = msg.sender
                                                        mem[_3842 + _2847 + _2871 + 69] = 128
                                                        _4672 = mem[_4576]
                                                        mem[_3842 + _2847 + _2871 + 165] = mem[_4576]
                                                        s = 0
                                                        while s < _4672:
                                                            mem[s + _3842 + _2847 + _2871 + 197] = mem[s + _4576 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4672) > _4672:
                                                            mem[_4672 + _3842 + _2847 + _2871 + 197] = 0
                                                        mem[_3842 + _2847 + _2871 + 101] = address(cd[36])
                                                        mem[_3842 + _2847 + _2871 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3842 + _2847 + _2871 + 165 len ceil32(_4672) + 32]
                                                    else:
                                                        mem[_3842 + _2847 + _2871 + 33] = 0
                                                        _4577 = mem[64]
                                                        mem[mem[64]] = _3842 + _2847 + _2871 + -mem[64] + 1
                                                        mem[64] = _3842 + _2847 + _2871 + 33
                                                        mem[_3842 + _2847 + _2871 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3842 + _2847 + _2871 + 37] = msg.sender
                                                        mem[_3842 + _2847 + _2871 + 69] = 128
                                                        _4673 = mem[_4577]
                                                        mem[_3842 + _2847 + _2871 + 165] = mem[_4577]
                                                        s = 0
                                                        while s < _4673:
                                                            mem[s + _3842 + _2847 + _2871 + 197] = mem[s + _4577 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4673) > _4673:
                                                            mem[_4673 + _3842 + _2847 + _2871 + 197] = 0
                                                        mem[_3842 + _2847 + _2871 + 101] = address(cd[36])
                                                        mem[_3842 + _2847 + _2871 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3842 + _2847 + _2871 + 165 len ceil32(_4673) + 32]
                                                else:
                                                    _3843 = mem[_1759]
                                                    s = 0
                                                    while s < _3843:
                                                        mem[s + _2847 + _2871 + 33] = mem[s + _1759 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3843) <= _3843:
                                                        _4578 = mem[64]
                                                        mem[mem[64]] = _3843 + _2847 + _2871 + -mem[64] + 1
                                                        mem[64] = _3843 + _2847 + _2871 + 33
                                                        mem[_3843 + _2847 + _2871 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3843 + _2847 + _2871 + 37] = msg.sender
                                                        mem[_3843 + _2847 + _2871 + 69] = 128
                                                        _4674 = mem[_4578]
                                                        mem[_3843 + _2847 + _2871 + 165] = mem[_4578]
                                                        s = 0
                                                        while s < _4674:
                                                            mem[s + _3843 + _2847 + _2871 + 197] = mem[s + _4578 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4674) > _4674:
                                                            mem[_4674 + _3843 + _2847 + _2871 + 197] = 0
                                                        mem[_3843 + _2847 + _2871 + 101] = address(cd[36])
                                                        mem[_3843 + _2847 + _2871 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3843 + _2847 + _2871 + 165 len ceil32(_4674) + 32]
                                                    else:
                                                        mem[_3843 + _2847 + _2871 + 33] = 0
                                                        _4579 = mem[64]
                                                        mem[mem[64]] = _3843 + _2847 + _2871 + -mem[64] + 1
                                                        mem[64] = _3843 + _2847 + _2871 + 33
                                                        mem[_3843 + _2847 + _2871 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3843 + _2847 + _2871 + 37] = msg.sender
                                                        mem[_3843 + _2847 + _2871 + 69] = 128
                                                        _4675 = mem[_4579]
                                                        mem[_3843 + _2847 + _2871 + 165] = mem[_4579]
                                                        s = 0
                                                        while s < _4675:
                                                            mem[s + _3843 + _2847 + _2871 + 197] = mem[s + _4579 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4675) > _4675:
                                                            mem[_4675 + _3843 + _2847 + _2871 + 197] = 0
                                                        mem[_3843 + _2847 + _2871 + 101] = address(cd[36])
                                                        mem[_3843 + _2847 + _2871 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3843 + _2847 + _2871 + 165 len ceil32(_4675) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not idx + 1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                    revert with 0, 17
                                if not cd[68]:
                                    revert with 0, 18
                                if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < cd[68]:
                                    if not -idx:
                                        _827 = mem[64]
                                        mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 128
                                        _841 = mem[128]
                                        mem[mem[64] + 132] = mem[128]
                                        s = 0
                                        while s < mem[128]:
                                            mem[s + mem[64] + 164] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        if ceil32(_841) > _841:
                                            mem[_841 + mem[64] + 164] = 0
                                        mem[mem[64] + 68] = address(cd[36])
                                        mem[_827 + 100] = uint32(cd[100])
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_841) + _827 + -mem[64] + 160]
                                    else:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _890 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_890] = 1
                                            mem[_890 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _925 = mem[64]
                                            _942 = mem[128]
                                            s = 0
                                            while s < _942:
                                                mem[s + _925 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_925 + _942 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_942) <= _942:
                                                _1777 = mem[_890]
                                                s = 0
                                                while s < _1777:
                                                    mem[s + _925 + _942 + 33] = mem[s + _890 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1777) <= _1777:
                                                    _2896 = mem[64]
                                                    mem[mem[64]] = _1777 + _925 + _942 + -mem[64] + 1
                                                    mem[64] = _1777 + _925 + _942 + 33
                                                    mem[_1777 + _925 + _942 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1777 + _925 + _942 + 37] = msg.sender
                                                    mem[_1777 + _925 + _942 + 69] = 128
                                                    _2954 = mem[_2896]
                                                    mem[_1777 + _925 + _942 + 165] = mem[_2896]
                                                    s = 0
                                                    while s < _2954:
                                                        mem[s + _1777 + _925 + _942 + 197] = mem[s + _2896 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2954) > _2954:
                                                        mem[_2954 + _1777 + _925 + _942 + 197] = 0
                                                    mem[_1777 + _925 + _942 + 101] = address(cd[36])
                                                    mem[_1777 + _925 + _942 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1777 + _925 + _942 + 165 len ceil32(_2954) + 32]
                                                else:
                                                    mem[_1777 + _925 + _942 + 33] = 0
                                                    _2897 = mem[64]
                                                    mem[mem[64]] = _1777 + _925 + _942 + -mem[64] + 1
                                                    mem[64] = _1777 + _925 + _942 + 33
                                                    mem[_1777 + _925 + _942 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1777 + _925 + _942 + 37] = msg.sender
                                                    mem[_1777 + _925 + _942 + 69] = 128
                                                    _2955 = mem[_2897]
                                                    mem[_1777 + _925 + _942 + 165] = mem[_2897]
                                                    s = 0
                                                    while s < _2955:
                                                        mem[s + _1777 + _925 + _942 + 197] = mem[s + _2897 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2955) > _2955:
                                                        mem[_2955 + _1777 + _925 + _942 + 197] = 0
                                                    mem[_1777 + _925 + _942 + 101] = address(cd[36])
                                                    mem[_1777 + _925 + _942 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1777 + _925 + _942 + 165 len ceil32(_2955) + 32]
                                            else:
                                                _1778 = mem[_890]
                                                s = 0
                                                while s < _1778:
                                                    mem[s + _925 + _942 + 33] = mem[s + _890 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1778) <= _1778:
                                                    _2898 = mem[64]
                                                    mem[mem[64]] = _1778 + _925 + _942 + -mem[64] + 1
                                                    mem[64] = _1778 + _925 + _942 + 33
                                                    mem[_1778 + _925 + _942 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1778 + _925 + _942 + 37] = msg.sender
                                                    mem[_1778 + _925 + _942 + 69] = 128
                                                    _2956 = mem[_2898]
                                                    mem[_1778 + _925 + _942 + 165] = mem[_2898]
                                                    s = 0
                                                    while s < _2956:
                                                        mem[s + _1778 + _925 + _942 + 197] = mem[s + _2898 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2956) > _2956:
                                                        mem[_2956 + _1778 + _925 + _942 + 197] = 0
                                                    mem[_1778 + _925 + _942 + 101] = address(cd[36])
                                                    mem[_1778 + _925 + _942 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1778 + _925 + _942 + 165 len ceil32(_2956) + 32]
                                                else:
                                                    mem[_1778 + _925 + _942 + 33] = 0
                                                    _2899 = mem[64]
                                                    mem[mem[64]] = _1778 + _925 + _942 + -mem[64] + 1
                                                    mem[64] = _1778 + _925 + _942 + 33
                                                    mem[_1778 + _925 + _942 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1778 + _925 + _942 + 37] = msg.sender
                                                    mem[_1778 + _925 + _942 + 69] = 128
                                                    _2957 = mem[_2899]
                                                    mem[_1778 + _925 + _942 + 165] = mem[_2899]
                                                    s = 0
                                                    while s < _2957:
                                                        mem[s + _1778 + _925 + _942 + 197] = mem[s + _2899 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2957) > _2957:
                                                        mem[_2957 + _1778 + _925 + _942 + 197] = 0
                                                    mem[_1778 + _925 + _942 + 101] = address(cd[36])
                                                    mem[_1778 + _925 + _942 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1778 + _925 + _942 + 165 len ceil32(_2957) + 32]
                                        else:
                                            t = 0
                                            s = idx + 1
                                            while s:
                                                if not t + 1:
                                                    revert with 0, 17
                                                t = t + 1
                                                s = s / 10
                                                continue 
                                            if t > test266151307():
                                                revert with 0, 65
                                            _1758 = mem[64]
                                            mem[mem[64]] = t
                                            mem[64] = mem[64] + ceil32(t) + 32
                                            if not t:
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1758]:
                                                        revert with 0, 50
                                                    mem[u + _1758 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _2844 = mem[64]
                                                _2868 = mem[128]
                                                s = 0
                                                while s < _2868:
                                                    mem[s + _2844 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_2844 + _2868 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_2868) <= _2868:
                                                    _3836 = mem[_1758]
                                                    s = 0
                                                    while s < _3836:
                                                        mem[s + _2844 + _2868 + 33] = mem[s + _1758 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3836) <= _3836:
                                                        _4564 = mem[64]
                                                        mem[mem[64]] = _3836 + _2844 + _2868 + -mem[64] + 1
                                                        mem[64] = _3836 + _2844 + _2868 + 33
                                                        mem[_3836 + _2844 + _2868 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3836 + _2844 + _2868 + 37] = msg.sender
                                                        mem[_3836 + _2844 + _2868 + 69] = 128
                                                        _4660 = mem[_4564]
                                                        mem[_3836 + _2844 + _2868 + 165] = mem[_4564]
                                                        s = 0
                                                        while s < _4660:
                                                            mem[s + _3836 + _2844 + _2868 + 197] = mem[s + _4564 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4660) > _4660:
                                                            mem[_4660 + _3836 + _2844 + _2868 + 197] = 0
                                                        mem[_3836 + _2844 + _2868 + 101] = address(cd[36])
                                                        mem[_3836 + _2844 + _2868 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3836 + _2844 + _2868 + 165 len ceil32(_4660) + 32]
                                                    else:
                                                        mem[_3836 + _2844 + _2868 + 33] = 0
                                                        _4565 = mem[64]
                                                        mem[mem[64]] = _3836 + _2844 + _2868 + -mem[64] + 1
                                                        mem[64] = _3836 + _2844 + _2868 + 33
                                                        mem[_3836 + _2844 + _2868 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3836 + _2844 + _2868 + 37] = msg.sender
                                                        mem[_3836 + _2844 + _2868 + 69] = 128
                                                        _4661 = mem[_4565]
                                                        mem[_3836 + _2844 + _2868 + 165] = mem[_4565]
                                                        s = 0
                                                        while s < _4661:
                                                            mem[s + _3836 + _2844 + _2868 + 197] = mem[s + _4565 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4661) > _4661:
                                                            mem[_4661 + _3836 + _2844 + _2868 + 197] = 0
                                                        mem[_3836 + _2844 + _2868 + 101] = address(cd[36])
                                                        mem[_3836 + _2844 + _2868 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3836 + _2844 + _2868 + 165 len ceil32(_4661) + 32]
                                                else:
                                                    _3837 = mem[_1758]
                                                    s = 0
                                                    while s < _3837:
                                                        mem[s + _2844 + _2868 + 33] = mem[s + _1758 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3837) <= _3837:
                                                        _4566 = mem[64]
                                                        mem[mem[64]] = _3837 + _2844 + _2868 + -mem[64] + 1
                                                        mem[64] = _3837 + _2844 + _2868 + 33
                                                        mem[_3837 + _2844 + _2868 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3837 + _2844 + _2868 + 37] = msg.sender
                                                        mem[_3837 + _2844 + _2868 + 69] = 128
                                                        _4662 = mem[_4566]
                                                        mem[_3837 + _2844 + _2868 + 165] = mem[_4566]
                                                        s = 0
                                                        while s < _4662:
                                                            mem[s + _3837 + _2844 + _2868 + 197] = mem[s + _4566 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4662) > _4662:
                                                            mem[_4662 + _3837 + _2844 + _2868 + 197] = 0
                                                        mem[_3837 + _2844 + _2868 + 101] = address(cd[36])
                                                        mem[_3837 + _2844 + _2868 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3837 + _2844 + _2868 + 165 len ceil32(_4662) + 32]
                                                    else:
                                                        mem[_3837 + _2844 + _2868 + 33] = 0
                                                        _4567 = mem[64]
                                                        mem[mem[64]] = _3837 + _2844 + _2868 + -mem[64] + 1
                                                        mem[64] = _3837 + _2844 + _2868 + 33
                                                        mem[_3837 + _2844 + _2868 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3837 + _2844 + _2868 + 37] = msg.sender
                                                        mem[_3837 + _2844 + _2868 + 69] = 128
                                                        _4663 = mem[_4567]
                                                        mem[_3837 + _2844 + _2868 + 165] = mem[_4567]
                                                        s = 0
                                                        while s < _4663:
                                                            mem[s + _3837 + _2844 + _2868 + 197] = mem[s + _4567 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4663) > _4663:
                                                            mem[_4663 + _3837 + _2844 + _2868 + 197] = 0
                                                        mem[_3837 + _2844 + _2868 + 101] = address(cd[36])
                                                        mem[_3837 + _2844 + _2868 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3837 + _2844 + _2868 + 165 len ceil32(_4663) + 32]
                                            else:
                                                mem[_1758 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1758]:
                                                        revert with 0, 50
                                                    mem[u + _1758 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _2845 = mem[64]
                                                _2869 = mem[128]
                                                s = 0
                                                while s < _2869:
                                                    mem[s + _2845 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_2845 + _2869 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_2869) <= _2869:
                                                    _3838 = mem[_1758]
                                                    s = 0
                                                    while s < _3838:
                                                        mem[s + _2845 + _2869 + 33] = mem[s + _1758 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3838) <= _3838:
                                                        _4568 = mem[64]
                                                        mem[mem[64]] = _3838 + _2845 + _2869 + -mem[64] + 1
                                                        mem[64] = _3838 + _2845 + _2869 + 33
                                                        mem[_3838 + _2845 + _2869 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3838 + _2845 + _2869 + 37] = msg.sender
                                                        mem[_3838 + _2845 + _2869 + 69] = 128
                                                        _4664 = mem[_4568]
                                                        mem[_3838 + _2845 + _2869 + 165] = mem[_4568]
                                                        s = 0
                                                        while s < _4664:
                                                            mem[s + _3838 + _2845 + _2869 + 197] = mem[s + _4568 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4664) > _4664:
                                                            mem[_4664 + _3838 + _2845 + _2869 + 197] = 0
                                                        mem[_3838 + _2845 + _2869 + 101] = address(cd[36])
                                                        mem[_3838 + _2845 + _2869 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3838 + _2845 + _2869 + 165 len ceil32(_4664) + 32]
                                                    else:
                                                        mem[_3838 + _2845 + _2869 + 33] = 0
                                                        _4569 = mem[64]
                                                        mem[mem[64]] = _3838 + _2845 + _2869 + -mem[64] + 1
                                                        mem[64] = _3838 + _2845 + _2869 + 33
                                                        mem[_3838 + _2845 + _2869 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3838 + _2845 + _2869 + 37] = msg.sender
                                                        mem[_3838 + _2845 + _2869 + 69] = 128
                                                        _4665 = mem[_4569]
                                                        mem[_3838 + _2845 + _2869 + 165] = mem[_4569]
                                                        s = 0
                                                        while s < _4665:
                                                            mem[s + _3838 + _2845 + _2869 + 197] = mem[s + _4569 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4665) > _4665:
                                                            mem[_4665 + _3838 + _2845 + _2869 + 197] = 0
                                                        mem[_3838 + _2845 + _2869 + 101] = address(cd[36])
                                                        mem[_3838 + _2845 + _2869 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3838 + _2845 + _2869 + 165 len ceil32(_4665) + 32]
                                                else:
                                                    _3839 = mem[_1758]
                                                    s = 0
                                                    while s < _3839:
                                                        mem[s + _2845 + _2869 + 33] = mem[s + _1758 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3839) <= _3839:
                                                        _4570 = mem[64]
                                                        mem[mem[64]] = _3839 + _2845 + _2869 + -mem[64] + 1
                                                        mem[64] = _3839 + _2845 + _2869 + 33
                                                        mem[_3839 + _2845 + _2869 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3839 + _2845 + _2869 + 37] = msg.sender
                                                        mem[_3839 + _2845 + _2869 + 69] = 128
                                                        _4666 = mem[_4570]
                                                        mem[_3839 + _2845 + _2869 + 165] = mem[_4570]
                                                        s = 0
                                                        while s < _4666:
                                                            mem[s + _3839 + _2845 + _2869 + 197] = mem[s + _4570 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4666) > _4666:
                                                            mem[_4666 + _3839 + _2845 + _2869 + 197] = 0
                                                        mem[_3839 + _2845 + _2869 + 101] = address(cd[36])
                                                        mem[_3839 + _2845 + _2869 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3839 + _2845 + _2869 + 165 len ceil32(_4666) + 32]
                                                    else:
                                                        mem[_3839 + _2845 + _2869 + 33] = 0
                                                        _4571 = mem[64]
                                                        mem[mem[64]] = _3839 + _2845 + _2869 + -mem[64] + 1
                                                        mem[64] = _3839 + _2845 + _2869 + 33
                                                        mem[_3839 + _2845 + _2869 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3839 + _2845 + _2869 + 37] = msg.sender
                                                        mem[_3839 + _2845 + _2869 + 69] = 128
                                                        _4667 = mem[_4571]
                                                        mem[_3839 + _2845 + _2869 + 165] = mem[_4571]
                                                        s = 0
                                                        while s < _4667:
                                                            mem[s + _3839 + _2845 + _2869 + 197] = mem[s + _4571 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4667) > _4667:
                                                            mem[_4667 + _3839 + _2845 + _2869 + 197] = 0
                                                        mem[_3839 + _2845 + _2869 + 101] = address(cd[36])
                                                        mem[_3839 + _2845 + _2869 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3839 + _2845 + _2869 + 165 len ceil32(_4667) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not idx + 1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(stor24.field_0):
                                if not -cd[68]:
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    while idx < cd[68]:
                                        if not -idx:
                                            _830 = mem[64]
                                            mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 128
                                            _844 = mem[128]
                                            mem[mem[64] + 132] = mem[128]
                                            s = 0
                                            while s < _844:
                                                mem[s + mem[64] + 164] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            if ceil32(_844) > _844:
                                                mem[_844 + _830 + 164] = 0
                                            mem[_830 + 68] = address(cd[36])
                                            mem[_830 + 100] = uint32(cd[100])
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(_844) + _830 + -mem[64] + 160]
                                        else:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _896 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_896] = 1
                                                mem[_896 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _928 = mem[64]
                                                _945 = mem[128]
                                                s = 0
                                                while s < _945:
                                                    mem[s + _928 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_928 + _945 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_945) <= _945:
                                                    _1783 = mem[_896]
                                                    s = 0
                                                    while s < _1783:
                                                        mem[s + _928 + _945 + 33] = mem[s + _896 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1783) <= _1783:
                                                        _2908 = mem[64]
                                                        mem[mem[64]] = _1783 + _928 + _945 + -mem[64] + 1
                                                        mem[64] = _1783 + _928 + _945 + 33
                                                        mem[_1783 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1783 + _928 + _945 + 37] = msg.sender
                                                        mem[_1783 + _928 + _945 + 69] = 128
                                                        _2972 = mem[_2908]
                                                        mem[_1783 + _928 + _945 + 165] = mem[_2908]
                                                        s = 0
                                                        while s < _2972:
                                                            mem[s + _1783 + _928 + _945 + 197] = mem[s + _2908 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2972) > _2972:
                                                            mem[_2972 + _1783 + _928 + _945 + 197] = 0
                                                        mem[_1783 + _928 + _945 + 101] = address(cd[36])
                                                        mem[_1783 + _928 + _945 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1783 + _928 + _945 + 165 len ceil32(_2972) + 32]
                                                    else:
                                                        mem[_1783 + _928 + _945 + 33] = 0
                                                        _2909 = mem[64]
                                                        mem[mem[64]] = _1783 + _928 + _945 + -mem[64] + 1
                                                        mem[64] = _1783 + _928 + _945 + 33
                                                        mem[_1783 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1783 + _928 + _945 + 37] = msg.sender
                                                        mem[_1783 + _928 + _945 + 69] = 128
                                                        _2973 = mem[_2909]
                                                        mem[_1783 + _928 + _945 + 165] = mem[_2909]
                                                        s = 0
                                                        while s < _2973:
                                                            mem[s + _1783 + _928 + _945 + 197] = mem[s + _2909 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2973) > _2973:
                                                            mem[_2973 + _1783 + _928 + _945 + 197] = 0
                                                        mem[_1783 + _928 + _945 + 101] = address(cd[36])
                                                        mem[_1783 + _928 + _945 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1783 + _928 + _945 + 165 len ceil32(_2973) + 32]
                                                else:
                                                    _1784 = mem[_896]
                                                    s = 0
                                                    while s < _1784:
                                                        mem[s + _928 + _945 + 33] = mem[s + _896 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1784) <= _1784:
                                                        _2910 = mem[64]
                                                        mem[mem[64]] = _1784 + _928 + _945 + -mem[64] + 1
                                                        mem[64] = _1784 + _928 + _945 + 33
                                                        mem[_1784 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1784 + _928 + _945 + 37] = msg.sender
                                                        mem[_1784 + _928 + _945 + 69] = 128
                                                        _2974 = mem[_2910]
                                                        mem[_1784 + _928 + _945 + 165] = mem[_2910]
                                                        s = 0
                                                        while s < _2974:
                                                            mem[s + _1784 + _928 + _945 + 197] = mem[s + _2910 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2974) > _2974:
                                                            mem[_2974 + _1784 + _928 + _945 + 197] = 0
                                                        mem[_1784 + _928 + _945 + 101] = address(cd[36])
                                                        mem[_1784 + _928 + _945 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1784 + _928 + _945 + 165 len ceil32(_2974) + 32]
                                                    else:
                                                        mem[_1784 + _928 + _945 + 33] = 0
                                                        _2911 = mem[64]
                                                        mem[mem[64]] = _1784 + _928 + _945 + -mem[64] + 1
                                                        mem[64] = _1784 + _928 + _945 + 33
                                                        mem[_1784 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1784 + _928 + _945 + 37] = msg.sender
                                                        mem[_1784 + _928 + _945 + 69] = 128
                                                        _2975 = mem[_2911]
                                                        mem[_1784 + _928 + _945 + 165] = mem[_2911]
                                                        s = 0
                                                        while s < _2975:
                                                            mem[s + _1784 + _928 + _945 + 197] = mem[s + _2911 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2975) > _2975:
                                                            mem[_2975 + _1784 + _928 + _945 + 197] = 0
                                                        mem[_1784 + _928 + _945 + 101] = address(cd[36])
                                                        mem[_1784 + _928 + _945 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1784 + _928 + _945 + 165 len ceil32(_2975) + 32]
                                            else:
                                                t = 0
                                                s = idx + 1
                                                while s:
                                                    if not t + 1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    s = s / 10
                                                    continue 
                                                if t > test266151307():
                                                    revert with 0, 65
                                                _1761 = mem[64]
                                                mem[mem[64]] = t
                                                mem[64] = mem[64] + ceil32(t) + 32
                                                if not t:
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1761]:
                                                            revert with 0, 50
                                                        mem[u + _1761 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _2850 = mem[64]
                                                    _2874 = mem[128]
                                                    s = 0
                                                    while s < _2874:
                                                        mem[s + _2850 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_2850 + _2874 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_2874) <= _2874:
                                                        _3848 = mem[_1761]
                                                        s = 0
                                                        while s < _3848:
                                                            mem[s + _2850 + _2874 + 33] = mem[s + _1761 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3848) <= _3848:
                                                            _4588 = mem[64]
                                                            mem[mem[64]] = _3848 + _2850 + _2874 + -mem[64] + 1
                                                            mem[64] = _3848 + _2850 + _2874 + 33
                                                            mem[_3848 + _2850 + _2874 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3848 + _2850 + _2874 + 37] = msg.sender
                                                            mem[_3848 + _2850 + _2874 + 69] = 128
                                                            _4684 = mem[_4588]
                                                            mem[_3848 + _2850 + _2874 + 165] = mem[_4588]
                                                            s = 0
                                                            while s < _4684:
                                                                mem[s + _3848 + _2850 + _2874 + 197] = mem[s + _4588 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4684) > _4684:
                                                                mem[_4684 + _3848 + _2850 + _2874 + 197] = 0
                                                            mem[_3848 + _2850 + _2874 + 101] = address(cd[36])
                                                            mem[_3848 + _2850 + _2874 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3848 + _2850 + _2874 + 165 len ceil32(_4684) + 32]
                                                        else:
                                                            mem[_3848 + _2850 + _2874 + 33] = 0
                                                            _4589 = mem[64]
                                                            mem[mem[64]] = _3848 + _2850 + _2874 + -mem[64] + 1
                                                            mem[64] = _3848 + _2850 + _2874 + 33
                                                            mem[_3848 + _2850 + _2874 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3848 + _2850 + _2874 + 37] = msg.sender
                                                            mem[_3848 + _2850 + _2874 + 69] = 128
                                                            _4685 = mem[_4589]
                                                            mem[_3848 + _2850 + _2874 + 165] = mem[_4589]
                                                            s = 0
                                                            while s < _4685:
                                                                mem[s + _3848 + _2850 + _2874 + 197] = mem[s + _4589 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4685) > _4685:
                                                                mem[_4685 + _3848 + _2850 + _2874 + 197] = 0
                                                            mem[_3848 + _2850 + _2874 + 101] = address(cd[36])
                                                            mem[_3848 + _2850 + _2874 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3848 + _2850 + _2874 + 165 len ceil32(_4685) + 32]
                                                    else:
                                                        _3849 = mem[_1761]
                                                        s = 0
                                                        while s < _3849:
                                                            mem[s + _2850 + _2874 + 33] = mem[s + _1761 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3849) <= _3849:
                                                            _4590 = mem[64]
                                                            mem[mem[64]] = _3849 + _2850 + _2874 + -mem[64] + 1
                                                            mem[64] = _3849 + _2850 + _2874 + 33
                                                            mem[_3849 + _2850 + _2874 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3849 + _2850 + _2874 + 37] = msg.sender
                                                            mem[_3849 + _2850 + _2874 + 69] = 128
                                                            _4686 = mem[_4590]
                                                            mem[_3849 + _2850 + _2874 + 165] = mem[_4590]
                                                            s = 0
                                                            while s < _4686:
                                                                mem[s + _3849 + _2850 + _2874 + 197] = mem[s + _4590 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4686) > _4686:
                                                                mem[_4686 + _3849 + _2850 + _2874 + 197] = 0
                                                            mem[_3849 + _2850 + _2874 + 101] = address(cd[36])
                                                            mem[_3849 + _2850 + _2874 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3849 + _2850 + _2874 + 165 len ceil32(_4686) + 32]
                                                        else:
                                                            mem[_3849 + _2850 + _2874 + 33] = 0
                                                            _4591 = mem[64]
                                                            mem[mem[64]] = _3849 + _2850 + _2874 + -mem[64] + 1
                                                            mem[64] = _3849 + _2850 + _2874 + 33
                                                            mem[_3849 + _2850 + _2874 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3849 + _2850 + _2874 + 37] = msg.sender
                                                            mem[_3849 + _2850 + _2874 + 69] = 128
                                                            _4687 = mem[_4591]
                                                            mem[_3849 + _2850 + _2874 + 165] = mem[_4591]
                                                            s = 0
                                                            while s < _4687:
                                                                mem[s + _3849 + _2850 + _2874 + 197] = mem[s + _4591 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4687) > _4687:
                                                                mem[_4687 + _3849 + _2850 + _2874 + 197] = 0
                                                            mem[_3849 + _2850 + _2874 + 101] = address(cd[36])
                                                            mem[_3849 + _2850 + _2874 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3849 + _2850 + _2874 + 165 len ceil32(_4687) + 32]
                                                else:
                                                    mem[_1761 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1761]:
                                                            revert with 0, 50
                                                        mem[u + _1761 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _2851 = mem[64]
                                                    _2875 = mem[128]
                                                    s = 0
                                                    while s < _2875:
                                                        mem[s + _2851 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_2851 + _2875 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_2875) <= _2875:
                                                        _3850 = mem[_1761]
                                                        s = 0
                                                        while s < _3850:
                                                            mem[s + _2851 + _2875 + 33] = mem[s + _1761 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3850) <= _3850:
                                                            _4592 = mem[64]
                                                            mem[mem[64]] = _3850 + _2851 + _2875 + -mem[64] + 1
                                                            mem[64] = _3850 + _2851 + _2875 + 33
                                                            mem[_3850 + _2851 + _2875 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3850 + _2851 + _2875 + 37] = msg.sender
                                                            mem[_3850 + _2851 + _2875 + 69] = 128
                                                            _4688 = mem[_4592]
                                                            mem[_3850 + _2851 + _2875 + 165] = mem[_4592]
                                                            s = 0
                                                            while s < _4688:
                                                                mem[s + _3850 + _2851 + _2875 + 197] = mem[s + _4592 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4688) > _4688:
                                                                mem[_4688 + _3850 + _2851 + _2875 + 197] = 0
                                                            mem[_3850 + _2851 + _2875 + 101] = address(cd[36])
                                                            mem[_3850 + _2851 + _2875 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3850 + _2851 + _2875 + 165 len ceil32(_4688) + 32]
                                                        else:
                                                            mem[_3850 + _2851 + _2875 + 33] = 0
                                                            _4593 = mem[64]
                                                            mem[mem[64]] = _3850 + _2851 + _2875 + -mem[64] + 1
                                                            mem[64] = _3850 + _2851 + _2875 + 33
                                                            mem[_3850 + _2851 + _2875 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3850 + _2851 + _2875 + 37] = msg.sender
                                                            mem[_3850 + _2851 + _2875 + 69] = 128
                                                            _4689 = mem[_4593]
                                                            mem[_3850 + _2851 + _2875 + 165] = mem[_4593]
                                                            s = 0
                                                            while s < _4689:
                                                                mem[s + _3850 + _2851 + _2875 + 197] = mem[s + _4593 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4689) > _4689:
                                                                mem[_4689 + _3850 + _2851 + _2875 + 197] = 0
                                                            mem[_3850 + _2851 + _2875 + 101] = address(cd[36])
                                                            mem[_3850 + _2851 + _2875 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3850 + _2851 + _2875 + 165 len ceil32(_4689) + 32]
                                                    else:
                                                        _3851 = mem[_1761]
                                                        s = 0
                                                        while s < _3851:
                                                            mem[s + _2851 + _2875 + 33] = mem[s + _1761 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3851) <= _3851:
                                                            _4594 = mem[64]
                                                            mem[mem[64]] = _3851 + _2851 + _2875 + -mem[64] + 1
                                                            mem[64] = _3851 + _2851 + _2875 + 33
                                                            mem[_3851 + _2851 + _2875 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3851 + _2851 + _2875 + 37] = msg.sender
                                                            mem[_3851 + _2851 + _2875 + 69] = 128
                                                            _4690 = mem[_4594]
                                                            mem[_3851 + _2851 + _2875 + 165] = mem[_4594]
                                                            s = 0
                                                            while s < _4690:
                                                                mem[s + _3851 + _2851 + _2875 + 197] = mem[s + _4594 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4690) > _4690:
                                                                mem[_4690 + _3851 + _2851 + _2875 + 197] = 0
                                                            mem[_3851 + _2851 + _2875 + 101] = address(cd[36])
                                                            mem[_3851 + _2851 + _2875 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3851 + _2851 + _2875 + 165 len ceil32(_4690) + 32]
                                                        else:
                                                            mem[_3851 + _2851 + _2875 + 33] = 0
                                                            _4595 = mem[64]
                                                            mem[mem[64]] = _3851 + _2851 + _2875 + -mem[64] + 1
                                                            mem[64] = _3851 + _2851 + _2875 + 33
                                                            mem[_3851 + _2851 + _2875 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3851 + _2851 + _2875 + 37] = msg.sender
                                                            mem[_3851 + _2851 + _2875 + 69] = 128
                                                            _4691 = mem[_4595]
                                                            mem[_3851 + _2851 + _2875 + 165] = mem[_4595]
                                                            s = 0
                                                            while s < _4691:
                                                                mem[s + _3851 + _2851 + _2875 + 197] = mem[s + _4595 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4691) > _4691:
                                                                mem[_4691 + _3851 + _2851 + _2875 + 197] = 0
                                                            mem[_3851 + _2851 + _2875 + 101] = address(cd[36])
                                                            mem[_3851 + _2851 + _2875 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3851 + _2851 + _2875 + 165 len ceil32(_4691) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not idx + 1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                        revert with 0, 17
                                    if not cd[68]:
                                        revert with 0, 18
                                    if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    while idx < cd[68]:
                                        if not -idx:
                                            _829 = mem[64]
                                            mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 128
                                            _843 = mem[128]
                                            mem[mem[64] + 132] = mem[128]
                                            s = 0
                                            while s < mem[128]:
                                                mem[s + mem[64] + 164] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            if ceil32(_843) > _843:
                                                mem[_843 + mem[64] + 164] = 0
                                            mem[mem[64] + 68] = address(cd[36])
                                            mem[_829 + 100] = uint32(cd[100])
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(_843) + _829 + -mem[64] + 160]
                                        else:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _894 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_894] = 1
                                                mem[_894 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _927 = mem[64]
                                                _944 = mem[128]
                                                s = 0
                                                while s < _944:
                                                    mem[s + _927 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_927 + _944 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_944) <= _944:
                                                    _1781 = mem[_894]
                                                    s = 0
                                                    while s < _1781:
                                                        mem[s + _927 + _944 + 33] = mem[s + _894 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1781) <= _1781:
                                                        _2904 = mem[64]
                                                        mem[mem[64]] = _1781 + _927 + _944 + -mem[64] + 1
                                                        mem[64] = _1781 + _927 + _944 + 33
                                                        mem[_1781 + _927 + _944 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1781 + _927 + _944 + 37] = msg.sender
                                                        mem[_1781 + _927 + _944 + 69] = 128
                                                        _2966 = mem[_2904]
                                                        mem[_1781 + _927 + _944 + 165] = mem[_2904]
                                                        s = 0
                                                        while s < _2966:
                                                            mem[s + _1781 + _927 + _944 + 197] = mem[s + _2904 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2966) > _2966:
                                                            mem[_2966 + _1781 + _927 + _944 + 197] = 0
                                                        mem[_1781 + _927 + _944 + 101] = address(cd[36])
                                                        mem[_1781 + _927 + _944 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1781 + _927 + _944 + 165 len ceil32(_2966) + 32]
                                                    else:
                                                        mem[_1781 + _927 + _944 + 33] = 0
                                                        _2905 = mem[64]
                                                        mem[mem[64]] = _1781 + _927 + _944 + -mem[64] + 1
                                                        mem[64] = _1781 + _927 + _944 + 33
                                                        mem[_1781 + _927 + _944 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1781 + _927 + _944 + 37] = msg.sender
                                                        mem[_1781 + _927 + _944 + 69] = 128
                                                        _2967 = mem[_2905]
                                                        mem[_1781 + _927 + _944 + 165] = mem[_2905]
                                                        s = 0
                                                        while s < _2967:
                                                            mem[s + _1781 + _927 + _944 + 197] = mem[s + _2905 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2967) > _2967:
                                                            mem[_2967 + _1781 + _927 + _944 + 197] = 0
                                                        mem[_1781 + _927 + _944 + 101] = address(cd[36])
                                                        mem[_1781 + _927 + _944 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1781 + _927 + _944 + 165 len ceil32(_2967) + 32]
                                                else:
                                                    _1782 = mem[_894]
                                                    s = 0
                                                    while s < _1782:
                                                        mem[s + _927 + _944 + 33] = mem[s + _894 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1782) <= _1782:
                                                        _2906 = mem[64]
                                                        mem[mem[64]] = _1782 + _927 + _944 + -mem[64] + 1
                                                        mem[64] = _1782 + _927 + _944 + 33
                                                        mem[_1782 + _927 + _944 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1782 + _927 + _944 + 37] = msg.sender
                                                        mem[_1782 + _927 + _944 + 69] = 128
                                                        _2968 = mem[_2906]
                                                        mem[_1782 + _927 + _944 + 165] = mem[_2906]
                                                        s = 0
                                                        while s < _2968:
                                                            mem[s + _1782 + _927 + _944 + 197] = mem[s + _2906 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2968) > _2968:
                                                            mem[_2968 + _1782 + _927 + _944 + 197] = 0
                                                        mem[_1782 + _927 + _944 + 101] = address(cd[36])
                                                        mem[_1782 + _927 + _944 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1782 + _927 + _944 + 165 len ceil32(_2968) + 32]
                                                    else:
                                                        mem[_1782 + _927 + _944 + 33] = 0
                                                        _2907 = mem[64]
                                                        mem[mem[64]] = _1782 + _927 + _944 + -mem[64] + 1
                                                        mem[64] = _1782 + _927 + _944 + 33
                                                        mem[_1782 + _927 + _944 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1782 + _927 + _944 + 37] = msg.sender
                                                        mem[_1782 + _927 + _944 + 69] = 128
                                                        _2969 = mem[_2907]
                                                        mem[_1782 + _927 + _944 + 165] = mem[_2907]
                                                        s = 0
                                                        while s < _2969:
                                                            mem[s + _1782 + _927 + _944 + 197] = mem[s + _2907 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2969) > _2969:
                                                            mem[_2969 + _1782 + _927 + _944 + 197] = 0
                                                        mem[_1782 + _927 + _944 + 101] = address(cd[36])
                                                        mem[_1782 + _927 + _944 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1782 + _927 + _944 + 165 len ceil32(_2969) + 32]
                                            else:
                                                t = 0
                                                s = idx + 1
                                                while s:
                                                    if not t + 1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    s = s / 10
                                                    continue 
                                                if t > test266151307():
                                                    revert with 0, 65
                                                _1760 = mem[64]
                                                mem[mem[64]] = t
                                                mem[64] = mem[64] + ceil32(t) + 32
                                                if not t:
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1760]:
                                                            revert with 0, 50
                                                        mem[u + _1760 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _2848 = mem[64]
                                                    _2872 = mem[128]
                                                    s = 0
                                                    while s < _2872:
                                                        mem[s + _2848 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_2848 + _2872 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_2872) <= _2872:
                                                        _3844 = mem[_1760]
                                                        s = 0
                                                        while s < _3844:
                                                            mem[s + _2848 + _2872 + 33] = mem[s + _1760 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3844) <= _3844:
                                                            _4580 = mem[64]
                                                            mem[mem[64]] = _3844 + _2848 + _2872 + -mem[64] + 1
                                                            mem[64] = _3844 + _2848 + _2872 + 33
                                                            mem[_3844 + _2848 + _2872 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3844 + _2848 + _2872 + 37] = msg.sender
                                                            mem[_3844 + _2848 + _2872 + 69] = 128
                                                            _4676 = mem[_4580]
                                                            mem[_3844 + _2848 + _2872 + 165] = mem[_4580]
                                                            s = 0
                                                            while s < _4676:
                                                                mem[s + _3844 + _2848 + _2872 + 197] = mem[s + _4580 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4676) > _4676:
                                                                mem[_4676 + _3844 + _2848 + _2872 + 197] = 0
                                                            mem[_3844 + _2848 + _2872 + 101] = address(cd[36])
                                                            mem[_3844 + _2848 + _2872 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3844 + _2848 + _2872 + 165 len ceil32(_4676) + 32]
                                                        else:
                                                            mem[_3844 + _2848 + _2872 + 33] = 0
                                                            _4581 = mem[64]
                                                            mem[mem[64]] = _3844 + _2848 + _2872 + -mem[64] + 1
                                                            mem[64] = _3844 + _2848 + _2872 + 33
                                                            mem[_3844 + _2848 + _2872 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3844 + _2848 + _2872 + 37] = msg.sender
                                                            mem[_3844 + _2848 + _2872 + 69] = 128
                                                            _4677 = mem[_4581]
                                                            mem[_3844 + _2848 + _2872 + 165] = mem[_4581]
                                                            s = 0
                                                            while s < _4677:
                                                                mem[s + _3844 + _2848 + _2872 + 197] = mem[s + _4581 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4677) > _4677:
                                                                mem[_4677 + _3844 + _2848 + _2872 + 197] = 0
                                                            mem[_3844 + _2848 + _2872 + 101] = address(cd[36])
                                                            mem[_3844 + _2848 + _2872 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3844 + _2848 + _2872 + 165 len ceil32(_4677) + 32]
                                                    else:
                                                        _3845 = mem[_1760]
                                                        s = 0
                                                        while s < _3845:
                                                            mem[s + _2848 + _2872 + 33] = mem[s + _1760 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3845) <= _3845:
                                                            _4582 = mem[64]
                                                            mem[mem[64]] = _3845 + _2848 + _2872 + -mem[64] + 1
                                                            mem[64] = _3845 + _2848 + _2872 + 33
                                                            mem[_3845 + _2848 + _2872 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3845 + _2848 + _2872 + 37] = msg.sender
                                                            mem[_3845 + _2848 + _2872 + 69] = 128
                                                            _4678 = mem[_4582]
                                                            mem[_3845 + _2848 + _2872 + 165] = mem[_4582]
                                                            s = 0
                                                            while s < _4678:
                                                                mem[s + _3845 + _2848 + _2872 + 197] = mem[s + _4582 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4678) > _4678:
                                                                mem[_4678 + _3845 + _2848 + _2872 + 197] = 0
                                                            mem[_3845 + _2848 + _2872 + 101] = address(cd[36])
                                                            mem[_3845 + _2848 + _2872 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3845 + _2848 + _2872 + 165 len ceil32(_4678) + 32]
                                                        else:
                                                            mem[_3845 + _2848 + _2872 + 33] = 0
                                                            _4583 = mem[64]
                                                            mem[mem[64]] = _3845 + _2848 + _2872 + -mem[64] + 1
                                                            mem[64] = _3845 + _2848 + _2872 + 33
                                                            mem[_3845 + _2848 + _2872 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3845 + _2848 + _2872 + 37] = msg.sender
                                                            mem[_3845 + _2848 + _2872 + 69] = 128
                                                            _4679 = mem[_4583]
                                                            mem[_3845 + _2848 + _2872 + 165] = mem[_4583]
                                                            s = 0
                                                            while s < _4679:
                                                                mem[s + _3845 + _2848 + _2872 + 197] = mem[s + _4583 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4679) > _4679:
                                                                mem[_4679 + _3845 + _2848 + _2872 + 197] = 0
                                                            mem[_3845 + _2848 + _2872 + 101] = address(cd[36])
                                                            mem[_3845 + _2848 + _2872 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3845 + _2848 + _2872 + 165 len ceil32(_4679) + 32]
                                                else:
                                                    mem[_1760 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1760]:
                                                            revert with 0, 50
                                                        mem[u + _1760 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _2849 = mem[64]
                                                    _2873 = mem[128]
                                                    s = 0
                                                    while s < _2873:
                                                        mem[s + _2849 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_2849 + _2873 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_2873) <= _2873:
                                                        _3846 = mem[_1760]
                                                        s = 0
                                                        while s < _3846:
                                                            mem[s + _2849 + _2873 + 33] = mem[s + _1760 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3846) <= _3846:
                                                            _4584 = mem[64]
                                                            mem[mem[64]] = _3846 + _2849 + _2873 + -mem[64] + 1
                                                            mem[64] = _3846 + _2849 + _2873 + 33
                                                            mem[_3846 + _2849 + _2873 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3846 + _2849 + _2873 + 37] = msg.sender
                                                            mem[_3846 + _2849 + _2873 + 69] = 128
                                                            _4680 = mem[_4584]
                                                            mem[_3846 + _2849 + _2873 + 165] = mem[_4584]
                                                            s = 0
                                                            while s < _4680:
                                                                mem[s + _3846 + _2849 + _2873 + 197] = mem[s + _4584 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4680) > _4680:
                                                                mem[_4680 + _3846 + _2849 + _2873 + 197] = 0
                                                            mem[_3846 + _2849 + _2873 + 101] = address(cd[36])
                                                            mem[_3846 + _2849 + _2873 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3846 + _2849 + _2873 + 165 len ceil32(_4680) + 32]
                                                        else:
                                                            mem[_3846 + _2849 + _2873 + 33] = 0
                                                            _4585 = mem[64]
                                                            mem[mem[64]] = _3846 + _2849 + _2873 + -mem[64] + 1
                                                            mem[64] = _3846 + _2849 + _2873 + 33
                                                            mem[_3846 + _2849 + _2873 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3846 + _2849 + _2873 + 37] = msg.sender
                                                            mem[_3846 + _2849 + _2873 + 69] = 128
                                                            _4681 = mem[_4585]
                                                            mem[_3846 + _2849 + _2873 + 165] = mem[_4585]
                                                            s = 0
                                                            while s < _4681:
                                                                mem[s + _3846 + _2849 + _2873 + 197] = mem[s + _4585 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4681) > _4681:
                                                                mem[_4681 + _3846 + _2849 + _2873 + 197] = 0
                                                            mem[_3846 + _2849 + _2873 + 101] = address(cd[36])
                                                            mem[_3846 + _2849 + _2873 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3846 + _2849 + _2873 + 165 len ceil32(_4681) + 32]
                                                    else:
                                                        _3847 = mem[_1760]
                                                        s = 0
                                                        while s < _3847:
                                                            mem[s + _2849 + _2873 + 33] = mem[s + _1760 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3847) <= _3847:
                                                            _4586 = mem[64]
                                                            mem[mem[64]] = _3847 + _2849 + _2873 + -mem[64] + 1
                                                            mem[64] = _3847 + _2849 + _2873 + 33
                                                            mem[_3847 + _2849 + _2873 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3847 + _2849 + _2873 + 37] = msg.sender
                                                            mem[_3847 + _2849 + _2873 + 69] = 128
                                                            _4682 = mem[_4586]
                                                            mem[_3847 + _2849 + _2873 + 165] = mem[_4586]
                                                            s = 0
                                                            while s < _4682:
                                                                mem[s + _3847 + _2849 + _2873 + 197] = mem[s + _4586 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4682) > _4682:
                                                                mem[_4682 + _3847 + _2849 + _2873 + 197] = 0
                                                            mem[_3847 + _2849 + _2873 + 101] = address(cd[36])
                                                            mem[_3847 + _2849 + _2873 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3847 + _2849 + _2873 + 165 len ceil32(_4682) + 32]
                                                        else:
                                                            mem[_3847 + _2849 + _2873 + 33] = 0
                                                            _4587 = mem[64]
                                                            mem[mem[64]] = _3847 + _2849 + _2873 + -mem[64] + 1
                                                            mem[64] = _3847 + _2849 + _2873 + 33
                                                            mem[_3847 + _2849 + _2873 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3847 + _2849 + _2873 + 37] = msg.sender
                                                            mem[_3847 + _2849 + _2873 + 69] = 128
                                                            _4683 = mem[_4587]
                                                            mem[_3847 + _2849 + _2873 + 165] = mem[_4587]
                                                            s = 0
                                                            while s < _4683:
                                                                mem[s + _3847 + _2849 + _2873 + 197] = mem[s + _4587 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4683) > _4683:
                                                                mem[_4683 + _3847 + _2849 + _2873 + 197] = 0
                                                            mem[_3847 + _2849 + _2873 + 101] = address(cd[36])
                                                            mem[_3847 + _2849 + _2873 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3847 + _2849 + _2873 + 165 len ceil32(_4683) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not idx + 1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if owner == msg.sender:
                                    if not -cd[68]:
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < cd[68]:
                                            if not -idx:
                                                _832 = mem[64]
                                                mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 128
                                                _846 = mem[128]
                                                mem[mem[64] + 132] = mem[128]
                                                s = 0
                                                while s < _846:
                                                    mem[s + mem[64] + 164] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_846) > _846:
                                                    mem[_846 + _832 + 164] = 0
                                                mem[_832 + 68] = address(cd[36])
                                                mem[_832 + 100] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(_846) + _832 + -mem[64] + 160]
                                            else:
                                                if 1 > !idx:
                                                    revert with 0, 17
                                                if not -idx - 1:
                                                    _900 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_900] = 1
                                                    mem[_900 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    _930 = mem[64]
                                                    _947 = mem[128]
                                                    s = 0
                                                    while s < _947:
                                                        mem[s + _930 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_930 + _947 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_947) <= _947:
                                                        _1787 = mem[_900]
                                                        s = 0
                                                        while s < _1787:
                                                            mem[s + _930 + _947 + 33] = mem[s + _900 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1787) <= _1787:
                                                            _2916 = mem[64]
                                                            mem[mem[64]] = _1787 + _930 + _947 + -mem[64] + 1
                                                            mem[64] = _1787 + _930 + _947 + 33
                                                            mem[_1787 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1787 + _930 + _947 + 37] = msg.sender
                                                            mem[_1787 + _930 + _947 + 69] = 128
                                                            _2984 = mem[_2916]
                                                            mem[_1787 + _930 + _947 + 165] = mem[_2916]
                                                            s = 0
                                                            while s < _2984:
                                                                mem[s + _1787 + _930 + _947 + 197] = mem[s + _2916 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2984) > _2984:
                                                                mem[_2984 + _1787 + _930 + _947 + 197] = 0
                                                            mem[_1787 + _930 + _947 + 101] = address(cd[36])
                                                            mem[_1787 + _930 + _947 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1787 + _930 + _947 + 165 len ceil32(_2984) + 32]
                                                        else:
                                                            mem[_1787 + _930 + _947 + 33] = 0
                                                            _2917 = mem[64]
                                                            mem[mem[64]] = _1787 + _930 + _947 + -mem[64] + 1
                                                            mem[64] = _1787 + _930 + _947 + 33
                                                            mem[_1787 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1787 + _930 + _947 + 37] = msg.sender
                                                            mem[_1787 + _930 + _947 + 69] = 128
                                                            _2985 = mem[_2917]
                                                            mem[_1787 + _930 + _947 + 165] = mem[_2917]
                                                            s = 0
                                                            while s < _2985:
                                                                mem[s + _1787 + _930 + _947 + 197] = mem[s + _2917 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2985) > _2985:
                                                                mem[_2985 + _1787 + _930 + _947 + 197] = 0
                                                            mem[_1787 + _930 + _947 + 101] = address(cd[36])
                                                            mem[_1787 + _930 + _947 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1787 + _930 + _947 + 165 len ceil32(_2985) + 32]
                                                    else:
                                                        _1788 = mem[_900]
                                                        s = 0
                                                        while s < _1788:
                                                            mem[s + _930 + _947 + 33] = mem[s + _900 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1788) <= _1788:
                                                            _2918 = mem[64]
                                                            mem[mem[64]] = _1788 + _930 + _947 + -mem[64] + 1
                                                            mem[64] = _1788 + _930 + _947 + 33
                                                            mem[_1788 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1788 + _930 + _947 + 37] = msg.sender
                                                            mem[_1788 + _930 + _947 + 69] = 128
                                                            _2986 = mem[_2918]
                                                            mem[_1788 + _930 + _947 + 165] = mem[_2918]
                                                            s = 0
                                                            while s < _2986:
                                                                mem[s + _1788 + _930 + _947 + 197] = mem[s + _2918 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2986) > _2986:
                                                                mem[_2986 + _1788 + _930 + _947 + 197] = 0
                                                            mem[_1788 + _930 + _947 + 101] = address(cd[36])
                                                            mem[_1788 + _930 + _947 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1788 + _930 + _947 + 165 len ceil32(_2986) + 32]
                                                        else:
                                                            mem[_1788 + _930 + _947 + 33] = 0
                                                            _2919 = mem[64]
                                                            mem[mem[64]] = _1788 + _930 + _947 + -mem[64] + 1
                                                            mem[64] = _1788 + _930 + _947 + 33
                                                            mem[_1788 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1788 + _930 + _947 + 37] = msg.sender
                                                            mem[_1788 + _930 + _947 + 69] = 128
                                                            _2987 = mem[_2919]
                                                            mem[_1788 + _930 + _947 + 165] = mem[_2919]
                                                            s = 0
                                                            while s < _2987:
                                                                mem[s + _1788 + _930 + _947 + 197] = mem[s + _2919 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2987) > _2987:
                                                                mem[_2987 + _1788 + _930 + _947 + 197] = 0
                                                            mem[_1788 + _930 + _947 + 101] = address(cd[36])
                                                            mem[_1788 + _930 + _947 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1788 + _930 + _947 + 165 len ceil32(_2987) + 32]
                                                else:
                                                    t = 0
                                                    s = idx + 1
                                                    while s:
                                                        if not t + 1:
                                                            revert with 0, 17
                                                        t = t + 1
                                                        s = s / 10
                                                        continue 
                                                    if t > test266151307():
                                                        revert with 0, 65
                                                    _1763 = mem[64]
                                                    mem[mem[64]] = t
                                                    mem[64] = mem[64] + ceil32(t) + 32
                                                    if not t:
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1763]:
                                                                revert with 0, 50
                                                            mem[u + _1763 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2854 = mem[64]
                                                        _2878 = mem[128]
                                                        s = 0
                                                        while s < _2878:
                                                            mem[s + _2854 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2854 + _2878 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2878) <= _2878:
                                                            _3856 = mem[_1763]
                                                            s = 0
                                                            while s < _3856:
                                                                mem[s + _2854 + _2878 + 33] = mem[s + _1763 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3856) <= _3856:
                                                                _4604 = mem[64]
                                                                mem[mem[64]] = _3856 + _2854 + _2878 + -mem[64] + 1
                                                                mem[64] = _3856 + _2854 + _2878 + 33
                                                                mem[_3856 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3856 + _2854 + _2878 + 37] = msg.sender
                                                                mem[_3856 + _2854 + _2878 + 69] = 128
                                                                _4700 = mem[_4604]
                                                                mem[_3856 + _2854 + _2878 + 165] = mem[_4604]
                                                                s = 0
                                                                while s < _4700:
                                                                    mem[s + _3856 + _2854 + _2878 + 197] = mem[s + _4604 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4700) > _4700:
                                                                    mem[_4700 + _3856 + _2854 + _2878 + 197] = 0
                                                                mem[_3856 + _2854 + _2878 + 101] = address(cd[36])
                                                                mem[_3856 + _2854 + _2878 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3856 + _2854 + _2878 + 165 len ceil32(_4700) + 32]
                                                            else:
                                                                mem[_3856 + _2854 + _2878 + 33] = 0
                                                                _4605 = mem[64]
                                                                mem[mem[64]] = _3856 + _2854 + _2878 + -mem[64] + 1
                                                                mem[64] = _3856 + _2854 + _2878 + 33
                                                                mem[_3856 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3856 + _2854 + _2878 + 37] = msg.sender
                                                                mem[_3856 + _2854 + _2878 + 69] = 128
                                                                _4701 = mem[_4605]
                                                                mem[_3856 + _2854 + _2878 + 165] = mem[_4605]
                                                                s = 0
                                                                while s < _4701:
                                                                    mem[s + _3856 + _2854 + _2878 + 197] = mem[s + _4605 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4701) > _4701:
                                                                    mem[_4701 + _3856 + _2854 + _2878 + 197] = 0
                                                                mem[_3856 + _2854 + _2878 + 101] = address(cd[36])
                                                                mem[_3856 + _2854 + _2878 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3856 + _2854 + _2878 + 165 len ceil32(_4701) + 32]
                                                        else:
                                                            _3857 = mem[_1763]
                                                            s = 0
                                                            while s < _3857:
                                                                mem[s + _2854 + _2878 + 33] = mem[s + _1763 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3857) <= _3857:
                                                                _4606 = mem[64]
                                                                mem[mem[64]] = _3857 + _2854 + _2878 + -mem[64] + 1
                                                                mem[64] = _3857 + _2854 + _2878 + 33
                                                                mem[_3857 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3857 + _2854 + _2878 + 37] = msg.sender
                                                                mem[_3857 + _2854 + _2878 + 69] = 128
                                                                _4702 = mem[_4606]
                                                                mem[_3857 + _2854 + _2878 + 165] = mem[_4606]
                                                                s = 0
                                                                while s < _4702:
                                                                    mem[s + _3857 + _2854 + _2878 + 197] = mem[s + _4606 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4702) > _4702:
                                                                    mem[_4702 + _3857 + _2854 + _2878 + 197] = 0
                                                                mem[_3857 + _2854 + _2878 + 101] = address(cd[36])
                                                                mem[_3857 + _2854 + _2878 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3857 + _2854 + _2878 + 165 len ceil32(_4702) + 32]
                                                            else:
                                                                mem[_3857 + _2854 + _2878 + 33] = 0
                                                                _4607 = mem[64]
                                                                mem[mem[64]] = _3857 + _2854 + _2878 + -mem[64] + 1
                                                                mem[64] = _3857 + _2854 + _2878 + 33
                                                                mem[_3857 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3857 + _2854 + _2878 + 37] = msg.sender
                                                                mem[_3857 + _2854 + _2878 + 69] = 128
                                                                _4703 = mem[_4607]
                                                                mem[_3857 + _2854 + _2878 + 165] = mem[_4607]
                                                                s = 0
                                                                while s < _4703:
                                                                    mem[s + _3857 + _2854 + _2878 + 197] = mem[s + _4607 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4703) > _4703:
                                                                    mem[_4703 + _3857 + _2854 + _2878 + 197] = 0
                                                                mem[_3857 + _2854 + _2878 + 101] = address(cd[36])
                                                                mem[_3857 + _2854 + _2878 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3857 + _2854 + _2878 + 165 len ceil32(_4703) + 32]
                                                    else:
                                                        mem[_1763 + 32 len t] = call.data[calldata.size len t]
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1763]:
                                                                revert with 0, 50
                                                            mem[u + _1763 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2855 = mem[64]
                                                        _2879 = mem[128]
                                                        s = 0
                                                        while s < _2879:
                                                            mem[s + _2855 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2855 + _2879 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2879) <= _2879:
                                                            _3858 = mem[_1763]
                                                            s = 0
                                                            while s < _3858:
                                                                mem[s + _2855 + _2879 + 33] = mem[s + _1763 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3858) <= _3858:
                                                                _4608 = mem[64]
                                                                mem[mem[64]] = _3858 + _2855 + _2879 + -mem[64] + 1
                                                                mem[64] = _3858 + _2855 + _2879 + 33
                                                                mem[_3858 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3858 + _2855 + _2879 + 37] = msg.sender
                                                                mem[_3858 + _2855 + _2879 + 69] = 128
                                                                _4704 = mem[_4608]
                                                                mem[_3858 + _2855 + _2879 + 165] = mem[_4608]
                                                                s = 0
                                                                while s < _4704:
                                                                    mem[s + _3858 + _2855 + _2879 + 197] = mem[s + _4608 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4704) > _4704:
                                                                    mem[_4704 + _3858 + _2855 + _2879 + 197] = 0
                                                                mem[_3858 + _2855 + _2879 + 101] = address(cd[36])
                                                                mem[_3858 + _2855 + _2879 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3858 + _2855 + _2879 + 165 len ceil32(_4704) + 32]
                                                            else:
                                                                mem[_3858 + _2855 + _2879 + 33] = 0
                                                                _4609 = mem[64]
                                                                mem[mem[64]] = _3858 + _2855 + _2879 + -mem[64] + 1
                                                                mem[64] = _3858 + _2855 + _2879 + 33
                                                                mem[_3858 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3858 + _2855 + _2879 + 37] = msg.sender
                                                                mem[_3858 + _2855 + _2879 + 69] = 128
                                                                _4705 = mem[_4609]
                                                                mem[_3858 + _2855 + _2879 + 165] = mem[_4609]
                                                                s = 0
                                                                while s < _4705:
                                                                    mem[s + _3858 + _2855 + _2879 + 197] = mem[s + _4609 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4705) > _4705:
                                                                    mem[_4705 + _3858 + _2855 + _2879 + 197] = 0
                                                                mem[_3858 + _2855 + _2879 + 101] = address(cd[36])
                                                                mem[_3858 + _2855 + _2879 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3858 + _2855 + _2879 + 165 len ceil32(_4705) + 32]
                                                        else:
                                                            _3859 = mem[_1763]
                                                            s = 0
                                                            while s < _3859:
                                                                mem[s + _2855 + _2879 + 33] = mem[s + _1763 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3859) <= _3859:
                                                                _4610 = mem[64]
                                                                mem[mem[64]] = _3859 + _2855 + _2879 + -mem[64] + 1
                                                                mem[64] = _3859 + _2855 + _2879 + 33
                                                                mem[_3859 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3859 + _2855 + _2879 + 37] = msg.sender
                                                                mem[_3859 + _2855 + _2879 + 69] = 128
                                                                _4706 = mem[_4610]
                                                                mem[_3859 + _2855 + _2879 + 165] = mem[_4610]
                                                                s = 0
                                                                while s < _4706:
                                                                    mem[s + _3859 + _2855 + _2879 + 197] = mem[s + _4610 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4706) > _4706:
                                                                    mem[_4706 + _3859 + _2855 + _2879 + 197] = 0
                                                                mem[_3859 + _2855 + _2879 + 101] = address(cd[36])
                                                                mem[_3859 + _2855 + _2879 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3859 + _2855 + _2879 + 165 len ceil32(_4706) + 32]
                                                            else:
                                                                mem[_3859 + _2855 + _2879 + 33] = 0
                                                                _4611 = mem[64]
                                                                mem[mem[64]] = _3859 + _2855 + _2879 + -mem[64] + 1
                                                                mem[64] = _3859 + _2855 + _2879 + 33
                                                                mem[_3859 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3859 + _2855 + _2879 + 37] = msg.sender
                                                                mem[_3859 + _2855 + _2879 + 69] = 128
                                                                _4707 = mem[_4611]
                                                                mem[_3859 + _2855 + _2879 + 165] = mem[_4611]
                                                                s = 0
                                                                while s < _4707:
                                                                    mem[s + _3859 + _2855 + _2879 + 197] = mem[s + _4611 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4707) > _4707:
                                                                    mem[_4707 + _3859 + _2855 + _2879 + 197] = 0
                                                                mem[_3859 + _2855 + _2879 + 101] = address(cd[36])
                                                                mem[_3859 + _2855 + _2879 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3859 + _2855 + _2879 + 165 len ceil32(_4707) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                            revert with 0, 17
                                        if not cd[68]:
                                            revert with 0, 18
                                        if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < cd[68]:
                                            if not -idx:
                                                _831 = mem[64]
                                                mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 128
                                                _845 = mem[128]
                                                mem[mem[64] + 132] = mem[128]
                                                s = 0
                                                while s < mem[128]:
                                                    mem[s + mem[64] + 164] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_845) > _845:
                                                    mem[_845 + mem[64] + 164] = 0
                                                mem[mem[64] + 68] = address(cd[36])
                                                mem[_831 + 100] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(_845) + _831 + -mem[64] + 160]
                                            else:
                                                if 1 > !idx:
                                                    revert with 0, 17
                                                if not -idx - 1:
                                                    _898 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_898] = 1
                                                    mem[_898 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    _929 = mem[64]
                                                    _946 = mem[128]
                                                    s = 0
                                                    while s < _946:
                                                        mem[s + _929 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_929 + _946 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_946) <= _946:
                                                        _1785 = mem[_898]
                                                        s = 0
                                                        while s < _1785:
                                                            mem[s + _929 + _946 + 33] = mem[s + _898 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1785) <= _1785:
                                                            _2912 = mem[64]
                                                            mem[mem[64]] = _1785 + _929 + _946 + -mem[64] + 1
                                                            mem[64] = _1785 + _929 + _946 + 33
                                                            mem[_1785 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1785 + _929 + _946 + 37] = msg.sender
                                                            mem[_1785 + _929 + _946 + 69] = 128
                                                            _2978 = mem[_2912]
                                                            mem[_1785 + _929 + _946 + 165] = mem[_2912]
                                                            s = 0
                                                            while s < _2978:
                                                                mem[s + _1785 + _929 + _946 + 197] = mem[s + _2912 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2978) > _2978:
                                                                mem[_2978 + _1785 + _929 + _946 + 197] = 0
                                                            mem[_1785 + _929 + _946 + 101] = address(cd[36])
                                                            mem[_1785 + _929 + _946 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1785 + _929 + _946 + 165 len ceil32(_2978) + 32]
                                                        else:
                                                            mem[_1785 + _929 + _946 + 33] = 0
                                                            _2913 = mem[64]
                                                            mem[mem[64]] = _1785 + _929 + _946 + -mem[64] + 1
                                                            mem[64] = _1785 + _929 + _946 + 33
                                                            mem[_1785 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1785 + _929 + _946 + 37] = msg.sender
                                                            mem[_1785 + _929 + _946 + 69] = 128
                                                            _2979 = mem[_2913]
                                                            mem[_1785 + _929 + _946 + 165] = mem[_2913]
                                                            s = 0
                                                            while s < _2979:
                                                                mem[s + _1785 + _929 + _946 + 197] = mem[s + _2913 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2979) > _2979:
                                                                mem[_2979 + _1785 + _929 + _946 + 197] = 0
                                                            mem[_1785 + _929 + _946 + 101] = address(cd[36])
                                                            mem[_1785 + _929 + _946 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1785 + _929 + _946 + 165 len ceil32(_2979) + 32]
                                                    else:
                                                        _1786 = mem[_898]
                                                        s = 0
                                                        while s < _1786:
                                                            mem[s + _929 + _946 + 33] = mem[s + _898 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1786) <= _1786:
                                                            _2914 = mem[64]
                                                            mem[mem[64]] = _1786 + _929 + _946 + -mem[64] + 1
                                                            mem[64] = _1786 + _929 + _946 + 33
                                                            mem[_1786 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1786 + _929 + _946 + 37] = msg.sender
                                                            mem[_1786 + _929 + _946 + 69] = 128
                                                            _2980 = mem[_2914]
                                                            mem[_1786 + _929 + _946 + 165] = mem[_2914]
                                                            s = 0
                                                            while s < _2980:
                                                                mem[s + _1786 + _929 + _946 + 197] = mem[s + _2914 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2980) > _2980:
                                                                mem[_2980 + _1786 + _929 + _946 + 197] = 0
                                                            mem[_1786 + _929 + _946 + 101] = address(cd[36])
                                                            mem[_1786 + _929 + _946 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1786 + _929 + _946 + 165 len ceil32(_2980) + 32]
                                                        else:
                                                            mem[_1786 + _929 + _946 + 33] = 0
                                                            _2915 = mem[64]
                                                            mem[mem[64]] = _1786 + _929 + _946 + -mem[64] + 1
                                                            mem[64] = _1786 + _929 + _946 + 33
                                                            mem[_1786 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1786 + _929 + _946 + 37] = msg.sender
                                                            mem[_1786 + _929 + _946 + 69] = 128
                                                            _2981 = mem[_2915]
                                                            mem[_1786 + _929 + _946 + 165] = mem[_2915]
                                                            s = 0
                                                            while s < _2981:
                                                                mem[s + _1786 + _929 + _946 + 197] = mem[s + _2915 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2981) > _2981:
                                                                mem[_2981 + _1786 + _929 + _946 + 197] = 0
                                                            mem[_1786 + _929 + _946 + 101] = address(cd[36])
                                                            mem[_1786 + _929 + _946 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1786 + _929 + _946 + 165 len ceil32(_2981) + 32]
                                                else:
                                                    t = 0
                                                    s = idx + 1
                                                    while s:
                                                        if not t + 1:
                                                            revert with 0, 17
                                                        t = t + 1
                                                        s = s / 10
                                                        continue 
                                                    if t > test266151307():
                                                        revert with 0, 65
                                                    _1762 = mem[64]
                                                    mem[mem[64]] = t
                                                    mem[64] = mem[64] + ceil32(t) + 32
                                                    if not t:
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1762]:
                                                                revert with 0, 50
                                                            mem[u + _1762 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2852 = mem[64]
                                                        _2876 = mem[128]
                                                        s = 0
                                                        while s < _2876:
                                                            mem[s + _2852 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2852 + _2876 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2876) <= _2876:
                                                            _3852 = mem[_1762]
                                                            s = 0
                                                            while s < _3852:
                                                                mem[s + _2852 + _2876 + 33] = mem[s + _1762 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3852) <= _3852:
                                                                _4596 = mem[64]
                                                                mem[mem[64]] = _3852 + _2852 + _2876 + -mem[64] + 1
                                                                mem[64] = _3852 + _2852 + _2876 + 33
                                                                mem[_3852 + _2852 + _2876 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3852 + _2852 + _2876 + 37] = msg.sender
                                                                mem[_3852 + _2852 + _2876 + 69] = 128
                                                                _4692 = mem[_4596]
                                                                mem[_3852 + _2852 + _2876 + 165] = mem[_4596]
                                                                s = 0
                                                                while s < _4692:
                                                                    mem[s + _3852 + _2852 + _2876 + 197] = mem[s + _4596 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4692) > _4692:
                                                                    mem[_4692 + _3852 + _2852 + _2876 + 197] = 0
                                                                mem[_3852 + _2852 + _2876 + 101] = address(cd[36])
                                                                mem[_3852 + _2852 + _2876 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3852 + _2852 + _2876 + 165 len ceil32(_4692) + 32]
                                                            else:
                                                                mem[_3852 + _2852 + _2876 + 33] = 0
                                                                _4597 = mem[64]
                                                                mem[mem[64]] = _3852 + _2852 + _2876 + -mem[64] + 1
                                                                mem[64] = _3852 + _2852 + _2876 + 33
                                                                mem[_3852 + _2852 + _2876 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3852 + _2852 + _2876 + 37] = msg.sender
                                                                mem[_3852 + _2852 + _2876 + 69] = 128
                                                                _4693 = mem[_4597]
                                                                mem[_3852 + _2852 + _2876 + 165] = mem[_4597]
                                                                s = 0
                                                                while s < _4693:
                                                                    mem[s + _3852 + _2852 + _2876 + 197] = mem[s + _4597 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4693) > _4693:
                                                                    mem[_4693 + _3852 + _2852 + _2876 + 197] = 0
                                                                mem[_3852 + _2852 + _2876 + 101] = address(cd[36])
                                                                mem[_3852 + _2852 + _2876 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3852 + _2852 + _2876 + 165 len ceil32(_4693) + 32]
                                                        else:
                                                            _3853 = mem[_1762]
                                                            s = 0
                                                            while s < _3853:
                                                                mem[s + _2852 + _2876 + 33] = mem[s + _1762 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3853) <= _3853:
                                                                _4598 = mem[64]
                                                                mem[mem[64]] = _3853 + _2852 + _2876 + -mem[64] + 1
                                                                mem[64] = _3853 + _2852 + _2876 + 33
                                                                mem[_3853 + _2852 + _2876 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3853 + _2852 + _2876 + 37] = msg.sender
                                                                mem[_3853 + _2852 + _2876 + 69] = 128
                                                                _4694 = mem[_4598]
                                                                mem[_3853 + _2852 + _2876 + 165] = mem[_4598]
                                                                s = 0
                                                                while s < _4694:
                                                                    mem[s + _3853 + _2852 + _2876 + 197] = mem[s + _4598 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4694) > _4694:
                                                                    mem[_4694 + _3853 + _2852 + _2876 + 197] = 0
                                                                mem[_3853 + _2852 + _2876 + 101] = address(cd[36])
                                                                mem[_3853 + _2852 + _2876 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3853 + _2852 + _2876 + 165 len ceil32(_4694) + 32]
                                                            else:
                                                                mem[_3853 + _2852 + _2876 + 33] = 0
                                                                _4599 = mem[64]
                                                                mem[mem[64]] = _3853 + _2852 + _2876 + -mem[64] + 1
                                                                mem[64] = _3853 + _2852 + _2876 + 33
                                                                mem[_3853 + _2852 + _2876 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3853 + _2852 + _2876 + 37] = msg.sender
                                                                mem[_3853 + _2852 + _2876 + 69] = 128
                                                                _4695 = mem[_4599]
                                                                mem[_3853 + _2852 + _2876 + 165] = mem[_4599]
                                                                s = 0
                                                                while s < _4695:
                                                                    mem[s + _3853 + _2852 + _2876 + 197] = mem[s + _4599 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4695) > _4695:
                                                                    mem[_4695 + _3853 + _2852 + _2876 + 197] = 0
                                                                mem[_3853 + _2852 + _2876 + 101] = address(cd[36])
                                                                mem[_3853 + _2852 + _2876 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3853 + _2852 + _2876 + 165 len ceil32(_4695) + 32]
                                                    else:
                                                        mem[_1762 + 32 len t] = call.data[calldata.size len t]
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1762]:
                                                                revert with 0, 50
                                                            mem[u + _1762 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2853 = mem[64]
                                                        _2877 = mem[128]
                                                        s = 0
                                                        while s < _2877:
                                                            mem[s + _2853 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2853 + _2877 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2877) <= _2877:
                                                            _3854 = mem[_1762]
                                                            s = 0
                                                            while s < _3854:
                                                                mem[s + _2853 + _2877 + 33] = mem[s + _1762 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3854) <= _3854:
                                                                _4600 = mem[64]
                                                                mem[mem[64]] = _3854 + _2853 + _2877 + -mem[64] + 1
                                                                mem[64] = _3854 + _2853 + _2877 + 33
                                                                mem[_3854 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3854 + _2853 + _2877 + 37] = msg.sender
                                                                mem[_3854 + _2853 + _2877 + 69] = 128
                                                                _4696 = mem[_4600]
                                                                mem[_3854 + _2853 + _2877 + 165] = mem[_4600]
                                                                s = 0
                                                                while s < _4696:
                                                                    mem[s + _3854 + _2853 + _2877 + 197] = mem[s + _4600 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4696) > _4696:
                                                                    mem[_4696 + _3854 + _2853 + _2877 + 197] = 0
                                                                mem[_3854 + _2853 + _2877 + 101] = address(cd[36])
                                                                mem[_3854 + _2853 + _2877 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3854 + _2853 + _2877 + 165 len ceil32(_4696) + 32]
                                                            else:
                                                                mem[_3854 + _2853 + _2877 + 33] = 0
                                                                _4601 = mem[64]
                                                                mem[mem[64]] = _3854 + _2853 + _2877 + -mem[64] + 1
                                                                mem[64] = _3854 + _2853 + _2877 + 33
                                                                mem[_3854 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3854 + _2853 + _2877 + 37] = msg.sender
                                                                mem[_3854 + _2853 + _2877 + 69] = 128
                                                                _4697 = mem[_4601]
                                                                mem[_3854 + _2853 + _2877 + 165] = mem[_4601]
                                                                s = 0
                                                                while s < _4697:
                                                                    mem[s + _3854 + _2853 + _2877 + 197] = mem[s + _4601 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4697) > _4697:
                                                                    mem[_4697 + _3854 + _2853 + _2877 + 197] = 0
                                                                mem[_3854 + _2853 + _2877 + 101] = address(cd[36])
                                                                mem[_3854 + _2853 + _2877 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3854 + _2853 + _2877 + 165 len ceil32(_4697) + 32]
                                                        else:
                                                            _3855 = mem[_1762]
                                                            s = 0
                                                            while s < _3855:
                                                                mem[s + _2853 + _2877 + 33] = mem[s + _1762 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3855) <= _3855:
                                                                _4602 = mem[64]
                                                                mem[mem[64]] = _3855 + _2853 + _2877 + -mem[64] + 1
                                                                mem[64] = _3855 + _2853 + _2877 + 33
                                                                mem[_3855 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3855 + _2853 + _2877 + 37] = msg.sender
                                                                mem[_3855 + _2853 + _2877 + 69] = 128
                                                                _4698 = mem[_4602]
                                                                mem[_3855 + _2853 + _2877 + 165] = mem[_4602]
                                                                s = 0
                                                                while s < _4698:
                                                                    mem[s + _3855 + _2853 + _2877 + 197] = mem[s + _4602 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4698) > _4698:
                                                                    mem[_4698 + _3855 + _2853 + _2877 + 197] = 0
                                                                mem[_3855 + _2853 + _2877 + 101] = address(cd[36])
                                                                mem[_3855 + _2853 + _2877 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3855 + _2853 + _2877 + 165 len ceil32(_4698) + 32]
                                                            else:
                                                                mem[_3855 + _2853 + _2877 + 33] = 0
                                                                _4603 = mem[64]
                                                                mem[mem[64]] = _3855 + _2853 + _2877 + -mem[64] + 1
                                                                mem[64] = _3855 + _2853 + _2877 + 33
                                                                mem[_3855 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3855 + _2853 + _2877 + 37] = msg.sender
                                                                mem[_3855 + _2853 + _2877 + 69] = 128
                                                                _4699 = mem[_4603]
                                                                mem[_3855 + _2853 + _2877 + 165] = mem[_4603]
                                                                s = 0
                                                                while s < _4699:
                                                                    mem[s + _3855 + _2853 + _2877 + 197] = mem[s + _4603 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4699) > _4699:
                                                                    mem[_4699 + _3855 + _2853 + _2877 + 197] = 0
                                                                mem[_3855 + _2853 + _2877 + 101] = address(cd[36])
                                                                mem[_3855 + _2853 + _2877 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3855 + _2853 + _2877 + 165 len ceil32(_4699) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[0] = msg.sender
                                    mem[32] = 27
                                    if stor27[address(msg.sender)]:
                                        if not -cd[68]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            idx = 0
                                            while idx < cd[68]:
                                                if not -idx:
                                                    _834 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _848 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < _848:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_848) > _848:
                                                        mem[_848 + _834 + 164] = 0
                                                    mem[_834 + 68] = address(cd[36])
                                                    mem[_834 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_848) + _834 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _904 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_904] = 1
                                                        mem[_904 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _932 = mem[64]
                                                        _949 = mem[128]
                                                        s = 0
                                                        while s < _949:
                                                            mem[s + _932 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_932 + _949 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_949) <= _949:
                                                            _1791 = mem[_904]
                                                            s = 0
                                                            while s < _1791:
                                                                mem[s + _932 + _949 + 33] = mem[s + _904 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1791) <= _1791:
                                                                _2924 = mem[64]
                                                                mem[mem[64]] = _1791 + _932 + _949 + -mem[64] + 1
                                                                mem[64] = _1791 + _932 + _949 + 33
                                                                mem[_1791 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1791 + _932 + _949 + 37] = msg.sender
                                                                mem[_1791 + _932 + _949 + 69] = 128
                                                                _2996 = mem[_2924]
                                                                mem[_1791 + _932 + _949 + 165] = mem[_2924]
                                                                s = 0
                                                                while s < _2996:
                                                                    mem[s + _1791 + _932 + _949 + 197] = mem[s + _2924 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2996) > _2996:
                                                                    mem[_2996 + _1791 + _932 + _949 + 197] = 0
                                                                mem[_1791 + _932 + _949 + 101] = address(cd[36])
                                                                mem[_1791 + _932 + _949 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1791 + _932 + _949 + 165 len ceil32(_2996) + 32]
                                                            else:
                                                                mem[_1791 + _932 + _949 + 33] = 0
                                                                _2925 = mem[64]
                                                                mem[mem[64]] = _1791 + _932 + _949 + -mem[64] + 1
                                                                mem[64] = _1791 + _932 + _949 + 33
                                                                mem[_1791 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1791 + _932 + _949 + 37] = msg.sender
                                                                mem[_1791 + _932 + _949 + 69] = 128
                                                                _2997 = mem[_2925]
                                                                mem[_1791 + _932 + _949 + 165] = mem[_2925]
                                                                s = 0
                                                                while s < _2997:
                                                                    mem[s + _1791 + _932 + _949 + 197] = mem[s + _2925 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2997) > _2997:
                                                                    mem[_2997 + _1791 + _932 + _949 + 197] = 0
                                                                mem[_1791 + _932 + _949 + 101] = address(cd[36])
                                                                mem[_1791 + _932 + _949 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1791 + _932 + _949 + 165 len ceil32(_2997) + 32]
                                                        else:
                                                            _1792 = mem[_904]
                                                            s = 0
                                                            while s < _1792:
                                                                mem[s + _932 + _949 + 33] = mem[s + _904 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1792) <= _1792:
                                                                _2926 = mem[64]
                                                                mem[mem[64]] = _1792 + _932 + _949 + -mem[64] + 1
                                                                mem[64] = _1792 + _932 + _949 + 33
                                                                mem[_1792 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1792 + _932 + _949 + 37] = msg.sender
                                                                mem[_1792 + _932 + _949 + 69] = 128
                                                                _2998 = mem[_2926]
                                                                mem[_1792 + _932 + _949 + 165] = mem[_2926]
                                                                s = 0
                                                                while s < _2998:
                                                                    mem[s + _1792 + _932 + _949 + 197] = mem[s + _2926 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2998) > _2998:
                                                                    mem[_2998 + _1792 + _932 + _949 + 197] = 0
                                                                mem[_1792 + _932 + _949 + 101] = address(cd[36])
                                                                mem[_1792 + _932 + _949 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1792 + _932 + _949 + 165 len ceil32(_2998) + 32]
                                                            else:
                                                                mem[_1792 + _932 + _949 + 33] = 0
                                                                _2927 = mem[64]
                                                                mem[mem[64]] = _1792 + _932 + _949 + -mem[64] + 1
                                                                mem[64] = _1792 + _932 + _949 + 33
                                                                mem[_1792 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1792 + _932 + _949 + 37] = msg.sender
                                                                mem[_1792 + _932 + _949 + 69] = 128
                                                                _2999 = mem[_2927]
                                                                mem[_1792 + _932 + _949 + 165] = mem[_2927]
                                                                s = 0
                                                                while s < _2999:
                                                                    mem[s + _1792 + _932 + _949 + 197] = mem[s + _2927 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2999) > _2999:
                                                                    mem[_2999 + _1792 + _932 + _949 + 197] = 0
                                                                mem[_1792 + _932 + _949 + 101] = address(cd[36])
                                                                mem[_1792 + _932 + _949 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1792 + _932 + _949 + 165 len ceil32(_2999) + 32]
                                                    else:
                                                        t = 0
                                                        s = idx + 1
                                                        while s:
                                                            if not t + 1:
                                                                revert with 0, 17
                                                            t = t + 1
                                                            s = s / 10
                                                            continue 
                                                        if t > test266151307():
                                                            revert with 0, 65
                                                        _1765 = mem[64]
                                                        mem[mem[64]] = t
                                                        mem[64] = mem[64] + ceil32(t) + 32
                                                        if not t:
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1765]:
                                                                    revert with 0, 50
                                                                mem[u + _1765 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2858 = mem[64]
                                                            _2882 = mem[128]
                                                            s = 0
                                                            while s < _2882:
                                                                mem[s + _2858 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2858 + _2882 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2882) <= _2882:
                                                                _3864 = mem[_1765]
                                                                s = 0
                                                                while s < _3864:
                                                                    mem[s + _2858 + _2882 + 33] = mem[s + _1765 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3864) <= _3864:
                                                                    _4620 = mem[64]
                                                                    mem[mem[64]] = _3864 + _2858 + _2882 + -mem[64] + 1
                                                                    mem[64] = _3864 + _2858 + _2882 + 33
                                                                    mem[_3864 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3864 + _2858 + _2882 + 37] = msg.sender
                                                                    mem[_3864 + _2858 + _2882 + 69] = 128
                                                                    _4716 = mem[_4620]
                                                                    mem[_3864 + _2858 + _2882 + 165] = mem[_4620]
                                                                    s = 0
                                                                    while s < _4716:
                                                                        mem[s + _3864 + _2858 + _2882 + 197] = mem[s + _4620 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4716) > _4716:
                                                                        mem[_4716 + _3864 + _2858 + _2882 + 197] = 0
                                                                    mem[_3864 + _2858 + _2882 + 101] = address(cd[36])
                                                                    mem[_3864 + _2858 + _2882 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3864 + _2858 + _2882 + 165 len ceil32(_4716) + 32]
                                                                else:
                                                                    mem[_3864 + _2858 + _2882 + 33] = 0
                                                                    _4621 = mem[64]
                                                                    mem[mem[64]] = _3864 + _2858 + _2882 + -mem[64] + 1
                                                                    mem[64] = _3864 + _2858 + _2882 + 33
                                                                    mem[_3864 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3864 + _2858 + _2882 + 37] = msg.sender
                                                                    mem[_3864 + _2858 + _2882 + 69] = 128
                                                                    _4717 = mem[_4621]
                                                                    mem[_3864 + _2858 + _2882 + 165] = mem[_4621]
                                                                    s = 0
                                                                    while s < _4717:
                                                                        mem[s + _3864 + _2858 + _2882 + 197] = mem[s + _4621 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4717) > _4717:
                                                                        mem[_4717 + _3864 + _2858 + _2882 + 197] = 0
                                                                    mem[_3864 + _2858 + _2882 + 101] = address(cd[36])
                                                                    mem[_3864 + _2858 + _2882 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3864 + _2858 + _2882 + 165 len ceil32(_4717) + 32]
                                                            else:
                                                                _3865 = mem[_1765]
                                                                s = 0
                                                                while s < _3865:
                                                                    mem[s + _2858 + _2882 + 33] = mem[s + _1765 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3865) <= _3865:
                                                                    _4622 = mem[64]
                                                                    mem[mem[64]] = _3865 + _2858 + _2882 + -mem[64] + 1
                                                                    mem[64] = _3865 + _2858 + _2882 + 33
                                                                    mem[_3865 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3865 + _2858 + _2882 + 37] = msg.sender
                                                                    mem[_3865 + _2858 + _2882 + 69] = 128
                                                                    _4718 = mem[_4622]
                                                                    mem[_3865 + _2858 + _2882 + 165] = mem[_4622]
                                                                    s = 0
                                                                    while s < _4718:
                                                                        mem[s + _3865 + _2858 + _2882 + 197] = mem[s + _4622 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4718) > _4718:
                                                                        mem[_4718 + _3865 + _2858 + _2882 + 197] = 0
                                                                    mem[_3865 + _2858 + _2882 + 101] = address(cd[36])
                                                                    mem[_3865 + _2858 + _2882 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3865 + _2858 + _2882 + 165 len ceil32(_4718) + 32]
                                                                else:
                                                                    mem[_3865 + _2858 + _2882 + 33] = 0
                                                                    _4623 = mem[64]
                                                                    mem[mem[64]] = _3865 + _2858 + _2882 + -mem[64] + 1
                                                                    mem[64] = _3865 + _2858 + _2882 + 33
                                                                    mem[_3865 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3865 + _2858 + _2882 + 37] = msg.sender
                                                                    mem[_3865 + _2858 + _2882 + 69] = 128
                                                                    _4719 = mem[_4623]
                                                                    mem[_3865 + _2858 + _2882 + 165] = mem[_4623]
                                                                    s = 0
                                                                    while s < _4719:
                                                                        mem[s + _3865 + _2858 + _2882 + 197] = mem[s + _4623 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4719) > _4719:
                                                                        mem[_4719 + _3865 + _2858 + _2882 + 197] = 0
                                                                    mem[_3865 + _2858 + _2882 + 101] = address(cd[36])
                                                                    mem[_3865 + _2858 + _2882 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3865 + _2858 + _2882 + 165 len ceil32(_4719) + 32]
                                                        else:
                                                            mem[_1765 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1765]:
                                                                    revert with 0, 50
                                                                mem[u + _1765 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2859 = mem[64]
                                                            _2883 = mem[128]
                                                            s = 0
                                                            while s < _2883:
                                                                mem[s + _2859 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2859 + _2883 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2883) <= _2883:
                                                                _3866 = mem[_1765]
                                                                s = 0
                                                                while s < _3866:
                                                                    mem[s + _2859 + _2883 + 33] = mem[s + _1765 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3866) <= _3866:
                                                                    _4624 = mem[64]
                                                                    mem[mem[64]] = _3866 + _2859 + _2883 + -mem[64] + 1
                                                                    mem[64] = _3866 + _2859 + _2883 + 33
                                                                    mem[_3866 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3866 + _2859 + _2883 + 37] = msg.sender
                                                                    mem[_3866 + _2859 + _2883 + 69] = 128
                                                                    _4720 = mem[_4624]
                                                                    mem[_3866 + _2859 + _2883 + 165] = mem[_4624]
                                                                    s = 0
                                                                    while s < _4720:
                                                                        mem[s + _3866 + _2859 + _2883 + 197] = mem[s + _4624 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4720) > _4720:
                                                                        mem[_4720 + _3866 + _2859 + _2883 + 197] = 0
                                                                    mem[_3866 + _2859 + _2883 + 101] = address(cd[36])
                                                                    mem[_3866 + _2859 + _2883 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3866 + _2859 + _2883 + 165 len ceil32(_4720) + 32]
                                                                else:
                                                                    mem[_3866 + _2859 + _2883 + 33] = 0
                                                                    _4625 = mem[64]
                                                                    mem[mem[64]] = _3866 + _2859 + _2883 + -mem[64] + 1
                                                                    mem[64] = _3866 + _2859 + _2883 + 33
                                                                    mem[_3866 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3866 + _2859 + _2883 + 37] = msg.sender
                                                                    mem[_3866 + _2859 + _2883 + 69] = 128
                                                                    _4721 = mem[_4625]
                                                                    mem[_3866 + _2859 + _2883 + 165] = mem[_4625]
                                                                    s = 0
                                                                    while s < _4721:
                                                                        mem[s + _3866 + _2859 + _2883 + 197] = mem[s + _4625 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4721) > _4721:
                                                                        mem[_4721 + _3866 + _2859 + _2883 + 197] = 0
                                                                    mem[_3866 + _2859 + _2883 + 101] = address(cd[36])
                                                                    mem[_3866 + _2859 + _2883 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3866 + _2859 + _2883 + 165 len ceil32(_4721) + 32]
                                                            else:
                                                                _3867 = mem[_1765]
                                                                s = 0
                                                                while s < _3867:
                                                                    mem[s + _2859 + _2883 + 33] = mem[s + _1765 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3867) <= _3867:
                                                                    _4626 = mem[64]
                                                                    mem[mem[64]] = _3867 + _2859 + _2883 + -mem[64] + 1
                                                                    mem[64] = _3867 + _2859 + _2883 + 33
                                                                    mem[_3867 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3867 + _2859 + _2883 + 37] = msg.sender
                                                                    mem[_3867 + _2859 + _2883 + 69] = 128
                                                                    _4722 = mem[_4626]
                                                                    mem[_3867 + _2859 + _2883 + 165] = mem[_4626]
                                                                    s = 0
                                                                    while s < _4722:
                                                                        mem[s + _3867 + _2859 + _2883 + 197] = mem[s + _4626 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4722) > _4722:
                                                                        mem[_4722 + _3867 + _2859 + _2883 + 197] = 0
                                                                    mem[_3867 + _2859 + _2883 + 101] = address(cd[36])
                                                                    mem[_3867 + _2859 + _2883 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3867 + _2859 + _2883 + 165 len ceil32(_4722) + 32]
                                                                else:
                                                                    mem[_3867 + _2859 + _2883 + 33] = 0
                                                                    _4627 = mem[64]
                                                                    mem[mem[64]] = _3867 + _2859 + _2883 + -mem[64] + 1
                                                                    mem[64] = _3867 + _2859 + _2883 + 33
                                                                    mem[_3867 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3867 + _2859 + _2883 + 37] = msg.sender
                                                                    mem[_3867 + _2859 + _2883 + 69] = 128
                                                                    _4723 = mem[_4627]
                                                                    mem[_3867 + _2859 + _2883 + 165] = mem[_4627]
                                                                    s = 0
                                                                    while s < _4723:
                                                                        mem[s + _3867 + _2859 + _2883 + 197] = mem[s + _4627 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4723) > _4723:
                                                                        mem[_4723 + _3867 + _2859 + _2883 + 197] = 0
                                                                    mem[_3867 + _2859 + _2883 + 101] = address(cd[36])
                                                                    mem[_3867 + _2859 + _2883 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3867 + _2859 + _2883 + 165 len ceil32(_4723) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not idx + 1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                                revert with 0, 17
                                            if not cd[68]:
                                                revert with 0, 18
                                            if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            idx = 0
                                            while idx < cd[68]:
                                                if not -idx:
                                                    _833 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _847 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < mem[128]:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_847) > _847:
                                                        mem[_847 + mem[64] + 164] = 0
                                                    mem[mem[64] + 68] = address(cd[36])
                                                    mem[_833 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_847) + _833 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _902 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_902] = 1
                                                        mem[_902 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _931 = mem[64]
                                                        _948 = mem[128]
                                                        s = 0
                                                        while s < _948:
                                                            mem[s + _931 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_931 + _948 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_948) <= _948:
                                                            _1789 = mem[_902]
                                                            s = 0
                                                            while s < _1789:
                                                                mem[s + _931 + _948 + 33] = mem[s + _902 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1789) <= _1789:
                                                                _2920 = mem[64]
                                                                mem[mem[64]] = _1789 + _931 + _948 + -mem[64] + 1
                                                                mem[64] = _1789 + _931 + _948 + 33
                                                                mem[_1789 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1789 + _931 + _948 + 37] = msg.sender
                                                                mem[_1789 + _931 + _948 + 69] = 128
                                                                _2990 = mem[_2920]
                                                                mem[_1789 + _931 + _948 + 165] = mem[_2920]
                                                                s = 0
                                                                while s < _2990:
                                                                    mem[s + _1789 + _931 + _948 + 197] = mem[s + _2920 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2990) > _2990:
                                                                    mem[_2990 + _1789 + _931 + _948 + 197] = 0
                                                                mem[_1789 + _931 + _948 + 101] = address(cd[36])
                                                                mem[_1789 + _931 + _948 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1789 + _931 + _948 + 165 len ceil32(_2990) + 32]
                                                            else:
                                                                mem[_1789 + _931 + _948 + 33] = 0
                                                                _2921 = mem[64]
                                                                mem[mem[64]] = _1789 + _931 + _948 + -mem[64] + 1
                                                                mem[64] = _1789 + _931 + _948 + 33
                                                                mem[_1789 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1789 + _931 + _948 + 37] = msg.sender
                                                                mem[_1789 + _931 + _948 + 69] = 128
                                                                _2991 = mem[_2921]
                                                                mem[_1789 + _931 + _948 + 165] = mem[_2921]
                                                                s = 0
                                                                while s < _2991:
                                                                    mem[s + _1789 + _931 + _948 + 197] = mem[s + _2921 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2991) > _2991:
                                                                    mem[_2991 + _1789 + _931 + _948 + 197] = 0
                                                                mem[_1789 + _931 + _948 + 101] = address(cd[36])
                                                                mem[_1789 + _931 + _948 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1789 + _931 + _948 + 165 len ceil32(_2991) + 32]
                                                        else:
                                                            _1790 = mem[_902]
                                                            s = 0
                                                            while s < _1790:
                                                                mem[s + _931 + _948 + 33] = mem[s + _902 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1790) <= _1790:
                                                                _2922 = mem[64]
                                                                mem[mem[64]] = _1790 + _931 + _948 + -mem[64] + 1
                                                                mem[64] = _1790 + _931 + _948 + 33
                                                                mem[_1790 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1790 + _931 + _948 + 37] = msg.sender
                                                                mem[_1790 + _931 + _948 + 69] = 128
                                                                _2992 = mem[_2922]
                                                                mem[_1790 + _931 + _948 + 165] = mem[_2922]
                                                                s = 0
                                                                while s < _2992:
                                                                    mem[s + _1790 + _931 + _948 + 197] = mem[s + _2922 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2992) > _2992:
                                                                    mem[_2992 + _1790 + _931 + _948 + 197] = 0
                                                                mem[_1790 + _931 + _948 + 101] = address(cd[36])
                                                                mem[_1790 + _931 + _948 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1790 + _931 + _948 + 165 len ceil32(_2992) + 32]
                                                            else:
                                                                mem[_1790 + _931 + _948 + 33] = 0
                                                                _2923 = mem[64]
                                                                mem[mem[64]] = _1790 + _931 + _948 + -mem[64] + 1
                                                                mem[64] = _1790 + _931 + _948 + 33
                                                                mem[_1790 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1790 + _931 + _948 + 37] = msg.sender
                                                                mem[_1790 + _931 + _948 + 69] = 128
                                                                _2993 = mem[_2923]
                                                                mem[_1790 + _931 + _948 + 165] = mem[_2923]
                                                                s = 0
                                                                while s < _2993:
                                                                    mem[s + _1790 + _931 + _948 + 197] = mem[s + _2923 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_2993) > _2993:
                                                                    mem[_2993 + _1790 + _931 + _948 + 197] = 0
                                                                mem[_1790 + _931 + _948 + 101] = address(cd[36])
                                                                mem[_1790 + _931 + _948 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1790 + _931 + _948 + 165 len ceil32(_2993) + 32]
                                                    else:
                                                        t = 0
                                                        s = idx + 1
                                                        while s:
                                                            if not t + 1:
                                                                revert with 0, 17
                                                            t = t + 1
                                                            s = s / 10
                                                            continue 
                                                        if t > test266151307():
                                                            revert with 0, 65
                                                        _1764 = mem[64]
                                                        mem[mem[64]] = t
                                                        mem[64] = mem[64] + ceil32(t) + 32
                                                        if not t:
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1764]:
                                                                    revert with 0, 50
                                                                mem[u + _1764 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2856 = mem[64]
                                                            _2880 = mem[128]
                                                            s = 0
                                                            while s < _2880:
                                                                mem[s + _2856 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2856 + _2880 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2880) <= _2880:
                                                                _3860 = mem[_1764]
                                                                s = 0
                                                                while s < _3860:
                                                                    mem[s + _2856 + _2880 + 33] = mem[s + _1764 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3860) <= _3860:
                                                                    _4612 = mem[64]
                                                                    mem[mem[64]] = _3860 + _2856 + _2880 + -mem[64] + 1
                                                                    mem[64] = _3860 + _2856 + _2880 + 33
                                                                    mem[_3860 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3860 + _2856 + _2880 + 37] = msg.sender
                                                                    mem[_3860 + _2856 + _2880 + 69] = 128
                                                                    _4708 = mem[_4612]
                                                                    mem[_3860 + _2856 + _2880 + 165] = mem[_4612]
                                                                    s = 0
                                                                    while s < _4708:
                                                                        mem[s + _3860 + _2856 + _2880 + 197] = mem[s + _4612 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4708) > _4708:
                                                                        mem[_4708 + _3860 + _2856 + _2880 + 197] = 0
                                                                    mem[_3860 + _2856 + _2880 + 101] = address(cd[36])
                                                                    mem[_3860 + _2856 + _2880 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3860 + _2856 + _2880 + 165 len ceil32(_4708) + 32]
                                                                else:
                                                                    mem[_3860 + _2856 + _2880 + 33] = 0
                                                                    _4613 = mem[64]
                                                                    mem[mem[64]] = _3860 + _2856 + _2880 + -mem[64] + 1
                                                                    mem[64] = _3860 + _2856 + _2880 + 33
                                                                    mem[_3860 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3860 + _2856 + _2880 + 37] = msg.sender
                                                                    mem[_3860 + _2856 + _2880 + 69] = 128
                                                                    _4709 = mem[_4613]
                                                                    mem[_3860 + _2856 + _2880 + 165] = mem[_4613]
                                                                    s = 0
                                                                    while s < _4709:
                                                                        mem[s + _3860 + _2856 + _2880 + 197] = mem[s + _4613 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4709) > _4709:
                                                                        mem[_4709 + _3860 + _2856 + _2880 + 197] = 0
                                                                    mem[_3860 + _2856 + _2880 + 101] = address(cd[36])
                                                                    mem[_3860 + _2856 + _2880 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3860 + _2856 + _2880 + 165 len ceil32(_4709) + 32]
                                                            else:
                                                                _3861 = mem[_1764]
                                                                s = 0
                                                                while s < _3861:
                                                                    mem[s + _2856 + _2880 + 33] = mem[s + _1764 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3861) <= _3861:
                                                                    _4614 = mem[64]
                                                                    mem[mem[64]] = _3861 + _2856 + _2880 + -mem[64] + 1
                                                                    mem[64] = _3861 + _2856 + _2880 + 33
                                                                    mem[_3861 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3861 + _2856 + _2880 + 37] = msg.sender
                                                                    mem[_3861 + _2856 + _2880 + 69] = 128
                                                                    _4710 = mem[_4614]
                                                                    mem[_3861 + _2856 + _2880 + 165] = mem[_4614]
                                                                    s = 0
                                                                    while s < _4710:
                                                                        mem[s + _3861 + _2856 + _2880 + 197] = mem[s + _4614 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4710) > _4710:
                                                                        mem[_4710 + _3861 + _2856 + _2880 + 197] = 0
                                                                    mem[_3861 + _2856 + _2880 + 101] = address(cd[36])
                                                                    mem[_3861 + _2856 + _2880 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3861 + _2856 + _2880 + 165 len ceil32(_4710) + 32]
                                                                else:
                                                                    mem[_3861 + _2856 + _2880 + 33] = 0
                                                                    _4615 = mem[64]
                                                                    mem[mem[64]] = _3861 + _2856 + _2880 + -mem[64] + 1
                                                                    mem[64] = _3861 + _2856 + _2880 + 33
                                                                    mem[_3861 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3861 + _2856 + _2880 + 37] = msg.sender
                                                                    mem[_3861 + _2856 + _2880 + 69] = 128
                                                                    _4711 = mem[_4615]
                                                                    mem[_3861 + _2856 + _2880 + 165] = mem[_4615]
                                                                    s = 0
                                                                    while s < _4711:
                                                                        mem[s + _3861 + _2856 + _2880 + 197] = mem[s + _4615 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4711) > _4711:
                                                                        mem[_4711 + _3861 + _2856 + _2880 + 197] = 0
                                                                    mem[_3861 + _2856 + _2880 + 101] = address(cd[36])
                                                                    mem[_3861 + _2856 + _2880 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3861 + _2856 + _2880 + 165 len ceil32(_4711) + 32]
                                                        else:
                                                            mem[_1764 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1764]:
                                                                    revert with 0, 50
                                                                mem[u + _1764 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2857 = mem[64]
                                                            _2881 = mem[128]
                                                            s = 0
                                                            while s < _2881:
                                                                mem[s + _2857 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2857 + _2881 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2881) <= _2881:
                                                                _3862 = mem[_1764]
                                                                s = 0
                                                                while s < _3862:
                                                                    mem[s + _2857 + _2881 + 33] = mem[s + _1764 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3862) <= _3862:
                                                                    _4616 = mem[64]
                                                                    mem[mem[64]] = _3862 + _2857 + _2881 + -mem[64] + 1
                                                                    mem[64] = _3862 + _2857 + _2881 + 33
                                                                    mem[_3862 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3862 + _2857 + _2881 + 37] = msg.sender
                                                                    mem[_3862 + _2857 + _2881 + 69] = 128
                                                                    _4712 = mem[_4616]
                                                                    mem[_3862 + _2857 + _2881 + 165] = mem[_4616]
                                                                    s = 0
                                                                    while s < _4712:
                                                                        mem[s + _3862 + _2857 + _2881 + 197] = mem[s + _4616 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4712) > _4712:
                                                                        mem[_4712 + _3862 + _2857 + _2881 + 197] = 0
                                                                    mem[_3862 + _2857 + _2881 + 101] = address(cd[36])
                                                                    mem[_3862 + _2857 + _2881 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3862 + _2857 + _2881 + 165 len ceil32(_4712) + 32]
                                                                else:
                                                                    mem[_3862 + _2857 + _2881 + 33] = 0
                                                                    _4617 = mem[64]
                                                                    mem[mem[64]] = _3862 + _2857 + _2881 + -mem[64] + 1
                                                                    mem[64] = _3862 + _2857 + _2881 + 33
                                                                    mem[_3862 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3862 + _2857 + _2881 + 37] = msg.sender
                                                                    mem[_3862 + _2857 + _2881 + 69] = 128
                                                                    _4713 = mem[_4617]
                                                                    mem[_3862 + _2857 + _2881 + 165] = mem[_4617]
                                                                    s = 0
                                                                    while s < _4713:
                                                                        mem[s + _3862 + _2857 + _2881 + 197] = mem[s + _4617 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4713) > _4713:
                                                                        mem[_4713 + _3862 + _2857 + _2881 + 197] = 0
                                                                    mem[_3862 + _2857 + _2881 + 101] = address(cd[36])
                                                                    mem[_3862 + _2857 + _2881 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3862 + _2857 + _2881 + 165 len ceil32(_4713) + 32]
                                                            else:
                                                                _3863 = mem[_1764]
                                                                s = 0
                                                                while s < _3863:
                                                                    mem[s + _2857 + _2881 + 33] = mem[s + _1764 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3863) <= _3863:
                                                                    _4618 = mem[64]
                                                                    mem[mem[64]] = _3863 + _2857 + _2881 + -mem[64] + 1
                                                                    mem[64] = _3863 + _2857 + _2881 + 33
                                                                    mem[_3863 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3863 + _2857 + _2881 + 37] = msg.sender
                                                                    mem[_3863 + _2857 + _2881 + 69] = 128
                                                                    _4714 = mem[_4618]
                                                                    mem[_3863 + _2857 + _2881 + 165] = mem[_4618]
                                                                    s = 0
                                                                    while s < _4714:
                                                                        mem[s + _3863 + _2857 + _2881 + 197] = mem[s + _4618 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4714) > _4714:
                                                                        mem[_4714 + _3863 + _2857 + _2881 + 197] = 0
                                                                    mem[_3863 + _2857 + _2881 + 101] = address(cd[36])
                                                                    mem[_3863 + _2857 + _2881 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3863 + _2857 + _2881 + 165 len ceil32(_4714) + 32]
                                                                else:
                                                                    mem[_3863 + _2857 + _2881 + 33] = 0
                                                                    _4619 = mem[64]
                                                                    mem[mem[64]] = _3863 + _2857 + _2881 + -mem[64] + 1
                                                                    mem[64] = _3863 + _2857 + _2881 + 33
                                                                    mem[_3863 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3863 + _2857 + _2881 + 37] = msg.sender
                                                                    mem[_3863 + _2857 + _2881 + 69] = 128
                                                                    _4715 = mem[_4619]
                                                                    mem[_3863 + _2857 + _2881 + 165] = mem[_4619]
                                                                    s = 0
                                                                    while s < _4715:
                                                                        mem[s + _3863 + _2857 + _2881 + 197] = mem[s + _4619 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4715) > _4715:
                                                                        mem[_4715 + _3863 + _2857 + _2881 + 197] = 0
                                                                    mem[_3863 + _2857 + _2881 + 101] = address(cd[36])
                                                                    mem[_3863 + _2857 + _2881 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3863 + _2857 + _2881 + 165 len ceil32(_4715) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not idx + 1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        uint8(stor24.field_0) = 1
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = sub_b18d9840Address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args sub_b18d9840Address, ext_call.return_data[0]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        uint8(stor24.field_0) = 0
                                        if not -cd[68]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 165] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 197] = 0
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (7 * ceil32(return_data.size)) + 129
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            idx = 0
                                            while idx < cd[68]:
                                                if not -idx:
                                                    _836 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _850 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < mem[128]:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_850) > _850:
                                                        mem[_850 + mem[64] + 164] = 0
                                                    mem[mem[64] + 68] = address(cd[36])
                                                    mem[_836 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_850) + _836 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _908 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_908] = 1
                                                        mem[_908 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _934 = mem[64]
                                                        _951 = mem[128]
                                                        s = 0
                                                        while s < _951:
                                                            mem[s + _934 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_934 + _951 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_951) <= _951:
                                                            _1795 = mem[_908]
                                                            s = 0
                                                            while s < _1795:
                                                                mem[s + _934 + _951 + 33] = mem[s + _908 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1795) <= _1795:
                                                                _2932 = mem[64]
                                                                mem[mem[64]] = _1795 + _934 + _951 + -mem[64] + 1
                                                                mem[64] = _1795 + _934 + _951 + 33
                                                                mem[_1795 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1795 + _934 + _951 + 37] = msg.sender
                                                                mem[_1795 + _934 + _951 + 69] = 128
                                                                _3008 = mem[_2932]
                                                                mem[_1795 + _934 + _951 + 165] = mem[_2932]
                                                                s = 0
                                                                while s < _3008:
                                                                    mem[s + _1795 + _934 + _951 + 197] = mem[s + _2932 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3008) > _3008:
                                                                    mem[_3008 + _1795 + _934 + _951 + 197] = 0
                                                                mem[_1795 + _934 + _951 + 101] = address(cd[36])
                                                                mem[_1795 + _934 + _951 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1795 + _934 + _951 + 165 len ceil32(_3008) + 32]
                                                            else:
                                                                mem[_1795 + _934 + _951 + 33] = 0
                                                                _2933 = mem[64]
                                                                mem[mem[64]] = _1795 + _934 + _951 + -mem[64] + 1
                                                                mem[64] = _1795 + _934 + _951 + 33
                                                                mem[_1795 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1795 + _934 + _951 + 37] = msg.sender
                                                                mem[_1795 + _934 + _951 + 69] = 128
                                                                _3009 = mem[_2933]
                                                                mem[_1795 + _934 + _951 + 165] = mem[_2933]
                                                                s = 0
                                                                while s < _3009:
                                                                    mem[s + _1795 + _934 + _951 + 197] = mem[s + _2933 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3009) > _3009:
                                                                    mem[_3009 + _1795 + _934 + _951 + 197] = 0
                                                                mem[_1795 + _934 + _951 + 101] = address(cd[36])
                                                                mem[_1795 + _934 + _951 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1795 + _934 + _951 + 165 len ceil32(_3009) + 32]
                                                        else:
                                                            _1796 = mem[_908]
                                                            s = 0
                                                            while s < _1796:
                                                                mem[s + _934 + _951 + 33] = mem[s + _908 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1796) <= _1796:
                                                                _2934 = mem[64]
                                                                mem[mem[64]] = _1796 + _934 + _951 + -mem[64] + 1
                                                                mem[64] = _1796 + _934 + _951 + 33
                                                                mem[_1796 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1796 + _934 + _951 + 37] = msg.sender
                                                                mem[_1796 + _934 + _951 + 69] = 128
                                                                _3010 = mem[_2934]
                                                                mem[_1796 + _934 + _951 + 165] = mem[_2934]
                                                                s = 0
                                                                while s < _3010:
                                                                    mem[s + _1796 + _934 + _951 + 197] = mem[s + _2934 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3010) > _3010:
                                                                    mem[_3010 + _1796 + _934 + _951 + 197] = 0
                                                                mem[_1796 + _934 + _951 + 101] = address(cd[36])
                                                                mem[_1796 + _934 + _951 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1796 + _934 + _951 + 165 len ceil32(_3010) + 32]
                                                            else:
                                                                mem[_1796 + _934 + _951 + 33] = 0
                                                                _2935 = mem[64]
                                                                mem[mem[64]] = _1796 + _934 + _951 + -mem[64] + 1
                                                                mem[64] = _1796 + _934 + _951 + 33
                                                                mem[_1796 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1796 + _934 + _951 + 37] = msg.sender
                                                                mem[_1796 + _934 + _951 + 69] = 128
                                                                _3011 = mem[_2935]
                                                                mem[_1796 + _934 + _951 + 165] = mem[_2935]
                                                                s = 0
                                                                while s < _3011:
                                                                    mem[s + _1796 + _934 + _951 + 197] = mem[s + _2935 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3011) > _3011:
                                                                    mem[_3011 + _1796 + _934 + _951 + 197] = 0
                                                                mem[_1796 + _934 + _951 + 101] = address(cd[36])
                                                                mem[_1796 + _934 + _951 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1796 + _934 + _951 + 165 len ceil32(_3011) + 32]
                                                    else:
                                                        t = 0
                                                        s = idx + 1
                                                        while s:
                                                            if not t + 1:
                                                                revert with 0, 17
                                                            t = t + 1
                                                            s = s / 10
                                                            continue 
                                                        if t > test266151307():
                                                            revert with 0, 65
                                                        _1767 = mem[64]
                                                        mem[mem[64]] = t
                                                        mem[64] = mem[64] + ceil32(t) + 32
                                                        if not t:
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1767]:
                                                                    revert with 0, 50
                                                                mem[u + _1767 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2862 = mem[64]
                                                            _2886 = mem[128]
                                                            s = 0
                                                            while s < _2886:
                                                                mem[s + _2862 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2862 + _2886 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2886) <= _2886:
                                                                _3872 = mem[_1767]
                                                                s = 0
                                                                while s < _3872:
                                                                    mem[s + _2862 + _2886 + 33] = mem[s + _1767 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3872) <= _3872:
                                                                    _4636 = mem[64]
                                                                    mem[mem[64]] = _3872 + _2862 + _2886 + -mem[64] + 1
                                                                    mem[64] = _3872 + _2862 + _2886 + 33
                                                                    mem[_3872 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3872 + _2862 + _2886 + 37] = msg.sender
                                                                    mem[_3872 + _2862 + _2886 + 69] = 128
                                                                    _4732 = mem[_4636]
                                                                    mem[_3872 + _2862 + _2886 + 165] = mem[_4636]
                                                                    s = 0
                                                                    while s < _4732:
                                                                        mem[s + _3872 + _2862 + _2886 + 197] = mem[s + _4636 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4732) > _4732:
                                                                        mem[_4732 + _3872 + _2862 + _2886 + 197] = 0
                                                                    mem[_3872 + _2862 + _2886 + 101] = address(cd[36])
                                                                    mem[_3872 + _2862 + _2886 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3872 + _2862 + _2886 + 165 len ceil32(_4732) + 32]
                                                                else:
                                                                    mem[_3872 + _2862 + _2886 + 33] = 0
                                                                    _4637 = mem[64]
                                                                    mem[mem[64]] = _3872 + _2862 + _2886 + -mem[64] + 1
                                                                    mem[64] = _3872 + _2862 + _2886 + 33
                                                                    mem[_3872 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3872 + _2862 + _2886 + 37] = msg.sender
                                                                    mem[_3872 + _2862 + _2886 + 69] = 128
                                                                    _4733 = mem[_4637]
                                                                    mem[_3872 + _2862 + _2886 + 165] = mem[_4637]
                                                                    s = 0
                                                                    while s < _4733:
                                                                        mem[s + _3872 + _2862 + _2886 + 197] = mem[s + _4637 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4733) > _4733:
                                                                        mem[_4733 + _3872 + _2862 + _2886 + 197] = 0
                                                                    mem[_3872 + _2862 + _2886 + 101] = address(cd[36])
                                                                    mem[_3872 + _2862 + _2886 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3872 + _2862 + _2886 + 165 len ceil32(_4733) + 32]
                                                            else:
                                                                _3873 = mem[_1767]
                                                                s = 0
                                                                while s < _3873:
                                                                    mem[s + _2862 + _2886 + 33] = mem[s + _1767 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3873) <= _3873:
                                                                    _4638 = mem[64]
                                                                    mem[mem[64]] = _3873 + _2862 + _2886 + -mem[64] + 1
                                                                    mem[64] = _3873 + _2862 + _2886 + 33
                                                                    mem[_3873 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3873 + _2862 + _2886 + 37] = msg.sender
                                                                    mem[_3873 + _2862 + _2886 + 69] = 128
                                                                    _4734 = mem[_4638]
                                                                    mem[_3873 + _2862 + _2886 + 165] = mem[_4638]
                                                                    s = 0
                                                                    while s < _4734:
                                                                        mem[s + _3873 + _2862 + _2886 + 197] = mem[s + _4638 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4734) > _4734:
                                                                        mem[_4734 + _3873 + _2862 + _2886 + 197] = 0
                                                                    mem[_3873 + _2862 + _2886 + 101] = address(cd[36])
                                                                    mem[_3873 + _2862 + _2886 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3873 + _2862 + _2886 + 165 len ceil32(_4734) + 32]
                                                                else:
                                                                    mem[_3873 + _2862 + _2886 + 33] = 0
                                                                    _4639 = mem[64]
                                                                    mem[mem[64]] = _3873 + _2862 + _2886 + -mem[64] + 1
                                                                    mem[64] = _3873 + _2862 + _2886 + 33
                                                                    mem[_3873 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3873 + _2862 + _2886 + 37] = msg.sender
                                                                    mem[_3873 + _2862 + _2886 + 69] = 128
                                                                    _4735 = mem[_4639]
                                                                    mem[_3873 + _2862 + _2886 + 165] = mem[_4639]
                                                                    s = 0
                                                                    while s < _4735:
                                                                        mem[s + _3873 + _2862 + _2886 + 197] = mem[s + _4639 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4735) > _4735:
                                                                        mem[_4735 + _3873 + _2862 + _2886 + 197] = 0
                                                                    mem[_3873 + _2862 + _2886 + 101] = address(cd[36])
                                                                    mem[_3873 + _2862 + _2886 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3873 + _2862 + _2886 + 165 len ceil32(_4735) + 32]
                                                        else:
                                                            mem[_1767 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1767]:
                                                                    revert with 0, 50
                                                                mem[u + _1767 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2863 = mem[64]
                                                            _2887 = mem[128]
                                                            s = 0
                                                            while s < _2887:
                                                                mem[s + _2863 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2863 + _2887 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2887) <= _2887:
                                                                _3874 = mem[_1767]
                                                                s = 0
                                                                while s < _3874:
                                                                    mem[s + _2863 + _2887 + 33] = mem[s + _1767 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3874) <= _3874:
                                                                    _4640 = mem[64]
                                                                    mem[mem[64]] = _3874 + _2863 + _2887 + -mem[64] + 1
                                                                    mem[64] = _3874 + _2863 + _2887 + 33
                                                                    mem[_3874 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3874 + _2863 + _2887 + 37] = msg.sender
                                                                    mem[_3874 + _2863 + _2887 + 69] = 128
                                                                    _4736 = mem[_4640]
                                                                    mem[_3874 + _2863 + _2887 + 165] = mem[_4640]
                                                                    s = 0
                                                                    while s < _4736:
                                                                        mem[s + _3874 + _2863 + _2887 + 197] = mem[s + _4640 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4736) > _4736:
                                                                        mem[_4736 + _3874 + _2863 + _2887 + 197] = 0
                                                                    mem[_3874 + _2863 + _2887 + 101] = address(cd[36])
                                                                    mem[_3874 + _2863 + _2887 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3874 + _2863 + _2887 + 165 len ceil32(_4736) + 32]
                                                                else:
                                                                    mem[_3874 + _2863 + _2887 + 33] = 0
                                                                    _4641 = mem[64]
                                                                    mem[mem[64]] = _3874 + _2863 + _2887 + -mem[64] + 1
                                                                    mem[64] = _3874 + _2863 + _2887 + 33
                                                                    mem[_3874 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3874 + _2863 + _2887 + 37] = msg.sender
                                                                    mem[_3874 + _2863 + _2887 + 69] = 128
                                                                    _4737 = mem[_4641]
                                                                    mem[_3874 + _2863 + _2887 + 165] = mem[_4641]
                                                                    s = 0
                                                                    while s < _4737:
                                                                        mem[s + _3874 + _2863 + _2887 + 197] = mem[s + _4641 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4737) > _4737:
                                                                        mem[_4737 + _3874 + _2863 + _2887 + 197] = 0
                                                                    mem[_3874 + _2863 + _2887 + 101] = address(cd[36])
                                                                    mem[_3874 + _2863 + _2887 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3874 + _2863 + _2887 + 165 len ceil32(_4737) + 32]
                                                            else:
                                                                _3875 = mem[_1767]
                                                                s = 0
                                                                while s < _3875:
                                                                    mem[s + _2863 + _2887 + 33] = mem[s + _1767 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3875) <= _3875:
                                                                    _4642 = mem[64]
                                                                    mem[mem[64]] = _3875 + _2863 + _2887 + -mem[64] + 1
                                                                    mem[64] = _3875 + _2863 + _2887 + 33
                                                                    mem[_3875 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3875 + _2863 + _2887 + 37] = msg.sender
                                                                    mem[_3875 + _2863 + _2887 + 69] = 128
                                                                    _4738 = mem[_4642]
                                                                    mem[_3875 + _2863 + _2887 + 165] = mem[_4642]
                                                                    s = 0
                                                                    while s < _4738:
                                                                        mem[s + _3875 + _2863 + _2887 + 197] = mem[s + _4642 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4738) > _4738:
                                                                        mem[_4738 + _3875 + _2863 + _2887 + 197] = 0
                                                                    mem[_3875 + _2863 + _2887 + 101] = address(cd[36])
                                                                    mem[_3875 + _2863 + _2887 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3875 + _2863 + _2887 + 165 len ceil32(_4738) + 32]
                                                                else:
                                                                    mem[_3875 + _2863 + _2887 + 33] = 0
                                                                    _4643 = mem[64]
                                                                    mem[mem[64]] = _3875 + _2863 + _2887 + -mem[64] + 1
                                                                    mem[64] = _3875 + _2863 + _2887 + 33
                                                                    mem[_3875 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3875 + _2863 + _2887 + 37] = msg.sender
                                                                    mem[_3875 + _2863 + _2887 + 69] = 128
                                                                    _4739 = mem[_4643]
                                                                    mem[_3875 + _2863 + _2887 + 165] = mem[_4643]
                                                                    s = 0
                                                                    while s < _4739:
                                                                        mem[s + _3875 + _2863 + _2887 + 197] = mem[s + _4643 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4739) > _4739:
                                                                        mem[_4739 + _3875 + _2863 + _2887 + 197] = 0
                                                                    mem[_3875 + _2863 + _2887 + 101] = address(cd[36])
                                                                    mem[_3875 + _2863 + _2887 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3875 + _2863 + _2887 + 165 len ceil32(_4739) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not idx + 1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if cd[68] and ext_call.return_data[0] > -1 / cd[68]:
                                                revert with 0, 17
                                            if not cd[68]:
                                                revert with 0, 18
                                            if cd[68] * ext_call.return_data[0] / cd[68] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 165] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 197] = cd[68] * ext_call.return_data[0]
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), cd[68] * ext_call.return_data[0]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (7 * ceil32(return_data.size)) + 129
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            idx = 0
                                            while idx < cd[68]:
                                                if not -idx:
                                                    _835 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _849 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < mem[128]:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_849) > _849:
                                                        mem[_849 + mem[64] + 164] = 0
                                                    mem[mem[64] + 68] = address(cd[36])
                                                    mem[_835 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_849) + _835 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _906 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_906] = 1
                                                        mem[_906 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _933 = mem[64]
                                                        _950 = mem[128]
                                                        s = 0
                                                        while s < _950:
                                                            mem[s + _933 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_933 + _950 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_950) <= _950:
                                                            _1793 = mem[_906]
                                                            s = 0
                                                            while s < _1793:
                                                                mem[s + _933 + _950 + 33] = mem[s + _906 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1793) <= _1793:
                                                                _2928 = mem[64]
                                                                mem[mem[64]] = _1793 + _933 + _950 + -mem[64] + 1
                                                                mem[64] = _1793 + _933 + _950 + 33
                                                                mem[_1793 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1793 + _933 + _950 + 37] = msg.sender
                                                                mem[_1793 + _933 + _950 + 69] = 128
                                                                _3002 = mem[_2928]
                                                                mem[_1793 + _933 + _950 + 165] = mem[_2928]
                                                                s = 0
                                                                while s < _3002:
                                                                    mem[s + _1793 + _933 + _950 + 197] = mem[s + _2928 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3002) > _3002:
                                                                    mem[_3002 + _1793 + _933 + _950 + 197] = 0
                                                                mem[_1793 + _933 + _950 + 101] = address(cd[36])
                                                                mem[_1793 + _933 + _950 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1793 + _933 + _950 + 165 len ceil32(_3002) + 32]
                                                            else:
                                                                mem[_1793 + _933 + _950 + 33] = 0
                                                                _2929 = mem[64]
                                                                mem[mem[64]] = _1793 + _933 + _950 + -mem[64] + 1
                                                                mem[64] = _1793 + _933 + _950 + 33
                                                                mem[_1793 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1793 + _933 + _950 + 37] = msg.sender
                                                                mem[_1793 + _933 + _950 + 69] = 128
                                                                _3003 = mem[_2929]
                                                                mem[_1793 + _933 + _950 + 165] = mem[_2929]
                                                                s = 0
                                                                while s < _3003:
                                                                    mem[s + _1793 + _933 + _950 + 197] = mem[s + _2929 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3003) > _3003:
                                                                    mem[_3003 + _1793 + _933 + _950 + 197] = 0
                                                                mem[_1793 + _933 + _950 + 101] = address(cd[36])
                                                                mem[_1793 + _933 + _950 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1793 + _933 + _950 + 165 len ceil32(_3003) + 32]
                                                        else:
                                                            _1794 = mem[_906]
                                                            s = 0
                                                            while s < _1794:
                                                                mem[s + _933 + _950 + 33] = mem[s + _906 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1794) <= _1794:
                                                                _2930 = mem[64]
                                                                mem[mem[64]] = _1794 + _933 + _950 + -mem[64] + 1
                                                                mem[64] = _1794 + _933 + _950 + 33
                                                                mem[_1794 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1794 + _933 + _950 + 37] = msg.sender
                                                                mem[_1794 + _933 + _950 + 69] = 128
                                                                _3004 = mem[_2930]
                                                                mem[_1794 + _933 + _950 + 165] = mem[_2930]
                                                                s = 0
                                                                while s < _3004:
                                                                    mem[s + _1794 + _933 + _950 + 197] = mem[s + _2930 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3004) > _3004:
                                                                    mem[_3004 + _1794 + _933 + _950 + 197] = 0
                                                                mem[_1794 + _933 + _950 + 101] = address(cd[36])
                                                                mem[_1794 + _933 + _950 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1794 + _933 + _950 + 165 len ceil32(_3004) + 32]
                                                            else:
                                                                mem[_1794 + _933 + _950 + 33] = 0
                                                                _2931 = mem[64]
                                                                mem[mem[64]] = _1794 + _933 + _950 + -mem[64] + 1
                                                                mem[64] = _1794 + _933 + _950 + 33
                                                                mem[_1794 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1794 + _933 + _950 + 37] = msg.sender
                                                                mem[_1794 + _933 + _950 + 69] = 128
                                                                _3005 = mem[_2931]
                                                                mem[_1794 + _933 + _950 + 165] = mem[_2931]
                                                                s = 0
                                                                while s < _3005:
                                                                    mem[s + _1794 + _933 + _950 + 197] = mem[s + _2931 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3005) > _3005:
                                                                    mem[_3005 + _1794 + _933 + _950 + 197] = 0
                                                                mem[_1794 + _933 + _950 + 101] = address(cd[36])
                                                                mem[_1794 + _933 + _950 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1794 + _933 + _950 + 165 len ceil32(_3005) + 32]
                                                    else:
                                                        t = 0
                                                        s = idx + 1
                                                        while s:
                                                            if not t + 1:
                                                                revert with 0, 17
                                                            t = t + 1
                                                            s = s / 10
                                                            continue 
                                                        if t > test266151307():
                                                            revert with 0, 65
                                                        _1766 = mem[64]
                                                        mem[mem[64]] = t
                                                        mem[64] = mem[64] + ceil32(t) + 32
                                                        if not t:
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1766]:
                                                                    revert with 0, 50
                                                                mem[u + _1766 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2860 = mem[64]
                                                            _2884 = mem[128]
                                                            s = 0
                                                            while s < _2884:
                                                                mem[s + _2860 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2860 + _2884 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2884) <= _2884:
                                                                _3868 = mem[_1766]
                                                                s = 0
                                                                while s < _3868:
                                                                    mem[s + _2860 + _2884 + 33] = mem[s + _1766 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3868) <= _3868:
                                                                    _4628 = mem[64]
                                                                    mem[mem[64]] = _3868 + _2860 + _2884 + -mem[64] + 1
                                                                    mem[64] = _3868 + _2860 + _2884 + 33
                                                                    mem[_3868 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3868 + _2860 + _2884 + 37] = msg.sender
                                                                    mem[_3868 + _2860 + _2884 + 69] = 128
                                                                    _4724 = mem[_4628]
                                                                    mem[_3868 + _2860 + _2884 + 165] = mem[_4628]
                                                                    s = 0
                                                                    while s < _4724:
                                                                        mem[s + _3868 + _2860 + _2884 + 197] = mem[s + _4628 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4724) > _4724:
                                                                        mem[_4724 + _3868 + _2860 + _2884 + 197] = 0
                                                                    mem[_3868 + _2860 + _2884 + 101] = address(cd[36])
                                                                    mem[_3868 + _2860 + _2884 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3868 + _2860 + _2884 + 165 len ceil32(_4724) + 32]
                                                                else:
                                                                    mem[_3868 + _2860 + _2884 + 33] = 0
                                                                    _4629 = mem[64]
                                                                    mem[mem[64]] = _3868 + _2860 + _2884 + -mem[64] + 1
                                                                    mem[64] = _3868 + _2860 + _2884 + 33
                                                                    mem[_3868 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3868 + _2860 + _2884 + 37] = msg.sender
                                                                    mem[_3868 + _2860 + _2884 + 69] = 128
                                                                    _4725 = mem[_4629]
                                                                    mem[_3868 + _2860 + _2884 + 165] = mem[_4629]
                                                                    s = 0
                                                                    while s < _4725:
                                                                        mem[s + _3868 + _2860 + _2884 + 197] = mem[s + _4629 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4725) > _4725:
                                                                        mem[_4725 + _3868 + _2860 + _2884 + 197] = 0
                                                                    mem[_3868 + _2860 + _2884 + 101] = address(cd[36])
                                                                    mem[_3868 + _2860 + _2884 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3868 + _2860 + _2884 + 165 len ceil32(_4725) + 32]
                                                            else:
                                                                _3869 = mem[_1766]
                                                                s = 0
                                                                while s < _3869:
                                                                    mem[s + _2860 + _2884 + 33] = mem[s + _1766 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3869) <= _3869:
                                                                    _4630 = mem[64]
                                                                    mem[mem[64]] = _3869 + _2860 + _2884 + -mem[64] + 1
                                                                    mem[64] = _3869 + _2860 + _2884 + 33
                                                                    mem[_3869 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3869 + _2860 + _2884 + 37] = msg.sender
                                                                    mem[_3869 + _2860 + _2884 + 69] = 128
                                                                    _4726 = mem[_4630]
                                                                    mem[_3869 + _2860 + _2884 + 165] = mem[_4630]
                                                                    s = 0
                                                                    while s < _4726:
                                                                        mem[s + _3869 + _2860 + _2884 + 197] = mem[s + _4630 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4726) > _4726:
                                                                        mem[_4726 + _3869 + _2860 + _2884 + 197] = 0
                                                                    mem[_3869 + _2860 + _2884 + 101] = address(cd[36])
                                                                    mem[_3869 + _2860 + _2884 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3869 + _2860 + _2884 + 165 len ceil32(_4726) + 32]
                                                                else:
                                                                    mem[_3869 + _2860 + _2884 + 33] = 0
                                                                    _4631 = mem[64]
                                                                    mem[mem[64]] = _3869 + _2860 + _2884 + -mem[64] + 1
                                                                    mem[64] = _3869 + _2860 + _2884 + 33
                                                                    mem[_3869 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3869 + _2860 + _2884 + 37] = msg.sender
                                                                    mem[_3869 + _2860 + _2884 + 69] = 128
                                                                    _4727 = mem[_4631]
                                                                    mem[_3869 + _2860 + _2884 + 165] = mem[_4631]
                                                                    s = 0
                                                                    while s < _4727:
                                                                        mem[s + _3869 + _2860 + _2884 + 197] = mem[s + _4631 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4727) > _4727:
                                                                        mem[_4727 + _3869 + _2860 + _2884 + 197] = 0
                                                                    mem[_3869 + _2860 + _2884 + 101] = address(cd[36])
                                                                    mem[_3869 + _2860 + _2884 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3869 + _2860 + _2884 + 165 len ceil32(_4727) + 32]
                                                        else:
                                                            mem[_1766 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1766]:
                                                                    revert with 0, 50
                                                                mem[u + _1766 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2861 = mem[64]
                                                            _2885 = mem[128]
                                                            s = 0
                                                            while s < _2885:
                                                                mem[s + _2861 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2861 + _2885 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2885) <= _2885:
                                                                _3870 = mem[_1766]
                                                                s = 0
                                                                while s < _3870:
                                                                    mem[s + _2861 + _2885 + 33] = mem[s + _1766 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3870) <= _3870:
                                                                    _4632 = mem[64]
                                                                    mem[mem[64]] = _3870 + _2861 + _2885 + -mem[64] + 1
                                                                    mem[64] = _3870 + _2861 + _2885 + 33
                                                                    mem[_3870 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3870 + _2861 + _2885 + 37] = msg.sender
                                                                    mem[_3870 + _2861 + _2885 + 69] = 128
                                                                    _4728 = mem[_4632]
                                                                    mem[_3870 + _2861 + _2885 + 165] = mem[_4632]
                                                                    s = 0
                                                                    while s < _4728:
                                                                        mem[s + _3870 + _2861 + _2885 + 197] = mem[s + _4632 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4728) > _4728:
                                                                        mem[_4728 + _3870 + _2861 + _2885 + 197] = 0
                                                                    mem[_3870 + _2861 + _2885 + 101] = address(cd[36])
                                                                    mem[_3870 + _2861 + _2885 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3870 + _2861 + _2885 + 165 len ceil32(_4728) + 32]
                                                                else:
                                                                    mem[_3870 + _2861 + _2885 + 33] = 0
                                                                    _4633 = mem[64]
                                                                    mem[mem[64]] = _3870 + _2861 + _2885 + -mem[64] + 1
                                                                    mem[64] = _3870 + _2861 + _2885 + 33
                                                                    mem[_3870 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3870 + _2861 + _2885 + 37] = msg.sender
                                                                    mem[_3870 + _2861 + _2885 + 69] = 128
                                                                    _4729 = mem[_4633]
                                                                    mem[_3870 + _2861 + _2885 + 165] = mem[_4633]
                                                                    s = 0
                                                                    while s < _4729:
                                                                        mem[s + _3870 + _2861 + _2885 + 197] = mem[s + _4633 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4729) > _4729:
                                                                        mem[_4729 + _3870 + _2861 + _2885 + 197] = 0
                                                                    mem[_3870 + _2861 + _2885 + 101] = address(cd[36])
                                                                    mem[_3870 + _2861 + _2885 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3870 + _2861 + _2885 + 165 len ceil32(_4729) + 32]
                                                            else:
                                                                _3871 = mem[_1766]
                                                                s = 0
                                                                while s < _3871:
                                                                    mem[s + _2861 + _2885 + 33] = mem[s + _1766 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3871) <= _3871:
                                                                    _4634 = mem[64]
                                                                    mem[mem[64]] = _3871 + _2861 + _2885 + -mem[64] + 1
                                                                    mem[64] = _3871 + _2861 + _2885 + 33
                                                                    mem[_3871 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3871 + _2861 + _2885 + 37] = msg.sender
                                                                    mem[_3871 + _2861 + _2885 + 69] = 128
                                                                    _4730 = mem[_4634]
                                                                    mem[_3871 + _2861 + _2885 + 165] = mem[_4634]
                                                                    s = 0
                                                                    while s < _4730:
                                                                        mem[s + _3871 + _2861 + _2885 + 197] = mem[s + _4634 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4730) > _4730:
                                                                        mem[_4730 + _3871 + _2861 + _2885 + 197] = 0
                                                                    mem[_3871 + _2861 + _2885 + 101] = address(cd[36])
                                                                    mem[_3871 + _2861 + _2885 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3871 + _2861 + _2885 + 165 len ceil32(_4730) + 32]
                                                                else:
                                                                    mem[_3871 + _2861 + _2885 + 33] = 0
                                                                    _4635 = mem[64]
                                                                    mem[mem[64]] = _3871 + _2861 + _2885 + -mem[64] + 1
                                                                    mem[64] = _3871 + _2861 + _2885 + 33
                                                                    mem[_3871 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3871 + _2861 + _2885 + 37] = msg.sender
                                                                    mem[_3871 + _2861 + _2885 + 69] = 128
                                                                    _4731 = mem[_4635]
                                                                    mem[_3871 + _2861 + _2885 + 165] = mem[_4635]
                                                                    s = 0
                                                                    while s < _4731:
                                                                        mem[s + _3871 + _2861 + _2885 + 197] = mem[s + _4635 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4731) > _4731:
                                                                        mem[_4731 + _3871 + _2861 + _2885 + 197] = 0
                                                                    mem[_3871 + _2861 + _2885 + 101] = address(cd[36])
                                                                    mem[_3871 + _2861 + _2885 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3871 + _2861 + _2885 + 165 len ceil32(_4731) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not idx + 1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
}



}
