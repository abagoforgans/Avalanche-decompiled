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
    if ext_call.return_data[0]:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_b12cbc76Address, ext_call.return_data[32]
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
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_b12cbc76Address, ext_call.return_data[32]
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
    if ceil32(_13) <= _13:
        _27 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _13
        mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
        mem[_13 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_13) + _27 + -mem[64] + 64
    mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    _28 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
    mem[_13 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_13) + _28 + -mem[64] + 64
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
    if ceil32(_13) <= _13:
        _27 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _13
        mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
        mem[_13 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_13) + _27 + -mem[64] + 64
    mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    _28 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
    mem[_13 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_13) + _28 + -mem[64] + 64
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
    if ceil32(_13) <= _13:
        _27 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _13
        mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
        mem[_13 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_13) + _27 + -mem[64] + 64
    mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    _28 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
    mem[_13 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_13) + _28 + -mem[64] + 64
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
    if ceil32(_13) <= _13:
        _27 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _13
        mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
        mem[_13 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_13) + _27 + -mem[64] + 64
    mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    _28 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
    mem[_13 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_13) + _28 + -mem[64] + 64
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
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if s > !mem[_50 + 32]:
            revert with 0, 17
        if t > !mem[_50]:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_50 + 32]
        t = t + mem[_50]
        continue 
    if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor24.field_8):
        _46 = mem[64]
        mem[64] = mem[64] + 64
        mem[_46] = 30
        mem[_46 + 32] = 'SafeMath: subtraction overflow'
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
        mem[mem[64] + 4] = sub_b12cbc76Address
        mem[mem[64] + 36] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_b12cbc76Address, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
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
        if unknown_0x8743ef6d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb96392c1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9a7a23d6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x913a0aa6(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            call nodeRewardManagerAddress._distributeRewards() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x88c41d7c(?????):
                                if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if cd[4] >= payee.length:
                                        revert with 0, 50
                                    return payee[cd[4]]
                                if uint32(call.func_hash) >> 224 != unknown_0x8bc9c7b0(?????):
                                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return owner
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor23 = cd[4]
                            else:
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
                        if unknown_0x913a0aa6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_b18d9840Address = address(cd[4])
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x91ca7f3c(?????):
                                if unknown_0x92662bc7(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require cd[4] == address(cd[4])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    sub_b12cbc76Address = address(cd[4])
                                else:
                                    if uint32(call.func_hash) >> 224 != unknown_0x9349c47d(?????):
                                        require unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        require cd[4] == address(cd[4])
                                        return released[address(cd[4])]
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require cd[4] == address(cd[4])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    distributionPoolAddress = address(cd[4])
                            else:
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
                if unknown_0xa538ddf2(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurUsePoolAddress
                    if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurFee
                    if unknown_0xb12cbc76(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b12cbc76Address
                    if unknown_0xb18d9840(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b18d9840Address
                    require unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor27[cd[4]])
                if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
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
                    require unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224
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
                _164 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _212 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _164 + (32 * _212) + 32 <= return_data.size
                s = ceil32(return_data.size) + 160
                idx = _164 + 160
                while idx < _164 + (32 * _212) + 160:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _843 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _212
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _212:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _843 + (32 * _212) + -mem[64] + 64
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
                _387 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _413 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _387 + _413 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_413)] = mem[ceil32(return_data.size) + _387 + 160 len ceil32(_413)]
                if ceil32(_413) <= _413:
                    _882 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _413
                    mem[mem[64] + 64 len ceil32(_413)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_413)]
                    if ceil32(_413) <= _413:
                        return Array(len=_413, data=mem[mem[64] + 64 len ceil32(_413)])
                    mem[_413 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_413) + _882 + -mem[64] + 64
                mem[_413 + (2 * ceil32(return_data.size)) + 160] = 0
                _883 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _413
                mem[mem[64] + 64 len ceil32(_413)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_413)]
                if ceil32(_413) <= _413:
                    return Array(len=_413, data=mem[mem[64] + 64 len ceil32(_413)])
                mem[_413 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_413) + _883 + -mem[64] + 64
            if unknown_0xd013cce0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
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
                if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                    if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return distributionPoolAddress
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
                _376 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _400 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _376 + _400 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_400)] = mem[ceil32(return_data.size) + _376 + 160 len ceil32(_400)]
                if ceil32(_400) <= _400:
                    _879 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _400
                    mem[mem[64] + 64 len ceil32(_400)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_400)]
                    if ceil32(_400) <= _400:
                        return Array(len=_400, data=mem[mem[64] + 64 len ceil32(_400)])
                    mem[_400 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_400) + _879 + -mem[64] + 64
                mem[_400 + (2 * ceil32(return_data.size)) + 160] = 0
                _880 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _400
                mem[mem[64] + 64 len ceil32(_400)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_400)]
                if ceil32(_400) <= _400:
                    return Array(len=_400, data=mem[mem[64] + 64 len ceil32(_400)])
                mem[_400 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_400) + _880 + -mem[64] + 64
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
                    _1784 = mem[(32 * idx) + 160]
                    mem[mem[64] + 36] = mem[(32 * idx) + 160]
                    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1784
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    if s > !mem[_1863 + 32]:
                        revert with 0, 17
                    if t > !mem[_1863]:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1863 + 32]
                    t = t + mem[_1863]
                    continue 
                if t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
                    revert with 0, 'CSHT: You don't have enough reward to cash out'
                if not uint8(stor24.field_8):
                    _1811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1811] = 30
                    mem[_1811 + 32] = 'SafeMath: subtraction overflow'
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
                    _2177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2177] == bool(mem[_2177])
                else:
                    mem[mem[64] + 4] = sub_b12cbc76Address
                    mem[mem[64] + 36] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_b12cbc76Address, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1905] == bool(mem[_1905])
                    _2178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2178] = 30
                    mem[_2178 + 32] = 'SafeMath: subtraction overflow'
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
                    _2631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2631] == bool(mem[_2631])
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
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x8013858b(?????):
                                    require unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return deadWalletAddress
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
                    _99 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _156 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _99 + _156 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160 len ceil32(_156)] = mem[_99 + 160 len ceil32(_156)]
                    if ceil32(_156) > _156:
                        mem[_156 + ceil32(return_data.size) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _156
                    mem[mem[64] + 64 len ceil32(_156)] = mem[ceil32(return_data.size) + 160 len ceil32(_156)]
                    if ceil32(_156) > _156:
                        mem[_156 + mem[64] + 64] = 0
                    return Array(len=_156, data=mem[mem[64] + 64 len ceil32(_156)])
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
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_b12cbc76Address, ext_call.return_data[32]
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
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_b12cbc76Address, ext_call.return_data[32]
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
                _351 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _382 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _351 + _382 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_382)] = mem[ceil32(return_data.size) + _351 + 160 len ceil32(_382)]
                if ceil32(_382) <= _382:
                    _871 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _382
                    mem[mem[64] + 64 len ceil32(_382)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_382)]
                    if ceil32(_382) <= _382:
                        return Array(len=_382, data=mem[mem[64] + 64 len ceil32(_382)])
                    mem[_382 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_382) + _871 + -mem[64] + 64
                mem[_382 + (2 * ceil32(return_data.size)) + 160] = 0
                _872 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _382
                mem[mem[64] + 64 len ceil32(_382)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_382)]
                if ceil32(_382) <= _382:
                    return Array(len=_382, data=mem[mem[64] + 64 len ceil32(_382)])
                mem[_382 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_382) + _872 + -mem[64] + 64
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
                _367 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _389 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _367 + _389 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_389)] = mem[ceil32(return_data.size) + _367 + 160 len ceil32(_389)]
                if ceil32(_389) <= _389:
                    _861 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _389
                    mem[mem[64] + 64 len ceil32(_389)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_389)]
                    if ceil32(_389) <= _389:
                        return Array(len=_389, data=mem[mem[64] + 64 len ceil32(_389)])
                    mem[_389 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_389) + _861 + -mem[64] + 64
                mem[_389 + (2 * ceil32(return_data.size)) + 160] = 0
                _862 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _389
                mem[mem[64] + 64 len ceil32(_389)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_389)]
                if ceil32(_389) <= _389:
                    return Array(len=_389, data=mem[mem[64] + 64 len ceil32(_389)])
                mem[_389 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_389) + _862 + -mem[64] + 64
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
                    if ext_call.return_data[0]:
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[128]
                                    s = 0
                                    while s < mem[128]:
                                        mem[s + mem[64] + 164] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + mem[64] + 164] = 0
                                    mem[mem[64] + 68] = address(cd[36])
                                    mem[mem[64] + 100] = uint32(cd[100])
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 164 len ceil32(mem[128])]), address(cd[36]), uint32(cd[100])
                                else:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if not -idx - 1:
                                        _893 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_893] = 1
                                        mem[_893 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _929 = mem[64]
                                        _946 = mem[128]
                                        s = 0
                                        while s < _946:
                                            mem[s + _929 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_929 + _946 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_946) <= _946:
                                            _1788 = mem[_893]
                                            s = 0
                                            while s < _1788:
                                                mem[s + _929 + _946 + 33] = mem[s + _893 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1788) <= _1788:
                                                _2905 = mem[64]
                                                mem[mem[64]] = _1788 + _929 + _946 + -mem[64] + 1
                                                mem[64] = _1788 + _929 + _946 + 33
                                                mem[_1788 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1788 + _929 + _946 + 37] = msg.sender
                                                mem[_1788 + _929 + _946 + 69] = 128
                                                _2961 = mem[_2905]
                                                mem[_1788 + _929 + _946 + 165] = mem[_2905]
                                                s = 0
                                                while s < _2961:
                                                    mem[s + _1788 + _929 + _946 + 197] = mem[s + _2905 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2961) > _2961:
                                                    mem[_2961 + _1788 + _929 + _946 + 197] = 0
                                                mem[_1788 + _929 + _946 + 101] = address(cd[36])
                                                mem[_1788 + _929 + _946 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1788 + _929 + _946 + 165 len ceil32(_2961) + 32]
                                            else:
                                                mem[_1788 + _929 + _946 + 33] = 0
                                                _2906 = mem[64]
                                                mem[mem[64]] = _1788 + _929 + _946 + -mem[64] + 1
                                                mem[64] = _1788 + _929 + _946 + 33
                                                mem[_1788 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1788 + _929 + _946 + 37] = msg.sender
                                                mem[_1788 + _929 + _946 + 69] = 128
                                                _2962 = mem[_2906]
                                                mem[_1788 + _929 + _946 + 165] = mem[_2906]
                                                s = 0
                                                while s < _2962:
                                                    mem[s + _1788 + _929 + _946 + 197] = mem[s + _2906 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2962) > _2962:
                                                    mem[_2962 + _1788 + _929 + _946 + 197] = 0
                                                mem[_1788 + _929 + _946 + 101] = address(cd[36])
                                                mem[_1788 + _929 + _946 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1788 + _929 + _946 + 165 len ceil32(_2962) + 32]
                                        else:
                                            _1789 = mem[_893]
                                            s = 0
                                            while s < _1789:
                                                mem[s + _929 + _946 + 33] = mem[s + _893 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1789) <= _1789:
                                                _2907 = mem[64]
                                                mem[mem[64]] = _1789 + _929 + _946 + -mem[64] + 1
                                                mem[64] = _1789 + _929 + _946 + 33
                                                mem[_1789 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1789 + _929 + _946 + 37] = msg.sender
                                                mem[_1789 + _929 + _946 + 69] = 128
                                                _2963 = mem[_2907]
                                                mem[_1789 + _929 + _946 + 165] = mem[_2907]
                                                s = 0
                                                while s < _2963:
                                                    mem[s + _1789 + _929 + _946 + 197] = mem[s + _2907 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2963) > _2963:
                                                    mem[_2963 + _1789 + _929 + _946 + 197] = 0
                                                mem[_1789 + _929 + _946 + 101] = address(cd[36])
                                                mem[_1789 + _929 + _946 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1789 + _929 + _946 + 165 len ceil32(_2963) + 32]
                                            else:
                                                mem[_1789 + _929 + _946 + 33] = 0
                                                _2908 = mem[64]
                                                mem[mem[64]] = _1789 + _929 + _946 + -mem[64] + 1
                                                mem[64] = _1789 + _929 + _946 + 33
                                                mem[_1789 + _929 + _946 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1789 + _929 + _946 + 37] = msg.sender
                                                mem[_1789 + _929 + _946 + 69] = 128
                                                _2964 = mem[_2908]
                                                mem[_1789 + _929 + _946 + 165] = mem[_2908]
                                                s = 0
                                                while s < _2964:
                                                    mem[s + _1789 + _929 + _946 + 197] = mem[s + _2908 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2964) > _2964:
                                                    mem[_2964 + _1789 + _929 + _946 + 197] = 0
                                                mem[_1789 + _929 + _946 + 101] = address(cd[36])
                                                mem[_1789 + _929 + _946 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1789 + _929 + _946 + 165 len ceil32(_2964) + 32]
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
                                        _1770 = mem[64]
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
                                                if u - 1 >= mem[_1770]:
                                                    revert with 0, 50
                                                mem[u + _1770 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                _3845 = mem[_1770]
                                                s = 0
                                                while s < _3845:
                                                    mem[s + _2855 + _2879 + 33] = mem[s + _1770 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3845) <= _3845:
                                                    _4569 = mem[64]
                                                    mem[mem[64]] = _3845 + _2855 + _2879 + -mem[64] + 1
                                                    mem[64] = _3845 + _2855 + _2879 + 33
                                                    mem[_3845 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3845 + _2855 + _2879 + 37] = msg.sender
                                                    mem[_3845 + _2855 + _2879 + 69] = 128
                                                    _4665 = mem[_4569]
                                                    mem[_3845 + _2855 + _2879 + 165] = mem[_4569]
                                                    s = 0
                                                    while s < _4665:
                                                        mem[s + _3845 + _2855 + _2879 + 197] = mem[s + _4569 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4665) > _4665:
                                                        mem[_4665 + _3845 + _2855 + _2879 + 197] = 0
                                                    mem[_3845 + _2855 + _2879 + 101] = address(cd[36])
                                                    mem[_3845 + _2855 + _2879 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3845 + _2855 + _2879 + 165 len ceil32(_4665) + 32]
                                                else:
                                                    mem[_3845 + _2855 + _2879 + 33] = 0
                                                    _4570 = mem[64]
                                                    mem[mem[64]] = _3845 + _2855 + _2879 + -mem[64] + 1
                                                    mem[64] = _3845 + _2855 + _2879 + 33
                                                    mem[_3845 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3845 + _2855 + _2879 + 37] = msg.sender
                                                    mem[_3845 + _2855 + _2879 + 69] = 128
                                                    _4666 = mem[_4570]
                                                    mem[_3845 + _2855 + _2879 + 165] = mem[_4570]
                                                    s = 0
                                                    while s < _4666:
                                                        mem[s + _3845 + _2855 + _2879 + 197] = mem[s + _4570 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4666) > _4666:
                                                        mem[_4666 + _3845 + _2855 + _2879 + 197] = 0
                                                    mem[_3845 + _2855 + _2879 + 101] = address(cd[36])
                                                    mem[_3845 + _2855 + _2879 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3845 + _2855 + _2879 + 165 len ceil32(_4666) + 32]
                                            else:
                                                _3846 = mem[_1770]
                                                s = 0
                                                while s < _3846:
                                                    mem[s + _2855 + _2879 + 33] = mem[s + _1770 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3846) <= _3846:
                                                    _4571 = mem[64]
                                                    mem[mem[64]] = _3846 + _2855 + _2879 + -mem[64] + 1
                                                    mem[64] = _3846 + _2855 + _2879 + 33
                                                    mem[_3846 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3846 + _2855 + _2879 + 37] = msg.sender
                                                    mem[_3846 + _2855 + _2879 + 69] = 128
                                                    _4667 = mem[_4571]
                                                    mem[_3846 + _2855 + _2879 + 165] = mem[_4571]
                                                    s = 0
                                                    while s < _4667:
                                                        mem[s + _3846 + _2855 + _2879 + 197] = mem[s + _4571 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4667) > _4667:
                                                        mem[_4667 + _3846 + _2855 + _2879 + 197] = 0
                                                    mem[_3846 + _2855 + _2879 + 101] = address(cd[36])
                                                    mem[_3846 + _2855 + _2879 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3846 + _2855 + _2879 + 165 len ceil32(_4667) + 32]
                                                else:
                                                    mem[_3846 + _2855 + _2879 + 33] = 0
                                                    _4572 = mem[64]
                                                    mem[mem[64]] = _3846 + _2855 + _2879 + -mem[64] + 1
                                                    mem[64] = _3846 + _2855 + _2879 + 33
                                                    mem[_3846 + _2855 + _2879 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3846 + _2855 + _2879 + 37] = msg.sender
                                                    mem[_3846 + _2855 + _2879 + 69] = 128
                                                    _4668 = mem[_4572]
                                                    mem[_3846 + _2855 + _2879 + 165] = mem[_4572]
                                                    s = 0
                                                    while s < _4668:
                                                        mem[s + _3846 + _2855 + _2879 + 197] = mem[s + _4572 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4668) > _4668:
                                                        mem[_4668 + _3846 + _2855 + _2879 + 197] = 0
                                                    mem[_3846 + _2855 + _2879 + 101] = address(cd[36])
                                                    mem[_3846 + _2855 + _2879 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3846 + _2855 + _2879 + 165 len ceil32(_4668) + 32]
                                        else:
                                            mem[_1770 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1770]:
                                                    revert with 0, 50
                                                mem[u + _1770 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                _3847 = mem[_1770]
                                                s = 0
                                                while s < _3847:
                                                    mem[s + _2856 + _2880 + 33] = mem[s + _1770 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3847) <= _3847:
                                                    _4573 = mem[64]
                                                    mem[mem[64]] = _3847 + _2856 + _2880 + -mem[64] + 1
                                                    mem[64] = _3847 + _2856 + _2880 + 33
                                                    mem[_3847 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3847 + _2856 + _2880 + 37] = msg.sender
                                                    mem[_3847 + _2856 + _2880 + 69] = 128
                                                    _4669 = mem[_4573]
                                                    mem[_3847 + _2856 + _2880 + 165] = mem[_4573]
                                                    s = 0
                                                    while s < _4669:
                                                        mem[s + _3847 + _2856 + _2880 + 197] = mem[s + _4573 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4669) > _4669:
                                                        mem[_4669 + _3847 + _2856 + _2880 + 197] = 0
                                                    mem[_3847 + _2856 + _2880 + 101] = address(cd[36])
                                                    mem[_3847 + _2856 + _2880 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3847 + _2856 + _2880 + 165 len ceil32(_4669) + 32]
                                                else:
                                                    mem[_3847 + _2856 + _2880 + 33] = 0
                                                    _4574 = mem[64]
                                                    mem[mem[64]] = _3847 + _2856 + _2880 + -mem[64] + 1
                                                    mem[64] = _3847 + _2856 + _2880 + 33
                                                    mem[_3847 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3847 + _2856 + _2880 + 37] = msg.sender
                                                    mem[_3847 + _2856 + _2880 + 69] = 128
                                                    _4670 = mem[_4574]
                                                    mem[_3847 + _2856 + _2880 + 165] = mem[_4574]
                                                    s = 0
                                                    while s < _4670:
                                                        mem[s + _3847 + _2856 + _2880 + 197] = mem[s + _4574 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4670) > _4670:
                                                        mem[_4670 + _3847 + _2856 + _2880 + 197] = 0
                                                    mem[_3847 + _2856 + _2880 + 101] = address(cd[36])
                                                    mem[_3847 + _2856 + _2880 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3847 + _2856 + _2880 + 165 len ceil32(_4670) + 32]
                                            else:
                                                _3848 = mem[_1770]
                                                s = 0
                                                while s < _3848:
                                                    mem[s + _2856 + _2880 + 33] = mem[s + _1770 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3848) <= _3848:
                                                    _4575 = mem[64]
                                                    mem[mem[64]] = _3848 + _2856 + _2880 + -mem[64] + 1
                                                    mem[64] = _3848 + _2856 + _2880 + 33
                                                    mem[_3848 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3848 + _2856 + _2880 + 37] = msg.sender
                                                    mem[_3848 + _2856 + _2880 + 69] = 128
                                                    _4671 = mem[_4575]
                                                    mem[_3848 + _2856 + _2880 + 165] = mem[_4575]
                                                    s = 0
                                                    while s < _4671:
                                                        mem[s + _3848 + _2856 + _2880 + 197] = mem[s + _4575 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4671) > _4671:
                                                        mem[_4671 + _3848 + _2856 + _2880 + 197] = 0
                                                    mem[_3848 + _2856 + _2880 + 101] = address(cd[36])
                                                    mem[_3848 + _2856 + _2880 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3848 + _2856 + _2880 + 165 len ceil32(_4671) + 32]
                                                else:
                                                    mem[_3848 + _2856 + _2880 + 33] = 0
                                                    _4576 = mem[64]
                                                    mem[mem[64]] = _3848 + _2856 + _2880 + -mem[64] + 1
                                                    mem[64] = _3848 + _2856 + _2880 + 33
                                                    mem[_3848 + _2856 + _2880 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3848 + _2856 + _2880 + 37] = msg.sender
                                                    mem[_3848 + _2856 + _2880 + 69] = 128
                                                    _4672 = mem[_4576]
                                                    mem[_3848 + _2856 + _2880 + 165] = mem[_4576]
                                                    s = 0
                                                    while s < _4672:
                                                        mem[s + _3848 + _2856 + _2880 + 197] = mem[s + _4576 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4672) > _4672:
                                                        mem[_4672 + _3848 + _2856 + _2880 + 197] = 0
                                                    mem[_3848 + _2856 + _2880 + 101] = address(cd[36])
                                                    mem[_3848 + _2856 + _2880 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3848 + _2856 + _2880 + 165 len ceil32(_4672) + 32]
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
                                        _891 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_891] = 1
                                        mem[_891 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _928 = mem[64]
                                        _945 = mem[128]
                                        s = 0
                                        while s < _945:
                                            mem[s + _928 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_928 + _945 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_945) <= _945:
                                            _1786 = mem[_891]
                                            s = 0
                                            while s < _1786:
                                                mem[s + _928 + _945 + 33] = mem[s + _891 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1786) <= _1786:
                                                _2901 = mem[64]
                                                mem[mem[64]] = _1786 + _928 + _945 + -mem[64] + 1
                                                mem[64] = _1786 + _928 + _945 + 33
                                                mem[_1786 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1786 + _928 + _945 + 37] = msg.sender
                                                mem[_1786 + _928 + _945 + 69] = 128
                                                _2955 = mem[_2901]
                                                mem[_1786 + _928 + _945 + 165] = mem[_2901]
                                                s = 0
                                                while s < _2955:
                                                    mem[s + _1786 + _928 + _945 + 197] = mem[s + _2901 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2955) > _2955:
                                                    mem[_2955 + _1786 + _928 + _945 + 197] = 0
                                                mem[_1786 + _928 + _945 + 101] = address(cd[36])
                                                mem[_1786 + _928 + _945 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1786 + _928 + _945 + 165 len ceil32(_2955) + 32]
                                            else:
                                                mem[_1786 + _928 + _945 + 33] = 0
                                                _2902 = mem[64]
                                                mem[mem[64]] = _1786 + _928 + _945 + -mem[64] + 1
                                                mem[64] = _1786 + _928 + _945 + 33
                                                mem[_1786 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1786 + _928 + _945 + 37] = msg.sender
                                                mem[_1786 + _928 + _945 + 69] = 128
                                                _2956 = mem[_2902]
                                                mem[_1786 + _928 + _945 + 165] = mem[_2902]
                                                s = 0
                                                while s < _2956:
                                                    mem[s + _1786 + _928 + _945 + 197] = mem[s + _2902 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2956) > _2956:
                                                    mem[_2956 + _1786 + _928 + _945 + 197] = 0
                                                mem[_1786 + _928 + _945 + 101] = address(cd[36])
                                                mem[_1786 + _928 + _945 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1786 + _928 + _945 + 165 len ceil32(_2956) + 32]
                                        else:
                                            _1787 = mem[_891]
                                            s = 0
                                            while s < _1787:
                                                mem[s + _928 + _945 + 33] = mem[s + _891 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_1787) <= _1787:
                                                _2903 = mem[64]
                                                mem[mem[64]] = _1787 + _928 + _945 + -mem[64] + 1
                                                mem[64] = _1787 + _928 + _945 + 33
                                                mem[_1787 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1787 + _928 + _945 + 37] = msg.sender
                                                mem[_1787 + _928 + _945 + 69] = 128
                                                _2957 = mem[_2903]
                                                mem[_1787 + _928 + _945 + 165] = mem[_2903]
                                                s = 0
                                                while s < _2957:
                                                    mem[s + _1787 + _928 + _945 + 197] = mem[s + _2903 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2957) > _2957:
                                                    mem[_2957 + _1787 + _928 + _945 + 197] = 0
                                                mem[_1787 + _928 + _945 + 101] = address(cd[36])
                                                mem[_1787 + _928 + _945 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1787 + _928 + _945 + 165 len ceil32(_2957) + 32]
                                            else:
                                                mem[_1787 + _928 + _945 + 33] = 0
                                                _2904 = mem[64]
                                                mem[mem[64]] = _1787 + _928 + _945 + -mem[64] + 1
                                                mem[64] = _1787 + _928 + _945 + 33
                                                mem[_1787 + _928 + _945 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_1787 + _928 + _945 + 37] = msg.sender
                                                mem[_1787 + _928 + _945 + 69] = 128
                                                _2958 = mem[_2904]
                                                mem[_1787 + _928 + _945 + 165] = mem[_2904]
                                                s = 0
                                                while s < _2958:
                                                    mem[s + _1787 + _928 + _945 + 197] = mem[s + _2904 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2958) > _2958:
                                                    mem[_2958 + _1787 + _928 + _945 + 197] = 0
                                                mem[_1787 + _928 + _945 + 101] = address(cd[36])
                                                mem[_1787 + _928 + _945 + 133] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1787 + _928 + _945 + 165 len ceil32(_2958) + 32]
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
                                        _1769 = mem[64]
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
                                                if u - 1 >= mem[_1769]:
                                                    revert with 0, 50
                                                mem[u + _1769 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                _3841 = mem[_1769]
                                                s = 0
                                                while s < _3841:
                                                    mem[s + _2853 + _2877 + 33] = mem[s + _1769 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3841) <= _3841:
                                                    _4561 = mem[64]
                                                    mem[mem[64]] = _3841 + _2853 + _2877 + -mem[64] + 1
                                                    mem[64] = _3841 + _2853 + _2877 + 33
                                                    mem[_3841 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3841 + _2853 + _2877 + 37] = msg.sender
                                                    mem[_3841 + _2853 + _2877 + 69] = 128
                                                    _4657 = mem[_4561]
                                                    mem[_3841 + _2853 + _2877 + 165] = mem[_4561]
                                                    s = 0
                                                    while s < _4657:
                                                        mem[s + _3841 + _2853 + _2877 + 197] = mem[s + _4561 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4657) > _4657:
                                                        mem[_4657 + _3841 + _2853 + _2877 + 197] = 0
                                                    mem[_3841 + _2853 + _2877 + 101] = address(cd[36])
                                                    mem[_3841 + _2853 + _2877 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3841 + _2853 + _2877 + 165 len ceil32(_4657) + 32]
                                                else:
                                                    mem[_3841 + _2853 + _2877 + 33] = 0
                                                    _4562 = mem[64]
                                                    mem[mem[64]] = _3841 + _2853 + _2877 + -mem[64] + 1
                                                    mem[64] = _3841 + _2853 + _2877 + 33
                                                    mem[_3841 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3841 + _2853 + _2877 + 37] = msg.sender
                                                    mem[_3841 + _2853 + _2877 + 69] = 128
                                                    _4658 = mem[_4562]
                                                    mem[_3841 + _2853 + _2877 + 165] = mem[_4562]
                                                    s = 0
                                                    while s < _4658:
                                                        mem[s + _3841 + _2853 + _2877 + 197] = mem[s + _4562 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4658) > _4658:
                                                        mem[_4658 + _3841 + _2853 + _2877 + 197] = 0
                                                    mem[_3841 + _2853 + _2877 + 101] = address(cd[36])
                                                    mem[_3841 + _2853 + _2877 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3841 + _2853 + _2877 + 165 len ceil32(_4658) + 32]
                                            else:
                                                _3842 = mem[_1769]
                                                s = 0
                                                while s < _3842:
                                                    mem[s + _2853 + _2877 + 33] = mem[s + _1769 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3842) <= _3842:
                                                    _4563 = mem[64]
                                                    mem[mem[64]] = _3842 + _2853 + _2877 + -mem[64] + 1
                                                    mem[64] = _3842 + _2853 + _2877 + 33
                                                    mem[_3842 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3842 + _2853 + _2877 + 37] = msg.sender
                                                    mem[_3842 + _2853 + _2877 + 69] = 128
                                                    _4659 = mem[_4563]
                                                    mem[_3842 + _2853 + _2877 + 165] = mem[_4563]
                                                    s = 0
                                                    while s < _4659:
                                                        mem[s + _3842 + _2853 + _2877 + 197] = mem[s + _4563 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4659) > _4659:
                                                        mem[_4659 + _3842 + _2853 + _2877 + 197] = 0
                                                    mem[_3842 + _2853 + _2877 + 101] = address(cd[36])
                                                    mem[_3842 + _2853 + _2877 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3842 + _2853 + _2877 + 165 len ceil32(_4659) + 32]
                                                else:
                                                    mem[_3842 + _2853 + _2877 + 33] = 0
                                                    _4564 = mem[64]
                                                    mem[mem[64]] = _3842 + _2853 + _2877 + -mem[64] + 1
                                                    mem[64] = _3842 + _2853 + _2877 + 33
                                                    mem[_3842 + _2853 + _2877 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3842 + _2853 + _2877 + 37] = msg.sender
                                                    mem[_3842 + _2853 + _2877 + 69] = 128
                                                    _4660 = mem[_4564]
                                                    mem[_3842 + _2853 + _2877 + 165] = mem[_4564]
                                                    s = 0
                                                    while s < _4660:
                                                        mem[s + _3842 + _2853 + _2877 + 197] = mem[s + _4564 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4660) > _4660:
                                                        mem[_4660 + _3842 + _2853 + _2877 + 197] = 0
                                                    mem[_3842 + _2853 + _2877 + 101] = address(cd[36])
                                                    mem[_3842 + _2853 + _2877 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3842 + _2853 + _2877 + 165 len ceil32(_4660) + 32]
                                        else:
                                            mem[_1769 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_1769]:
                                                    revert with 0, 50
                                                mem[u + _1769 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                _3843 = mem[_1769]
                                                s = 0
                                                while s < _3843:
                                                    mem[s + _2854 + _2878 + 33] = mem[s + _1769 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3843) <= _3843:
                                                    _4565 = mem[64]
                                                    mem[mem[64]] = _3843 + _2854 + _2878 + -mem[64] + 1
                                                    mem[64] = _3843 + _2854 + _2878 + 33
                                                    mem[_3843 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3843 + _2854 + _2878 + 37] = msg.sender
                                                    mem[_3843 + _2854 + _2878 + 69] = 128
                                                    _4661 = mem[_4565]
                                                    mem[_3843 + _2854 + _2878 + 165] = mem[_4565]
                                                    s = 0
                                                    while s < _4661:
                                                        mem[s + _3843 + _2854 + _2878 + 197] = mem[s + _4565 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4661) > _4661:
                                                        mem[_4661 + _3843 + _2854 + _2878 + 197] = 0
                                                    mem[_3843 + _2854 + _2878 + 101] = address(cd[36])
                                                    mem[_3843 + _2854 + _2878 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3843 + _2854 + _2878 + 165 len ceil32(_4661) + 32]
                                                else:
                                                    mem[_3843 + _2854 + _2878 + 33] = 0
                                                    _4566 = mem[64]
                                                    mem[mem[64]] = _3843 + _2854 + _2878 + -mem[64] + 1
                                                    mem[64] = _3843 + _2854 + _2878 + 33
                                                    mem[_3843 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3843 + _2854 + _2878 + 37] = msg.sender
                                                    mem[_3843 + _2854 + _2878 + 69] = 128
                                                    _4662 = mem[_4566]
                                                    mem[_3843 + _2854 + _2878 + 165] = mem[_4566]
                                                    s = 0
                                                    while s < _4662:
                                                        mem[s + _3843 + _2854 + _2878 + 197] = mem[s + _4566 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4662) > _4662:
                                                        mem[_4662 + _3843 + _2854 + _2878 + 197] = 0
                                                    mem[_3843 + _2854 + _2878 + 101] = address(cd[36])
                                                    mem[_3843 + _2854 + _2878 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3843 + _2854 + _2878 + 165 len ceil32(_4662) + 32]
                                            else:
                                                _3844 = mem[_1769]
                                                s = 0
                                                while s < _3844:
                                                    mem[s + _2854 + _2878 + 33] = mem[s + _1769 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3844) <= _3844:
                                                    _4567 = mem[64]
                                                    mem[mem[64]] = _3844 + _2854 + _2878 + -mem[64] + 1
                                                    mem[64] = _3844 + _2854 + _2878 + 33
                                                    mem[_3844 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3844 + _2854 + _2878 + 37] = msg.sender
                                                    mem[_3844 + _2854 + _2878 + 69] = 128
                                                    _4663 = mem[_4567]
                                                    mem[_3844 + _2854 + _2878 + 165] = mem[_4567]
                                                    s = 0
                                                    while s < _4663:
                                                        mem[s + _3844 + _2854 + _2878 + 197] = mem[s + _4567 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4663) > _4663:
                                                        mem[_4663 + _3844 + _2854 + _2878 + 197] = 0
                                                    mem[_3844 + _2854 + _2878 + 101] = address(cd[36])
                                                    mem[_3844 + _2854 + _2878 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3844 + _2854 + _2878 + 165 len ceil32(_4663) + 32]
                                                else:
                                                    mem[_3844 + _2854 + _2878 + 33] = 0
                                                    _4568 = mem[64]
                                                    mem[mem[64]] = _3844 + _2854 + _2878 + -mem[64] + 1
                                                    mem[64] = _3844 + _2854 + _2878 + 33
                                                    mem[_3844 + _2854 + _2878 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_3844 + _2854 + _2878 + 37] = msg.sender
                                                    mem[_3844 + _2854 + _2878 + 69] = 128
                                                    _4664 = mem[_4568]
                                                    mem[_3844 + _2854 + _2878 + 165] = mem[_4568]
                                                    s = 0
                                                    while s < _4664:
                                                        mem[s + _3844 + _2854 + _2878 + 197] = mem[s + _4568 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4664) > _4664:
                                                        mem[_4664 + _3844 + _2854 + _2878 + 197] = 0
                                                    mem[_3844 + _2854 + _2878 + 101] = address(cd[36])
                                                    mem[_3844 + _2854 + _2878 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3844 + _2854 + _2878 + 165 len ceil32(_4664) + 32]
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
                                        _833 = mem[64]
                                        mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 128
                                        _847 = mem[128]
                                        mem[mem[64] + 132] = mem[128]
                                        s = 0
                                        while s < _847:
                                            mem[s + mem[64] + 164] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        if ceil32(_847) > _847:
                                            mem[_847 + _833 + 164] = 0
                                        mem[_833 + 68] = address(cd[36])
                                        mem[_833 + 100] = uint32(cd[100])
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_847) + _833 + -mem[64] + 160]
                                    else:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _897 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_897] = 1
                                            mem[_897 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _931 = mem[64]
                                            _948 = mem[128]
                                            s = 0
                                            while s < _948:
                                                mem[s + _931 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_931 + _948 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_948) <= _948:
                                                _1792 = mem[_897]
                                                s = 0
                                                while s < _1792:
                                                    mem[s + _931 + _948 + 33] = mem[s + _897 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1792) <= _1792:
                                                    _2913 = mem[64]
                                                    mem[mem[64]] = _1792 + _931 + _948 + -mem[64] + 1
                                                    mem[64] = _1792 + _931 + _948 + 33
                                                    mem[_1792 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1792 + _931 + _948 + 37] = msg.sender
                                                    mem[_1792 + _931 + _948 + 69] = 128
                                                    _2973 = mem[_2913]
                                                    mem[_1792 + _931 + _948 + 165] = mem[_2913]
                                                    s = 0
                                                    while s < _2973:
                                                        mem[s + _1792 + _931 + _948 + 197] = mem[s + _2913 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2973) > _2973:
                                                        mem[_2973 + _1792 + _931 + _948 + 197] = 0
                                                    mem[_1792 + _931 + _948 + 101] = address(cd[36])
                                                    mem[_1792 + _931 + _948 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1792 + _931 + _948 + 165 len ceil32(_2973) + 32]
                                                else:
                                                    mem[_1792 + _931 + _948 + 33] = 0
                                                    _2914 = mem[64]
                                                    mem[mem[64]] = _1792 + _931 + _948 + -mem[64] + 1
                                                    mem[64] = _1792 + _931 + _948 + 33
                                                    mem[_1792 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1792 + _931 + _948 + 37] = msg.sender
                                                    mem[_1792 + _931 + _948 + 69] = 128
                                                    _2974 = mem[_2914]
                                                    mem[_1792 + _931 + _948 + 165] = mem[_2914]
                                                    s = 0
                                                    while s < _2974:
                                                        mem[s + _1792 + _931 + _948 + 197] = mem[s + _2914 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2974) > _2974:
                                                        mem[_2974 + _1792 + _931 + _948 + 197] = 0
                                                    mem[_1792 + _931 + _948 + 101] = address(cd[36])
                                                    mem[_1792 + _931 + _948 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1792 + _931 + _948 + 165 len ceil32(_2974) + 32]
                                            else:
                                                _1793 = mem[_897]
                                                s = 0
                                                while s < _1793:
                                                    mem[s + _931 + _948 + 33] = mem[s + _897 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1793) <= _1793:
                                                    _2915 = mem[64]
                                                    mem[mem[64]] = _1793 + _931 + _948 + -mem[64] + 1
                                                    mem[64] = _1793 + _931 + _948 + 33
                                                    mem[_1793 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1793 + _931 + _948 + 37] = msg.sender
                                                    mem[_1793 + _931 + _948 + 69] = 128
                                                    _2975 = mem[_2915]
                                                    mem[_1793 + _931 + _948 + 165] = mem[_2915]
                                                    s = 0
                                                    while s < _2975:
                                                        mem[s + _1793 + _931 + _948 + 197] = mem[s + _2915 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2975) > _2975:
                                                        mem[_2975 + _1793 + _931 + _948 + 197] = 0
                                                    mem[_1793 + _931 + _948 + 101] = address(cd[36])
                                                    mem[_1793 + _931 + _948 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1793 + _931 + _948 + 165 len ceil32(_2975) + 32]
                                                else:
                                                    mem[_1793 + _931 + _948 + 33] = 0
                                                    _2916 = mem[64]
                                                    mem[mem[64]] = _1793 + _931 + _948 + -mem[64] + 1
                                                    mem[64] = _1793 + _931 + _948 + 33
                                                    mem[_1793 + _931 + _948 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1793 + _931 + _948 + 37] = msg.sender
                                                    mem[_1793 + _931 + _948 + 69] = 128
                                                    _2976 = mem[_2916]
                                                    mem[_1793 + _931 + _948 + 165] = mem[_2916]
                                                    s = 0
                                                    while s < _2976:
                                                        mem[s + _1793 + _931 + _948 + 197] = mem[s + _2916 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2976) > _2976:
                                                        mem[_2976 + _1793 + _931 + _948 + 197] = 0
                                                    mem[_1793 + _931 + _948 + 101] = address(cd[36])
                                                    mem[_1793 + _931 + _948 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1793 + _931 + _948 + 165 len ceil32(_2976) + 32]
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
                                            _1772 = mem[64]
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
                                                    if u - 1 >= mem[_1772]:
                                                        revert with 0, 50
                                                    mem[u + _1772 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                    _3853 = mem[_1772]
                                                    s = 0
                                                    while s < _3853:
                                                        mem[s + _2859 + _2883 + 33] = mem[s + _1772 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3853) <= _3853:
                                                        _4585 = mem[64]
                                                        mem[mem[64]] = _3853 + _2859 + _2883 + -mem[64] + 1
                                                        mem[64] = _3853 + _2859 + _2883 + 33
                                                        mem[_3853 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3853 + _2859 + _2883 + 37] = msg.sender
                                                        mem[_3853 + _2859 + _2883 + 69] = 128
                                                        _4681 = mem[_4585]
                                                        mem[_3853 + _2859 + _2883 + 165] = mem[_4585]
                                                        s = 0
                                                        while s < _4681:
                                                            mem[s + _3853 + _2859 + _2883 + 197] = mem[s + _4585 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4681) > _4681:
                                                            mem[_4681 + _3853 + _2859 + _2883 + 197] = 0
                                                        mem[_3853 + _2859 + _2883 + 101] = address(cd[36])
                                                        mem[_3853 + _2859 + _2883 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3853 + _2859 + _2883 + 165 len ceil32(_4681) + 32]
                                                    else:
                                                        mem[_3853 + _2859 + _2883 + 33] = 0
                                                        _4586 = mem[64]
                                                        mem[mem[64]] = _3853 + _2859 + _2883 + -mem[64] + 1
                                                        mem[64] = _3853 + _2859 + _2883 + 33
                                                        mem[_3853 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3853 + _2859 + _2883 + 37] = msg.sender
                                                        mem[_3853 + _2859 + _2883 + 69] = 128
                                                        _4682 = mem[_4586]
                                                        mem[_3853 + _2859 + _2883 + 165] = mem[_4586]
                                                        s = 0
                                                        while s < _4682:
                                                            mem[s + _3853 + _2859 + _2883 + 197] = mem[s + _4586 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4682) > _4682:
                                                            mem[_4682 + _3853 + _2859 + _2883 + 197] = 0
                                                        mem[_3853 + _2859 + _2883 + 101] = address(cd[36])
                                                        mem[_3853 + _2859 + _2883 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3853 + _2859 + _2883 + 165 len ceil32(_4682) + 32]
                                                else:
                                                    _3854 = mem[_1772]
                                                    s = 0
                                                    while s < _3854:
                                                        mem[s + _2859 + _2883 + 33] = mem[s + _1772 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3854) <= _3854:
                                                        _4587 = mem[64]
                                                        mem[mem[64]] = _3854 + _2859 + _2883 + -mem[64] + 1
                                                        mem[64] = _3854 + _2859 + _2883 + 33
                                                        mem[_3854 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3854 + _2859 + _2883 + 37] = msg.sender
                                                        mem[_3854 + _2859 + _2883 + 69] = 128
                                                        _4683 = mem[_4587]
                                                        mem[_3854 + _2859 + _2883 + 165] = mem[_4587]
                                                        s = 0
                                                        while s < _4683:
                                                            mem[s + _3854 + _2859 + _2883 + 197] = mem[s + _4587 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4683) > _4683:
                                                            mem[_4683 + _3854 + _2859 + _2883 + 197] = 0
                                                        mem[_3854 + _2859 + _2883 + 101] = address(cd[36])
                                                        mem[_3854 + _2859 + _2883 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3854 + _2859 + _2883 + 165 len ceil32(_4683) + 32]
                                                    else:
                                                        mem[_3854 + _2859 + _2883 + 33] = 0
                                                        _4588 = mem[64]
                                                        mem[mem[64]] = _3854 + _2859 + _2883 + -mem[64] + 1
                                                        mem[64] = _3854 + _2859 + _2883 + 33
                                                        mem[_3854 + _2859 + _2883 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3854 + _2859 + _2883 + 37] = msg.sender
                                                        mem[_3854 + _2859 + _2883 + 69] = 128
                                                        _4684 = mem[_4588]
                                                        mem[_3854 + _2859 + _2883 + 165] = mem[_4588]
                                                        s = 0
                                                        while s < _4684:
                                                            mem[s + _3854 + _2859 + _2883 + 197] = mem[s + _4588 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4684) > _4684:
                                                            mem[_4684 + _3854 + _2859 + _2883 + 197] = 0
                                                        mem[_3854 + _2859 + _2883 + 101] = address(cd[36])
                                                        mem[_3854 + _2859 + _2883 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3854 + _2859 + _2883 + 165 len ceil32(_4684) + 32]
                                            else:
                                                mem[_1772 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1772]:
                                                        revert with 0, 50
                                                    mem[u + _1772 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                    _3855 = mem[_1772]
                                                    s = 0
                                                    while s < _3855:
                                                        mem[s + _2860 + _2884 + 33] = mem[s + _1772 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3855) <= _3855:
                                                        _4589 = mem[64]
                                                        mem[mem[64]] = _3855 + _2860 + _2884 + -mem[64] + 1
                                                        mem[64] = _3855 + _2860 + _2884 + 33
                                                        mem[_3855 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3855 + _2860 + _2884 + 37] = msg.sender
                                                        mem[_3855 + _2860 + _2884 + 69] = 128
                                                        _4685 = mem[_4589]
                                                        mem[_3855 + _2860 + _2884 + 165] = mem[_4589]
                                                        s = 0
                                                        while s < _4685:
                                                            mem[s + _3855 + _2860 + _2884 + 197] = mem[s + _4589 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4685) > _4685:
                                                            mem[_4685 + _3855 + _2860 + _2884 + 197] = 0
                                                        mem[_3855 + _2860 + _2884 + 101] = address(cd[36])
                                                        mem[_3855 + _2860 + _2884 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3855 + _2860 + _2884 + 165 len ceil32(_4685) + 32]
                                                    else:
                                                        mem[_3855 + _2860 + _2884 + 33] = 0
                                                        _4590 = mem[64]
                                                        mem[mem[64]] = _3855 + _2860 + _2884 + -mem[64] + 1
                                                        mem[64] = _3855 + _2860 + _2884 + 33
                                                        mem[_3855 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3855 + _2860 + _2884 + 37] = msg.sender
                                                        mem[_3855 + _2860 + _2884 + 69] = 128
                                                        _4686 = mem[_4590]
                                                        mem[_3855 + _2860 + _2884 + 165] = mem[_4590]
                                                        s = 0
                                                        while s < _4686:
                                                            mem[s + _3855 + _2860 + _2884 + 197] = mem[s + _4590 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4686) > _4686:
                                                            mem[_4686 + _3855 + _2860 + _2884 + 197] = 0
                                                        mem[_3855 + _2860 + _2884 + 101] = address(cd[36])
                                                        mem[_3855 + _2860 + _2884 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3855 + _2860 + _2884 + 165 len ceil32(_4686) + 32]
                                                else:
                                                    _3856 = mem[_1772]
                                                    s = 0
                                                    while s < _3856:
                                                        mem[s + _2860 + _2884 + 33] = mem[s + _1772 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3856) <= _3856:
                                                        _4591 = mem[64]
                                                        mem[mem[64]] = _3856 + _2860 + _2884 + -mem[64] + 1
                                                        mem[64] = _3856 + _2860 + _2884 + 33
                                                        mem[_3856 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3856 + _2860 + _2884 + 37] = msg.sender
                                                        mem[_3856 + _2860 + _2884 + 69] = 128
                                                        _4687 = mem[_4591]
                                                        mem[_3856 + _2860 + _2884 + 165] = mem[_4591]
                                                        s = 0
                                                        while s < _4687:
                                                            mem[s + _3856 + _2860 + _2884 + 197] = mem[s + _4591 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4687) > _4687:
                                                            mem[_4687 + _3856 + _2860 + _2884 + 197] = 0
                                                        mem[_3856 + _2860 + _2884 + 101] = address(cd[36])
                                                        mem[_3856 + _2860 + _2884 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3856 + _2860 + _2884 + 165 len ceil32(_4687) + 32]
                                                    else:
                                                        mem[_3856 + _2860 + _2884 + 33] = 0
                                                        _4592 = mem[64]
                                                        mem[mem[64]] = _3856 + _2860 + _2884 + -mem[64] + 1
                                                        mem[64] = _3856 + _2860 + _2884 + 33
                                                        mem[_3856 + _2860 + _2884 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3856 + _2860 + _2884 + 37] = msg.sender
                                                        mem[_3856 + _2860 + _2884 + 69] = 128
                                                        _4688 = mem[_4592]
                                                        mem[_3856 + _2860 + _2884 + 165] = mem[_4592]
                                                        s = 0
                                                        while s < _4688:
                                                            mem[s + _3856 + _2860 + _2884 + 197] = mem[s + _4592 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4688) > _4688:
                                                            mem[_4688 + _3856 + _2860 + _2884 + 197] = 0
                                                        mem[_3856 + _2860 + _2884 + 101] = address(cd[36])
                                                        mem[_3856 + _2860 + _2884 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3856 + _2860 + _2884 + 165 len ceil32(_4688) + 32]
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
                                        mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[128]
                                        s = 0
                                        while s < mem[128]:
                                            mem[s + mem[64] + 164] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[128]) > mem[128]:
                                            mem[mem[128] + mem[64] + 164] = 0
                                        mem[mem[64] + 68] = address(cd[36])
                                        mem[mem[64] + 100] = uint32(cd[100])
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 164 len ceil32(mem[128])]), address(cd[36]), uint32(cd[100])
                                    else:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _895 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_895] = 1
                                            mem[_895 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _930 = mem[64]
                                            _947 = mem[128]
                                            s = 0
                                            while s < _947:
                                                mem[s + _930 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_930 + _947 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_947) <= _947:
                                                _1790 = mem[_895]
                                                s = 0
                                                while s < _1790:
                                                    mem[s + _930 + _947 + 33] = mem[s + _895 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1790) <= _1790:
                                                    _2909 = mem[64]
                                                    mem[mem[64]] = _1790 + _930 + _947 + -mem[64] + 1
                                                    mem[64] = _1790 + _930 + _947 + 33
                                                    mem[_1790 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1790 + _930 + _947 + 37] = msg.sender
                                                    mem[_1790 + _930 + _947 + 69] = 128
                                                    _2967 = mem[_2909]
                                                    mem[_1790 + _930 + _947 + 165] = mem[_2909]
                                                    s = 0
                                                    while s < _2967:
                                                        mem[s + _1790 + _930 + _947 + 197] = mem[s + _2909 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2967) > _2967:
                                                        mem[_2967 + _1790 + _930 + _947 + 197] = 0
                                                    mem[_1790 + _930 + _947 + 101] = address(cd[36])
                                                    mem[_1790 + _930 + _947 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1790 + _930 + _947 + 165 len ceil32(_2967) + 32]
                                                else:
                                                    mem[_1790 + _930 + _947 + 33] = 0
                                                    _2910 = mem[64]
                                                    mem[mem[64]] = _1790 + _930 + _947 + -mem[64] + 1
                                                    mem[64] = _1790 + _930 + _947 + 33
                                                    mem[_1790 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1790 + _930 + _947 + 37] = msg.sender
                                                    mem[_1790 + _930 + _947 + 69] = 128
                                                    _2968 = mem[_2910]
                                                    mem[_1790 + _930 + _947 + 165] = mem[_2910]
                                                    s = 0
                                                    while s < _2968:
                                                        mem[s + _1790 + _930 + _947 + 197] = mem[s + _2910 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2968) > _2968:
                                                        mem[_2968 + _1790 + _930 + _947 + 197] = 0
                                                    mem[_1790 + _930 + _947 + 101] = address(cd[36])
                                                    mem[_1790 + _930 + _947 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1790 + _930 + _947 + 165 len ceil32(_2968) + 32]
                                            else:
                                                _1791 = mem[_895]
                                                s = 0
                                                while s < _1791:
                                                    mem[s + _930 + _947 + 33] = mem[s + _895 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_1791) <= _1791:
                                                    _2911 = mem[64]
                                                    mem[mem[64]] = _1791 + _930 + _947 + -mem[64] + 1
                                                    mem[64] = _1791 + _930 + _947 + 33
                                                    mem[_1791 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1791 + _930 + _947 + 37] = msg.sender
                                                    mem[_1791 + _930 + _947 + 69] = 128
                                                    _2969 = mem[_2911]
                                                    mem[_1791 + _930 + _947 + 165] = mem[_2911]
                                                    s = 0
                                                    while s < _2969:
                                                        mem[s + _1791 + _930 + _947 + 197] = mem[s + _2911 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2969) > _2969:
                                                        mem[_2969 + _1791 + _930 + _947 + 197] = 0
                                                    mem[_1791 + _930 + _947 + 101] = address(cd[36])
                                                    mem[_1791 + _930 + _947 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1791 + _930 + _947 + 165 len ceil32(_2969) + 32]
                                                else:
                                                    mem[_1791 + _930 + _947 + 33] = 0
                                                    _2912 = mem[64]
                                                    mem[mem[64]] = _1791 + _930 + _947 + -mem[64] + 1
                                                    mem[64] = _1791 + _930 + _947 + 33
                                                    mem[_1791 + _930 + _947 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_1791 + _930 + _947 + 37] = msg.sender
                                                    mem[_1791 + _930 + _947 + 69] = 128
                                                    _2970 = mem[_2912]
                                                    mem[_1791 + _930 + _947 + 165] = mem[_2912]
                                                    s = 0
                                                    while s < _2970:
                                                        mem[s + _1791 + _930 + _947 + 197] = mem[s + _2912 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2970) > _2970:
                                                        mem[_2970 + _1791 + _930 + _947 + 197] = 0
                                                    mem[_1791 + _930 + _947 + 101] = address(cd[36])
                                                    mem[_1791 + _930 + _947 + 133] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1791 + _930 + _947 + 165 len ceil32(_2970) + 32]
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
                                            _1771 = mem[64]
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
                                                    if u - 1 >= mem[_1771]:
                                                        revert with 0, 50
                                                    mem[u + _1771 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                    _3849 = mem[_1771]
                                                    s = 0
                                                    while s < _3849:
                                                        mem[s + _2857 + _2881 + 33] = mem[s + _1771 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3849) <= _3849:
                                                        _4577 = mem[64]
                                                        mem[mem[64]] = _3849 + _2857 + _2881 + -mem[64] + 1
                                                        mem[64] = _3849 + _2857 + _2881 + 33
                                                        mem[_3849 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3849 + _2857 + _2881 + 37] = msg.sender
                                                        mem[_3849 + _2857 + _2881 + 69] = 128
                                                        _4673 = mem[_4577]
                                                        mem[_3849 + _2857 + _2881 + 165] = mem[_4577]
                                                        s = 0
                                                        while s < _4673:
                                                            mem[s + _3849 + _2857 + _2881 + 197] = mem[s + _4577 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4673) > _4673:
                                                            mem[_4673 + _3849 + _2857 + _2881 + 197] = 0
                                                        mem[_3849 + _2857 + _2881 + 101] = address(cd[36])
                                                        mem[_3849 + _2857 + _2881 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3849 + _2857 + _2881 + 165 len ceil32(_4673) + 32]
                                                    else:
                                                        mem[_3849 + _2857 + _2881 + 33] = 0
                                                        _4578 = mem[64]
                                                        mem[mem[64]] = _3849 + _2857 + _2881 + -mem[64] + 1
                                                        mem[64] = _3849 + _2857 + _2881 + 33
                                                        mem[_3849 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3849 + _2857 + _2881 + 37] = msg.sender
                                                        mem[_3849 + _2857 + _2881 + 69] = 128
                                                        _4674 = mem[_4578]
                                                        mem[_3849 + _2857 + _2881 + 165] = mem[_4578]
                                                        s = 0
                                                        while s < _4674:
                                                            mem[s + _3849 + _2857 + _2881 + 197] = mem[s + _4578 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4674) > _4674:
                                                            mem[_4674 + _3849 + _2857 + _2881 + 197] = 0
                                                        mem[_3849 + _2857 + _2881 + 101] = address(cd[36])
                                                        mem[_3849 + _2857 + _2881 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3849 + _2857 + _2881 + 165 len ceil32(_4674) + 32]
                                                else:
                                                    _3850 = mem[_1771]
                                                    s = 0
                                                    while s < _3850:
                                                        mem[s + _2857 + _2881 + 33] = mem[s + _1771 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3850) <= _3850:
                                                        _4579 = mem[64]
                                                        mem[mem[64]] = _3850 + _2857 + _2881 + -mem[64] + 1
                                                        mem[64] = _3850 + _2857 + _2881 + 33
                                                        mem[_3850 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3850 + _2857 + _2881 + 37] = msg.sender
                                                        mem[_3850 + _2857 + _2881 + 69] = 128
                                                        _4675 = mem[_4579]
                                                        mem[_3850 + _2857 + _2881 + 165] = mem[_4579]
                                                        s = 0
                                                        while s < _4675:
                                                            mem[s + _3850 + _2857 + _2881 + 197] = mem[s + _4579 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4675) > _4675:
                                                            mem[_4675 + _3850 + _2857 + _2881 + 197] = 0
                                                        mem[_3850 + _2857 + _2881 + 101] = address(cd[36])
                                                        mem[_3850 + _2857 + _2881 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3850 + _2857 + _2881 + 165 len ceil32(_4675) + 32]
                                                    else:
                                                        mem[_3850 + _2857 + _2881 + 33] = 0
                                                        _4580 = mem[64]
                                                        mem[mem[64]] = _3850 + _2857 + _2881 + -mem[64] + 1
                                                        mem[64] = _3850 + _2857 + _2881 + 33
                                                        mem[_3850 + _2857 + _2881 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3850 + _2857 + _2881 + 37] = msg.sender
                                                        mem[_3850 + _2857 + _2881 + 69] = 128
                                                        _4676 = mem[_4580]
                                                        mem[_3850 + _2857 + _2881 + 165] = mem[_4580]
                                                        s = 0
                                                        while s < _4676:
                                                            mem[s + _3850 + _2857 + _2881 + 197] = mem[s + _4580 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4676) > _4676:
                                                            mem[_4676 + _3850 + _2857 + _2881 + 197] = 0
                                                        mem[_3850 + _2857 + _2881 + 101] = address(cd[36])
                                                        mem[_3850 + _2857 + _2881 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3850 + _2857 + _2881 + 165 len ceil32(_4676) + 32]
                                            else:
                                                mem[_1771 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_1771]:
                                                        revert with 0, 50
                                                    mem[u + _1771 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                    _3851 = mem[_1771]
                                                    s = 0
                                                    while s < _3851:
                                                        mem[s + _2858 + _2882 + 33] = mem[s + _1771 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3851) <= _3851:
                                                        _4581 = mem[64]
                                                        mem[mem[64]] = _3851 + _2858 + _2882 + -mem[64] + 1
                                                        mem[64] = _3851 + _2858 + _2882 + 33
                                                        mem[_3851 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3851 + _2858 + _2882 + 37] = msg.sender
                                                        mem[_3851 + _2858 + _2882 + 69] = 128
                                                        _4677 = mem[_4581]
                                                        mem[_3851 + _2858 + _2882 + 165] = mem[_4581]
                                                        s = 0
                                                        while s < _4677:
                                                            mem[s + _3851 + _2858 + _2882 + 197] = mem[s + _4581 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4677) > _4677:
                                                            mem[_4677 + _3851 + _2858 + _2882 + 197] = 0
                                                        mem[_3851 + _2858 + _2882 + 101] = address(cd[36])
                                                        mem[_3851 + _2858 + _2882 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3851 + _2858 + _2882 + 165 len ceil32(_4677) + 32]
                                                    else:
                                                        mem[_3851 + _2858 + _2882 + 33] = 0
                                                        _4582 = mem[64]
                                                        mem[mem[64]] = _3851 + _2858 + _2882 + -mem[64] + 1
                                                        mem[64] = _3851 + _2858 + _2882 + 33
                                                        mem[_3851 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3851 + _2858 + _2882 + 37] = msg.sender
                                                        mem[_3851 + _2858 + _2882 + 69] = 128
                                                        _4678 = mem[_4582]
                                                        mem[_3851 + _2858 + _2882 + 165] = mem[_4582]
                                                        s = 0
                                                        while s < _4678:
                                                            mem[s + _3851 + _2858 + _2882 + 197] = mem[s + _4582 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4678) > _4678:
                                                            mem[_4678 + _3851 + _2858 + _2882 + 197] = 0
                                                        mem[_3851 + _2858 + _2882 + 101] = address(cd[36])
                                                        mem[_3851 + _2858 + _2882 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3851 + _2858 + _2882 + 165 len ceil32(_4678) + 32]
                                                else:
                                                    _3852 = mem[_1771]
                                                    s = 0
                                                    while s < _3852:
                                                        mem[s + _2858 + _2882 + 33] = mem[s + _1771 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3852) <= _3852:
                                                        _4583 = mem[64]
                                                        mem[mem[64]] = _3852 + _2858 + _2882 + -mem[64] + 1
                                                        mem[64] = _3852 + _2858 + _2882 + 33
                                                        mem[_3852 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3852 + _2858 + _2882 + 37] = msg.sender
                                                        mem[_3852 + _2858 + _2882 + 69] = 128
                                                        _4679 = mem[_4583]
                                                        mem[_3852 + _2858 + _2882 + 165] = mem[_4583]
                                                        s = 0
                                                        while s < _4679:
                                                            mem[s + _3852 + _2858 + _2882 + 197] = mem[s + _4583 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4679) > _4679:
                                                            mem[_4679 + _3852 + _2858 + _2882 + 197] = 0
                                                        mem[_3852 + _2858 + _2882 + 101] = address(cd[36])
                                                        mem[_3852 + _2858 + _2882 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3852 + _2858 + _2882 + 165 len ceil32(_4679) + 32]
                                                    else:
                                                        mem[_3852 + _2858 + _2882 + 33] = 0
                                                        _4584 = mem[64]
                                                        mem[mem[64]] = _3852 + _2858 + _2882 + -mem[64] + 1
                                                        mem[64] = _3852 + _2858 + _2882 + 33
                                                        mem[_3852 + _2858 + _2882 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_3852 + _2858 + _2882 + 37] = msg.sender
                                                        mem[_3852 + _2858 + _2882 + 69] = 128
                                                        _4680 = mem[_4584]
                                                        mem[_3852 + _2858 + _2882 + 165] = mem[_4584]
                                                        s = 0
                                                        while s < _4680:
                                                            mem[s + _3852 + _2858 + _2882 + 197] = mem[s + _4584 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4680) > _4680:
                                                            mem[_4680 + _3852 + _2858 + _2882 + 197] = 0
                                                        mem[_3852 + _2858 + _2882 + 101] = address(cd[36])
                                                        mem[_3852 + _2858 + _2882 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3852 + _2858 + _2882 + 165 len ceil32(_4680) + 32]
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
                                            _835 = mem[64]
                                            mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 128
                                            _849 = mem[128]
                                            mem[mem[64] + 132] = mem[128]
                                            s = 0
                                            while s < _849:
                                                mem[s + mem[64] + 164] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            if ceil32(_849) > _849:
                                                mem[_849 + _835 + 164] = 0
                                            mem[_835 + 68] = address(cd[36])
                                            mem[_835 + 100] = uint32(cd[100])
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(_849) + _835 + -mem[64] + 160]
                                        else:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _901 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_901] = 1
                                                mem[_901 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _933 = mem[64]
                                                _950 = mem[128]
                                                s = 0
                                                while s < _950:
                                                    mem[s + _933 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_933 + _950 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_950) <= _950:
                                                    _1796 = mem[_901]
                                                    s = 0
                                                    while s < _1796:
                                                        mem[s + _933 + _950 + 33] = mem[s + _901 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1796) <= _1796:
                                                        _2921 = mem[64]
                                                        mem[mem[64]] = _1796 + _933 + _950 + -mem[64] + 1
                                                        mem[64] = _1796 + _933 + _950 + 33
                                                        mem[_1796 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1796 + _933 + _950 + 37] = msg.sender
                                                        mem[_1796 + _933 + _950 + 69] = 128
                                                        _2985 = mem[_2921]
                                                        mem[_1796 + _933 + _950 + 165] = mem[_2921]
                                                        s = 0
                                                        while s < _2985:
                                                            mem[s + _1796 + _933 + _950 + 197] = mem[s + _2921 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2985) > _2985:
                                                            mem[_2985 + _1796 + _933 + _950 + 197] = 0
                                                        mem[_1796 + _933 + _950 + 101] = address(cd[36])
                                                        mem[_1796 + _933 + _950 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1796 + _933 + _950 + 165 len ceil32(_2985) + 32]
                                                    else:
                                                        mem[_1796 + _933 + _950 + 33] = 0
                                                        _2922 = mem[64]
                                                        mem[mem[64]] = _1796 + _933 + _950 + -mem[64] + 1
                                                        mem[64] = _1796 + _933 + _950 + 33
                                                        mem[_1796 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1796 + _933 + _950 + 37] = msg.sender
                                                        mem[_1796 + _933 + _950 + 69] = 128
                                                        _2986 = mem[_2922]
                                                        mem[_1796 + _933 + _950 + 165] = mem[_2922]
                                                        s = 0
                                                        while s < _2986:
                                                            mem[s + _1796 + _933 + _950 + 197] = mem[s + _2922 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2986) > _2986:
                                                            mem[_2986 + _1796 + _933 + _950 + 197] = 0
                                                        mem[_1796 + _933 + _950 + 101] = address(cd[36])
                                                        mem[_1796 + _933 + _950 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1796 + _933 + _950 + 165 len ceil32(_2986) + 32]
                                                else:
                                                    _1797 = mem[_901]
                                                    s = 0
                                                    while s < _1797:
                                                        mem[s + _933 + _950 + 33] = mem[s + _901 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1797) <= _1797:
                                                        _2923 = mem[64]
                                                        mem[mem[64]] = _1797 + _933 + _950 + -mem[64] + 1
                                                        mem[64] = _1797 + _933 + _950 + 33
                                                        mem[_1797 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1797 + _933 + _950 + 37] = msg.sender
                                                        mem[_1797 + _933 + _950 + 69] = 128
                                                        _2987 = mem[_2923]
                                                        mem[_1797 + _933 + _950 + 165] = mem[_2923]
                                                        s = 0
                                                        while s < _2987:
                                                            mem[s + _1797 + _933 + _950 + 197] = mem[s + _2923 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2987) > _2987:
                                                            mem[_2987 + _1797 + _933 + _950 + 197] = 0
                                                        mem[_1797 + _933 + _950 + 101] = address(cd[36])
                                                        mem[_1797 + _933 + _950 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1797 + _933 + _950 + 165 len ceil32(_2987) + 32]
                                                    else:
                                                        mem[_1797 + _933 + _950 + 33] = 0
                                                        _2924 = mem[64]
                                                        mem[mem[64]] = _1797 + _933 + _950 + -mem[64] + 1
                                                        mem[64] = _1797 + _933 + _950 + 33
                                                        mem[_1797 + _933 + _950 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1797 + _933 + _950 + 37] = msg.sender
                                                        mem[_1797 + _933 + _950 + 69] = 128
                                                        _2988 = mem[_2924]
                                                        mem[_1797 + _933 + _950 + 165] = mem[_2924]
                                                        s = 0
                                                        while s < _2988:
                                                            mem[s + _1797 + _933 + _950 + 197] = mem[s + _2924 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2988) > _2988:
                                                            mem[_2988 + _1797 + _933 + _950 + 197] = 0
                                                        mem[_1797 + _933 + _950 + 101] = address(cd[36])
                                                        mem[_1797 + _933 + _950 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1797 + _933 + _950 + 165 len ceil32(_2988) + 32]
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
                                                _1774 = mem[64]
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
                                                        if u - 1 >= mem[_1774]:
                                                            revert with 0, 50
                                                        mem[u + _1774 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                        _3861 = mem[_1774]
                                                        s = 0
                                                        while s < _3861:
                                                            mem[s + _2863 + _2887 + 33] = mem[s + _1774 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3861) <= _3861:
                                                            _4601 = mem[64]
                                                            mem[mem[64]] = _3861 + _2863 + _2887 + -mem[64] + 1
                                                            mem[64] = _3861 + _2863 + _2887 + 33
                                                            mem[_3861 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3861 + _2863 + _2887 + 37] = msg.sender
                                                            mem[_3861 + _2863 + _2887 + 69] = 128
                                                            _4697 = mem[_4601]
                                                            mem[_3861 + _2863 + _2887 + 165] = mem[_4601]
                                                            s = 0
                                                            while s < _4697:
                                                                mem[s + _3861 + _2863 + _2887 + 197] = mem[s + _4601 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4697) > _4697:
                                                                mem[_4697 + _3861 + _2863 + _2887 + 197] = 0
                                                            mem[_3861 + _2863 + _2887 + 101] = address(cd[36])
                                                            mem[_3861 + _2863 + _2887 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3861 + _2863 + _2887 + 165 len ceil32(_4697) + 32]
                                                        else:
                                                            mem[_3861 + _2863 + _2887 + 33] = 0
                                                            _4602 = mem[64]
                                                            mem[mem[64]] = _3861 + _2863 + _2887 + -mem[64] + 1
                                                            mem[64] = _3861 + _2863 + _2887 + 33
                                                            mem[_3861 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3861 + _2863 + _2887 + 37] = msg.sender
                                                            mem[_3861 + _2863 + _2887 + 69] = 128
                                                            _4698 = mem[_4602]
                                                            mem[_3861 + _2863 + _2887 + 165] = mem[_4602]
                                                            s = 0
                                                            while s < _4698:
                                                                mem[s + _3861 + _2863 + _2887 + 197] = mem[s + _4602 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4698) > _4698:
                                                                mem[_4698 + _3861 + _2863 + _2887 + 197] = 0
                                                            mem[_3861 + _2863 + _2887 + 101] = address(cd[36])
                                                            mem[_3861 + _2863 + _2887 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3861 + _2863 + _2887 + 165 len ceil32(_4698) + 32]
                                                    else:
                                                        _3862 = mem[_1774]
                                                        s = 0
                                                        while s < _3862:
                                                            mem[s + _2863 + _2887 + 33] = mem[s + _1774 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3862) <= _3862:
                                                            _4603 = mem[64]
                                                            mem[mem[64]] = _3862 + _2863 + _2887 + -mem[64] + 1
                                                            mem[64] = _3862 + _2863 + _2887 + 33
                                                            mem[_3862 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3862 + _2863 + _2887 + 37] = msg.sender
                                                            mem[_3862 + _2863 + _2887 + 69] = 128
                                                            _4699 = mem[_4603]
                                                            mem[_3862 + _2863 + _2887 + 165] = mem[_4603]
                                                            s = 0
                                                            while s < _4699:
                                                                mem[s + _3862 + _2863 + _2887 + 197] = mem[s + _4603 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4699) > _4699:
                                                                mem[_4699 + _3862 + _2863 + _2887 + 197] = 0
                                                            mem[_3862 + _2863 + _2887 + 101] = address(cd[36])
                                                            mem[_3862 + _2863 + _2887 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3862 + _2863 + _2887 + 165 len ceil32(_4699) + 32]
                                                        else:
                                                            mem[_3862 + _2863 + _2887 + 33] = 0
                                                            _4604 = mem[64]
                                                            mem[mem[64]] = _3862 + _2863 + _2887 + -mem[64] + 1
                                                            mem[64] = _3862 + _2863 + _2887 + 33
                                                            mem[_3862 + _2863 + _2887 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3862 + _2863 + _2887 + 37] = msg.sender
                                                            mem[_3862 + _2863 + _2887 + 69] = 128
                                                            _4700 = mem[_4604]
                                                            mem[_3862 + _2863 + _2887 + 165] = mem[_4604]
                                                            s = 0
                                                            while s < _4700:
                                                                mem[s + _3862 + _2863 + _2887 + 197] = mem[s + _4604 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4700) > _4700:
                                                                mem[_4700 + _3862 + _2863 + _2887 + 197] = 0
                                                            mem[_3862 + _2863 + _2887 + 101] = address(cd[36])
                                                            mem[_3862 + _2863 + _2887 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3862 + _2863 + _2887 + 165 len ceil32(_4700) + 32]
                                                else:
                                                    mem[_1774 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1774]:
                                                            revert with 0, 50
                                                        mem[u + _1774 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _2864 = mem[64]
                                                    _2888 = mem[128]
                                                    s = 0
                                                    while s < _2888:
                                                        mem[s + _2864 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_2864 + _2888 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_2888) <= _2888:
                                                        _3863 = mem[_1774]
                                                        s = 0
                                                        while s < _3863:
                                                            mem[s + _2864 + _2888 + 33] = mem[s + _1774 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3863) <= _3863:
                                                            _4605 = mem[64]
                                                            mem[mem[64]] = _3863 + _2864 + _2888 + -mem[64] + 1
                                                            mem[64] = _3863 + _2864 + _2888 + 33
                                                            mem[_3863 + _2864 + _2888 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3863 + _2864 + _2888 + 37] = msg.sender
                                                            mem[_3863 + _2864 + _2888 + 69] = 128
                                                            _4701 = mem[_4605]
                                                            mem[_3863 + _2864 + _2888 + 165] = mem[_4605]
                                                            s = 0
                                                            while s < _4701:
                                                                mem[s + _3863 + _2864 + _2888 + 197] = mem[s + _4605 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4701) > _4701:
                                                                mem[_4701 + _3863 + _2864 + _2888 + 197] = 0
                                                            mem[_3863 + _2864 + _2888 + 101] = address(cd[36])
                                                            mem[_3863 + _2864 + _2888 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3863 + _2864 + _2888 + 165 len ceil32(_4701) + 32]
                                                        else:
                                                            mem[_3863 + _2864 + _2888 + 33] = 0
                                                            _4606 = mem[64]
                                                            mem[mem[64]] = _3863 + _2864 + _2888 + -mem[64] + 1
                                                            mem[64] = _3863 + _2864 + _2888 + 33
                                                            mem[_3863 + _2864 + _2888 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3863 + _2864 + _2888 + 37] = msg.sender
                                                            mem[_3863 + _2864 + _2888 + 69] = 128
                                                            _4702 = mem[_4606]
                                                            mem[_3863 + _2864 + _2888 + 165] = mem[_4606]
                                                            s = 0
                                                            while s < _4702:
                                                                mem[s + _3863 + _2864 + _2888 + 197] = mem[s + _4606 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4702) > _4702:
                                                                mem[_4702 + _3863 + _2864 + _2888 + 197] = 0
                                                            mem[_3863 + _2864 + _2888 + 101] = address(cd[36])
                                                            mem[_3863 + _2864 + _2888 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3863 + _2864 + _2888 + 165 len ceil32(_4702) + 32]
                                                    else:
                                                        _3864 = mem[_1774]
                                                        s = 0
                                                        while s < _3864:
                                                            mem[s + _2864 + _2888 + 33] = mem[s + _1774 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3864) <= _3864:
                                                            _4607 = mem[64]
                                                            mem[mem[64]] = _3864 + _2864 + _2888 + -mem[64] + 1
                                                            mem[64] = _3864 + _2864 + _2888 + 33
                                                            mem[_3864 + _2864 + _2888 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3864 + _2864 + _2888 + 37] = msg.sender
                                                            mem[_3864 + _2864 + _2888 + 69] = 128
                                                            _4703 = mem[_4607]
                                                            mem[_3864 + _2864 + _2888 + 165] = mem[_4607]
                                                            s = 0
                                                            while s < _4703:
                                                                mem[s + _3864 + _2864 + _2888 + 197] = mem[s + _4607 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4703) > _4703:
                                                                mem[_4703 + _3864 + _2864 + _2888 + 197] = 0
                                                            mem[_3864 + _2864 + _2888 + 101] = address(cd[36])
                                                            mem[_3864 + _2864 + _2888 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3864 + _2864 + _2888 + 165 len ceil32(_4703) + 32]
                                                        else:
                                                            mem[_3864 + _2864 + _2888 + 33] = 0
                                                            _4608 = mem[64]
                                                            mem[mem[64]] = _3864 + _2864 + _2888 + -mem[64] + 1
                                                            mem[64] = _3864 + _2864 + _2888 + 33
                                                            mem[_3864 + _2864 + _2888 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3864 + _2864 + _2888 + 37] = msg.sender
                                                            mem[_3864 + _2864 + _2888 + 69] = 128
                                                            _4704 = mem[_4608]
                                                            mem[_3864 + _2864 + _2888 + 165] = mem[_4608]
                                                            s = 0
                                                            while s < _4704:
                                                                mem[s + _3864 + _2864 + _2888 + 197] = mem[s + _4608 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4704) > _4704:
                                                                mem[_4704 + _3864 + _2864 + _2888 + 197] = 0
                                                            mem[_3864 + _2864 + _2888 + 101] = address(cd[36])
                                                            mem[_3864 + _2864 + _2888 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3864 + _2864 + _2888 + 165 len ceil32(_4704) + 32]
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
                                                _899 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_899] = 1
                                                mem[_899 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _932 = mem[64]
                                                _949 = mem[128]
                                                s = 0
                                                while s < _949:
                                                    mem[s + _932 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_932 + _949 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_949) <= _949:
                                                    _1794 = mem[_899]
                                                    s = 0
                                                    while s < _1794:
                                                        mem[s + _932 + _949 + 33] = mem[s + _899 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1794) <= _1794:
                                                        _2917 = mem[64]
                                                        mem[mem[64]] = _1794 + _932 + _949 + -mem[64] + 1
                                                        mem[64] = _1794 + _932 + _949 + 33
                                                        mem[_1794 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1794 + _932 + _949 + 37] = msg.sender
                                                        mem[_1794 + _932 + _949 + 69] = 128
                                                        _2979 = mem[_2917]
                                                        mem[_1794 + _932 + _949 + 165] = mem[_2917]
                                                        s = 0
                                                        while s < _2979:
                                                            mem[s + _1794 + _932 + _949 + 197] = mem[s + _2917 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2979) > _2979:
                                                            mem[_2979 + _1794 + _932 + _949 + 197] = 0
                                                        mem[_1794 + _932 + _949 + 101] = address(cd[36])
                                                        mem[_1794 + _932 + _949 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1794 + _932 + _949 + 165 len ceil32(_2979) + 32]
                                                    else:
                                                        mem[_1794 + _932 + _949 + 33] = 0
                                                        _2918 = mem[64]
                                                        mem[mem[64]] = _1794 + _932 + _949 + -mem[64] + 1
                                                        mem[64] = _1794 + _932 + _949 + 33
                                                        mem[_1794 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1794 + _932 + _949 + 37] = msg.sender
                                                        mem[_1794 + _932 + _949 + 69] = 128
                                                        _2980 = mem[_2918]
                                                        mem[_1794 + _932 + _949 + 165] = mem[_2918]
                                                        s = 0
                                                        while s < _2980:
                                                            mem[s + _1794 + _932 + _949 + 197] = mem[s + _2918 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2980) > _2980:
                                                            mem[_2980 + _1794 + _932 + _949 + 197] = 0
                                                        mem[_1794 + _932 + _949 + 101] = address(cd[36])
                                                        mem[_1794 + _932 + _949 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1794 + _932 + _949 + 165 len ceil32(_2980) + 32]
                                                else:
                                                    _1795 = mem[_899]
                                                    s = 0
                                                    while s < _1795:
                                                        mem[s + _932 + _949 + 33] = mem[s + _899 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_1795) <= _1795:
                                                        _2919 = mem[64]
                                                        mem[mem[64]] = _1795 + _932 + _949 + -mem[64] + 1
                                                        mem[64] = _1795 + _932 + _949 + 33
                                                        mem[_1795 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1795 + _932 + _949 + 37] = msg.sender
                                                        mem[_1795 + _932 + _949 + 69] = 128
                                                        _2981 = mem[_2919]
                                                        mem[_1795 + _932 + _949 + 165] = mem[_2919]
                                                        s = 0
                                                        while s < _2981:
                                                            mem[s + _1795 + _932 + _949 + 197] = mem[s + _2919 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2981) > _2981:
                                                            mem[_2981 + _1795 + _932 + _949 + 197] = 0
                                                        mem[_1795 + _932 + _949 + 101] = address(cd[36])
                                                        mem[_1795 + _932 + _949 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1795 + _932 + _949 + 165 len ceil32(_2981) + 32]
                                                    else:
                                                        mem[_1795 + _932 + _949 + 33] = 0
                                                        _2920 = mem[64]
                                                        mem[mem[64]] = _1795 + _932 + _949 + -mem[64] + 1
                                                        mem[64] = _1795 + _932 + _949 + 33
                                                        mem[_1795 + _932 + _949 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_1795 + _932 + _949 + 37] = msg.sender
                                                        mem[_1795 + _932 + _949 + 69] = 128
                                                        _2982 = mem[_2920]
                                                        mem[_1795 + _932 + _949 + 165] = mem[_2920]
                                                        s = 0
                                                        while s < _2982:
                                                            mem[s + _1795 + _932 + _949 + 197] = mem[s + _2920 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_2982) > _2982:
                                                            mem[_2982 + _1795 + _932 + _949 + 197] = 0
                                                        mem[_1795 + _932 + _949 + 101] = address(cd[36])
                                                        mem[_1795 + _932 + _949 + 133] = uint32(cd[100])
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1795 + _932 + _949 + 165 len ceil32(_2982) + 32]
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
                                                _1773 = mem[64]
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
                                                        if u - 1 >= mem[_1773]:
                                                            revert with 0, 50
                                                        mem[u + _1773 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                        _3857 = mem[_1773]
                                                        s = 0
                                                        while s < _3857:
                                                            mem[s + _2861 + _2885 + 33] = mem[s + _1773 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3857) <= _3857:
                                                            _4593 = mem[64]
                                                            mem[mem[64]] = _3857 + _2861 + _2885 + -mem[64] + 1
                                                            mem[64] = _3857 + _2861 + _2885 + 33
                                                            mem[_3857 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3857 + _2861 + _2885 + 37] = msg.sender
                                                            mem[_3857 + _2861 + _2885 + 69] = 128
                                                            _4689 = mem[_4593]
                                                            mem[_3857 + _2861 + _2885 + 165] = mem[_4593]
                                                            s = 0
                                                            while s < _4689:
                                                                mem[s + _3857 + _2861 + _2885 + 197] = mem[s + _4593 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4689) > _4689:
                                                                mem[_4689 + _3857 + _2861 + _2885 + 197] = 0
                                                            mem[_3857 + _2861 + _2885 + 101] = address(cd[36])
                                                            mem[_3857 + _2861 + _2885 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3857 + _2861 + _2885 + 165 len ceil32(_4689) + 32]
                                                        else:
                                                            mem[_3857 + _2861 + _2885 + 33] = 0
                                                            _4594 = mem[64]
                                                            mem[mem[64]] = _3857 + _2861 + _2885 + -mem[64] + 1
                                                            mem[64] = _3857 + _2861 + _2885 + 33
                                                            mem[_3857 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3857 + _2861 + _2885 + 37] = msg.sender
                                                            mem[_3857 + _2861 + _2885 + 69] = 128
                                                            _4690 = mem[_4594]
                                                            mem[_3857 + _2861 + _2885 + 165] = mem[_4594]
                                                            s = 0
                                                            while s < _4690:
                                                                mem[s + _3857 + _2861 + _2885 + 197] = mem[s + _4594 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4690) > _4690:
                                                                mem[_4690 + _3857 + _2861 + _2885 + 197] = 0
                                                            mem[_3857 + _2861 + _2885 + 101] = address(cd[36])
                                                            mem[_3857 + _2861 + _2885 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3857 + _2861 + _2885 + 165 len ceil32(_4690) + 32]
                                                    else:
                                                        _3858 = mem[_1773]
                                                        s = 0
                                                        while s < _3858:
                                                            mem[s + _2861 + _2885 + 33] = mem[s + _1773 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3858) <= _3858:
                                                            _4595 = mem[64]
                                                            mem[mem[64]] = _3858 + _2861 + _2885 + -mem[64] + 1
                                                            mem[64] = _3858 + _2861 + _2885 + 33
                                                            mem[_3858 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3858 + _2861 + _2885 + 37] = msg.sender
                                                            mem[_3858 + _2861 + _2885 + 69] = 128
                                                            _4691 = mem[_4595]
                                                            mem[_3858 + _2861 + _2885 + 165] = mem[_4595]
                                                            s = 0
                                                            while s < _4691:
                                                                mem[s + _3858 + _2861 + _2885 + 197] = mem[s + _4595 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4691) > _4691:
                                                                mem[_4691 + _3858 + _2861 + _2885 + 197] = 0
                                                            mem[_3858 + _2861 + _2885 + 101] = address(cd[36])
                                                            mem[_3858 + _2861 + _2885 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3858 + _2861 + _2885 + 165 len ceil32(_4691) + 32]
                                                        else:
                                                            mem[_3858 + _2861 + _2885 + 33] = 0
                                                            _4596 = mem[64]
                                                            mem[mem[64]] = _3858 + _2861 + _2885 + -mem[64] + 1
                                                            mem[64] = _3858 + _2861 + _2885 + 33
                                                            mem[_3858 + _2861 + _2885 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3858 + _2861 + _2885 + 37] = msg.sender
                                                            mem[_3858 + _2861 + _2885 + 69] = 128
                                                            _4692 = mem[_4596]
                                                            mem[_3858 + _2861 + _2885 + 165] = mem[_4596]
                                                            s = 0
                                                            while s < _4692:
                                                                mem[s + _3858 + _2861 + _2885 + 197] = mem[s + _4596 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4692) > _4692:
                                                                mem[_4692 + _3858 + _2861 + _2885 + 197] = 0
                                                            mem[_3858 + _2861 + _2885 + 101] = address(cd[36])
                                                            mem[_3858 + _2861 + _2885 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3858 + _2861 + _2885 + 165 len ceil32(_4692) + 32]
                                                else:
                                                    mem[_1773 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_1773]:
                                                            revert with 0, 50
                                                        mem[u + _1773 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
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
                                                        _3859 = mem[_1773]
                                                        s = 0
                                                        while s < _3859:
                                                            mem[s + _2862 + _2886 + 33] = mem[s + _1773 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3859) <= _3859:
                                                            _4597 = mem[64]
                                                            mem[mem[64]] = _3859 + _2862 + _2886 + -mem[64] + 1
                                                            mem[64] = _3859 + _2862 + _2886 + 33
                                                            mem[_3859 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3859 + _2862 + _2886 + 37] = msg.sender
                                                            mem[_3859 + _2862 + _2886 + 69] = 128
                                                            _4693 = mem[_4597]
                                                            mem[_3859 + _2862 + _2886 + 165] = mem[_4597]
                                                            s = 0
                                                            while s < _4693:
                                                                mem[s + _3859 + _2862 + _2886 + 197] = mem[s + _4597 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4693) > _4693:
                                                                mem[_4693 + _3859 + _2862 + _2886 + 197] = 0
                                                            mem[_3859 + _2862 + _2886 + 101] = address(cd[36])
                                                            mem[_3859 + _2862 + _2886 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3859 + _2862 + _2886 + 165 len ceil32(_4693) + 32]
                                                        else:
                                                            mem[_3859 + _2862 + _2886 + 33] = 0
                                                            _4598 = mem[64]
                                                            mem[mem[64]] = _3859 + _2862 + _2886 + -mem[64] + 1
                                                            mem[64] = _3859 + _2862 + _2886 + 33
                                                            mem[_3859 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3859 + _2862 + _2886 + 37] = msg.sender
                                                            mem[_3859 + _2862 + _2886 + 69] = 128
                                                            _4694 = mem[_4598]
                                                            mem[_3859 + _2862 + _2886 + 165] = mem[_4598]
                                                            s = 0
                                                            while s < _4694:
                                                                mem[s + _3859 + _2862 + _2886 + 197] = mem[s + _4598 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4694) > _4694:
                                                                mem[_4694 + _3859 + _2862 + _2886 + 197] = 0
                                                            mem[_3859 + _2862 + _2886 + 101] = address(cd[36])
                                                            mem[_3859 + _2862 + _2886 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3859 + _2862 + _2886 + 165 len ceil32(_4694) + 32]
                                                    else:
                                                        _3860 = mem[_1773]
                                                        s = 0
                                                        while s < _3860:
                                                            mem[s + _2862 + _2886 + 33] = mem[s + _1773 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3860) <= _3860:
                                                            _4599 = mem[64]
                                                            mem[mem[64]] = _3860 + _2862 + _2886 + -mem[64] + 1
                                                            mem[64] = _3860 + _2862 + _2886 + 33
                                                            mem[_3860 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3860 + _2862 + _2886 + 37] = msg.sender
                                                            mem[_3860 + _2862 + _2886 + 69] = 128
                                                            _4695 = mem[_4599]
                                                            mem[_3860 + _2862 + _2886 + 165] = mem[_4599]
                                                            s = 0
                                                            while s < _4695:
                                                                mem[s + _3860 + _2862 + _2886 + 197] = mem[s + _4599 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4695) > _4695:
                                                                mem[_4695 + _3860 + _2862 + _2886 + 197] = 0
                                                            mem[_3860 + _2862 + _2886 + 101] = address(cd[36])
                                                            mem[_3860 + _2862 + _2886 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3860 + _2862 + _2886 + 165 len ceil32(_4695) + 32]
                                                        else:
                                                            mem[_3860 + _2862 + _2886 + 33] = 0
                                                            _4600 = mem[64]
                                                            mem[mem[64]] = _3860 + _2862 + _2886 + -mem[64] + 1
                                                            mem[64] = _3860 + _2862 + _2886 + 33
                                                            mem[_3860 + _2862 + _2886 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_3860 + _2862 + _2886 + 37] = msg.sender
                                                            mem[_3860 + _2862 + _2886 + 69] = 128
                                                            _4696 = mem[_4600]
                                                            mem[_3860 + _2862 + _2886 + 165] = mem[_4600]
                                                            s = 0
                                                            while s < _4696:
                                                                mem[s + _3860 + _2862 + _2886 + 197] = mem[s + _4600 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_4696) > _4696:
                                                                mem[_4696 + _3860 + _2862 + _2886 + 197] = 0
                                                            mem[_3860 + _2862 + _2886 + 101] = address(cd[36])
                                                            mem[_3860 + _2862 + _2886 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3860 + _2862 + _2886 + 165 len ceil32(_4696) + 32]
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
                                                _837 = mem[64]
                                                mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 128
                                                _851 = mem[128]
                                                mem[mem[64] + 132] = mem[128]
                                                s = 0
                                                while s < _851:
                                                    mem[s + mem[64] + 164] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_851) > _851:
                                                    mem[_851 + _837 + 164] = 0
                                                mem[_837 + 68] = address(cd[36])
                                                mem[_837 + 100] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(_851) + _837 + -mem[64] + 160]
                                            else:
                                                if 1 > !idx:
                                                    revert with 0, 17
                                                if not -idx - 1:
                                                    _905 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_905] = 1
                                                    mem[_905 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    _935 = mem[64]
                                                    _952 = mem[128]
                                                    s = 0
                                                    while s < _952:
                                                        mem[s + _935 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_935 + _952 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_952) <= _952:
                                                        _1800 = mem[_905]
                                                        s = 0
                                                        while s < _1800:
                                                            mem[s + _935 + _952 + 33] = mem[s + _905 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1800) <= _1800:
                                                            _2929 = mem[64]
                                                            mem[mem[64]] = _1800 + _935 + _952 + -mem[64] + 1
                                                            mem[64] = _1800 + _935 + _952 + 33
                                                            mem[_1800 + _935 + _952 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1800 + _935 + _952 + 37] = msg.sender
                                                            mem[_1800 + _935 + _952 + 69] = 128
                                                            _2997 = mem[_2929]
                                                            mem[_1800 + _935 + _952 + 165] = mem[_2929]
                                                            s = 0
                                                            while s < _2997:
                                                                mem[s + _1800 + _935 + _952 + 197] = mem[s + _2929 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2997) > _2997:
                                                                mem[_2997 + _1800 + _935 + _952 + 197] = 0
                                                            mem[_1800 + _935 + _952 + 101] = address(cd[36])
                                                            mem[_1800 + _935 + _952 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1800 + _935 + _952 + 165 len ceil32(_2997) + 32]
                                                        else:
                                                            mem[_1800 + _935 + _952 + 33] = 0
                                                            _2930 = mem[64]
                                                            mem[mem[64]] = _1800 + _935 + _952 + -mem[64] + 1
                                                            mem[64] = _1800 + _935 + _952 + 33
                                                            mem[_1800 + _935 + _952 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1800 + _935 + _952 + 37] = msg.sender
                                                            mem[_1800 + _935 + _952 + 69] = 128
                                                            _2998 = mem[_2930]
                                                            mem[_1800 + _935 + _952 + 165] = mem[_2930]
                                                            s = 0
                                                            while s < _2998:
                                                                mem[s + _1800 + _935 + _952 + 197] = mem[s + _2930 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2998) > _2998:
                                                                mem[_2998 + _1800 + _935 + _952 + 197] = 0
                                                            mem[_1800 + _935 + _952 + 101] = address(cd[36])
                                                            mem[_1800 + _935 + _952 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1800 + _935 + _952 + 165 len ceil32(_2998) + 32]
                                                    else:
                                                        _1801 = mem[_905]
                                                        s = 0
                                                        while s < _1801:
                                                            mem[s + _935 + _952 + 33] = mem[s + _905 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1801) <= _1801:
                                                            _2931 = mem[64]
                                                            mem[mem[64]] = _1801 + _935 + _952 + -mem[64] + 1
                                                            mem[64] = _1801 + _935 + _952 + 33
                                                            mem[_1801 + _935 + _952 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1801 + _935 + _952 + 37] = msg.sender
                                                            mem[_1801 + _935 + _952 + 69] = 128
                                                            _2999 = mem[_2931]
                                                            mem[_1801 + _935 + _952 + 165] = mem[_2931]
                                                            s = 0
                                                            while s < _2999:
                                                                mem[s + _1801 + _935 + _952 + 197] = mem[s + _2931 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2999) > _2999:
                                                                mem[_2999 + _1801 + _935 + _952 + 197] = 0
                                                            mem[_1801 + _935 + _952 + 101] = address(cd[36])
                                                            mem[_1801 + _935 + _952 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1801 + _935 + _952 + 165 len ceil32(_2999) + 32]
                                                        else:
                                                            mem[_1801 + _935 + _952 + 33] = 0
                                                            _2932 = mem[64]
                                                            mem[mem[64]] = _1801 + _935 + _952 + -mem[64] + 1
                                                            mem[64] = _1801 + _935 + _952 + 33
                                                            mem[_1801 + _935 + _952 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1801 + _935 + _952 + 37] = msg.sender
                                                            mem[_1801 + _935 + _952 + 69] = 128
                                                            _3000 = mem[_2932]
                                                            mem[_1801 + _935 + _952 + 165] = mem[_2932]
                                                            s = 0
                                                            while s < _3000:
                                                                mem[s + _1801 + _935 + _952 + 197] = mem[s + _2932 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3000) > _3000:
                                                                mem[_3000 + _1801 + _935 + _952 + 197] = 0
                                                            mem[_1801 + _935 + _952 + 101] = address(cd[36])
                                                            mem[_1801 + _935 + _952 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1801 + _935 + _952 + 165 len ceil32(_3000) + 32]
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
                                                    _1776 = mem[64]
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
                                                            if u - 1 >= mem[_1776]:
                                                                revert with 0, 50
                                                            mem[u + _1776 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2867 = mem[64]
                                                        _2891 = mem[128]
                                                        s = 0
                                                        while s < _2891:
                                                            mem[s + _2867 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2867 + _2891 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2891) <= _2891:
                                                            _3869 = mem[_1776]
                                                            s = 0
                                                            while s < _3869:
                                                                mem[s + _2867 + _2891 + 33] = mem[s + _1776 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3869) <= _3869:
                                                                _4617 = mem[64]
                                                                mem[mem[64]] = _3869 + _2867 + _2891 + -mem[64] + 1
                                                                mem[64] = _3869 + _2867 + _2891 + 33
                                                                mem[_3869 + _2867 + _2891 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3869 + _2867 + _2891 + 37] = msg.sender
                                                                mem[_3869 + _2867 + _2891 + 69] = 128
                                                                _4713 = mem[_4617]
                                                                mem[_3869 + _2867 + _2891 + 165] = mem[_4617]
                                                                s = 0
                                                                while s < _4713:
                                                                    mem[s + _3869 + _2867 + _2891 + 197] = mem[s + _4617 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4713) > _4713:
                                                                    mem[_4713 + _3869 + _2867 + _2891 + 197] = 0
                                                                mem[_3869 + _2867 + _2891 + 101] = address(cd[36])
                                                                mem[_3869 + _2867 + _2891 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3869 + _2867 + _2891 + 165 len ceil32(_4713) + 32]
                                                            else:
                                                                mem[_3869 + _2867 + _2891 + 33] = 0
                                                                _4618 = mem[64]
                                                                mem[mem[64]] = _3869 + _2867 + _2891 + -mem[64] + 1
                                                                mem[64] = _3869 + _2867 + _2891 + 33
                                                                mem[_3869 + _2867 + _2891 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3869 + _2867 + _2891 + 37] = msg.sender
                                                                mem[_3869 + _2867 + _2891 + 69] = 128
                                                                _4714 = mem[_4618]
                                                                mem[_3869 + _2867 + _2891 + 165] = mem[_4618]
                                                                s = 0
                                                                while s < _4714:
                                                                    mem[s + _3869 + _2867 + _2891 + 197] = mem[s + _4618 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4714) > _4714:
                                                                    mem[_4714 + _3869 + _2867 + _2891 + 197] = 0
                                                                mem[_3869 + _2867 + _2891 + 101] = address(cd[36])
                                                                mem[_3869 + _2867 + _2891 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3869 + _2867 + _2891 + 165 len ceil32(_4714) + 32]
                                                        else:
                                                            _3870 = mem[_1776]
                                                            s = 0
                                                            while s < _3870:
                                                                mem[s + _2867 + _2891 + 33] = mem[s + _1776 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3870) <= _3870:
                                                                _4619 = mem[64]
                                                                mem[mem[64]] = _3870 + _2867 + _2891 + -mem[64] + 1
                                                                mem[64] = _3870 + _2867 + _2891 + 33
                                                                mem[_3870 + _2867 + _2891 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3870 + _2867 + _2891 + 37] = msg.sender
                                                                mem[_3870 + _2867 + _2891 + 69] = 128
                                                                _4715 = mem[_4619]
                                                                mem[_3870 + _2867 + _2891 + 165] = mem[_4619]
                                                                s = 0
                                                                while s < _4715:
                                                                    mem[s + _3870 + _2867 + _2891 + 197] = mem[s + _4619 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4715) > _4715:
                                                                    mem[_4715 + _3870 + _2867 + _2891 + 197] = 0
                                                                mem[_3870 + _2867 + _2891 + 101] = address(cd[36])
                                                                mem[_3870 + _2867 + _2891 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3870 + _2867 + _2891 + 165 len ceil32(_4715) + 32]
                                                            else:
                                                                mem[_3870 + _2867 + _2891 + 33] = 0
                                                                _4620 = mem[64]
                                                                mem[mem[64]] = _3870 + _2867 + _2891 + -mem[64] + 1
                                                                mem[64] = _3870 + _2867 + _2891 + 33
                                                                mem[_3870 + _2867 + _2891 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3870 + _2867 + _2891 + 37] = msg.sender
                                                                mem[_3870 + _2867 + _2891 + 69] = 128
                                                                _4716 = mem[_4620]
                                                                mem[_3870 + _2867 + _2891 + 165] = mem[_4620]
                                                                s = 0
                                                                while s < _4716:
                                                                    mem[s + _3870 + _2867 + _2891 + 197] = mem[s + _4620 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4716) > _4716:
                                                                    mem[_4716 + _3870 + _2867 + _2891 + 197] = 0
                                                                mem[_3870 + _2867 + _2891 + 101] = address(cd[36])
                                                                mem[_3870 + _2867 + _2891 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3870 + _2867 + _2891 + 165 len ceil32(_4716) + 32]
                                                    else:
                                                        mem[_1776 + 32 len t] = call.data[calldata.size len t]
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1776]:
                                                                revert with 0, 50
                                                            mem[u + _1776 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2868 = mem[64]
                                                        _2892 = mem[128]
                                                        s = 0
                                                        while s < _2892:
                                                            mem[s + _2868 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2868 + _2892 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2892) <= _2892:
                                                            _3871 = mem[_1776]
                                                            s = 0
                                                            while s < _3871:
                                                                mem[s + _2868 + _2892 + 33] = mem[s + _1776 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3871) <= _3871:
                                                                _4621 = mem[64]
                                                                mem[mem[64]] = _3871 + _2868 + _2892 + -mem[64] + 1
                                                                mem[64] = _3871 + _2868 + _2892 + 33
                                                                mem[_3871 + _2868 + _2892 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3871 + _2868 + _2892 + 37] = msg.sender
                                                                mem[_3871 + _2868 + _2892 + 69] = 128
                                                                _4717 = mem[_4621]
                                                                mem[_3871 + _2868 + _2892 + 165] = mem[_4621]
                                                                s = 0
                                                                while s < _4717:
                                                                    mem[s + _3871 + _2868 + _2892 + 197] = mem[s + _4621 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4717) > _4717:
                                                                    mem[_4717 + _3871 + _2868 + _2892 + 197] = 0
                                                                mem[_3871 + _2868 + _2892 + 101] = address(cd[36])
                                                                mem[_3871 + _2868 + _2892 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3871 + _2868 + _2892 + 165 len ceil32(_4717) + 32]
                                                            else:
                                                                mem[_3871 + _2868 + _2892 + 33] = 0
                                                                _4622 = mem[64]
                                                                mem[mem[64]] = _3871 + _2868 + _2892 + -mem[64] + 1
                                                                mem[64] = _3871 + _2868 + _2892 + 33
                                                                mem[_3871 + _2868 + _2892 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3871 + _2868 + _2892 + 37] = msg.sender
                                                                mem[_3871 + _2868 + _2892 + 69] = 128
                                                                _4718 = mem[_4622]
                                                                mem[_3871 + _2868 + _2892 + 165] = mem[_4622]
                                                                s = 0
                                                                while s < _4718:
                                                                    mem[s + _3871 + _2868 + _2892 + 197] = mem[s + _4622 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4718) > _4718:
                                                                    mem[_4718 + _3871 + _2868 + _2892 + 197] = 0
                                                                mem[_3871 + _2868 + _2892 + 101] = address(cd[36])
                                                                mem[_3871 + _2868 + _2892 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3871 + _2868 + _2892 + 165 len ceil32(_4718) + 32]
                                                        else:
                                                            _3872 = mem[_1776]
                                                            s = 0
                                                            while s < _3872:
                                                                mem[s + _2868 + _2892 + 33] = mem[s + _1776 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3872) <= _3872:
                                                                _4623 = mem[64]
                                                                mem[mem[64]] = _3872 + _2868 + _2892 + -mem[64] + 1
                                                                mem[64] = _3872 + _2868 + _2892 + 33
                                                                mem[_3872 + _2868 + _2892 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3872 + _2868 + _2892 + 37] = msg.sender
                                                                mem[_3872 + _2868 + _2892 + 69] = 128
                                                                _4719 = mem[_4623]
                                                                mem[_3872 + _2868 + _2892 + 165] = mem[_4623]
                                                                s = 0
                                                                while s < _4719:
                                                                    mem[s + _3872 + _2868 + _2892 + 197] = mem[s + _4623 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4719) > _4719:
                                                                    mem[_4719 + _3872 + _2868 + _2892 + 197] = 0
                                                                mem[_3872 + _2868 + _2892 + 101] = address(cd[36])
                                                                mem[_3872 + _2868 + _2892 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3872 + _2868 + _2892 + 165 len ceil32(_4719) + 32]
                                                            else:
                                                                mem[_3872 + _2868 + _2892 + 33] = 0
                                                                _4624 = mem[64]
                                                                mem[mem[64]] = _3872 + _2868 + _2892 + -mem[64] + 1
                                                                mem[64] = _3872 + _2868 + _2892 + 33
                                                                mem[_3872 + _2868 + _2892 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3872 + _2868 + _2892 + 37] = msg.sender
                                                                mem[_3872 + _2868 + _2892 + 69] = 128
                                                                _4720 = mem[_4624]
                                                                mem[_3872 + _2868 + _2892 + 165] = mem[_4624]
                                                                s = 0
                                                                while s < _4720:
                                                                    mem[s + _3872 + _2868 + _2892 + 197] = mem[s + _4624 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4720) > _4720:
                                                                    mem[_4720 + _3872 + _2868 + _2892 + 197] = 0
                                                                mem[_3872 + _2868 + _2892 + 101] = address(cd[36])
                                                                mem[_3872 + _2868 + _2892 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3872 + _2868 + _2892 + 165 len ceil32(_4720) + 32]
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
                                                mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[128]
                                                s = 0
                                                while s < mem[128]:
                                                    mem[s + mem[64] + 164] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[128]) > mem[128]:
                                                    mem[mem[128] + mem[64] + 164] = 0
                                                mem[mem[64] + 68] = address(cd[36])
                                                mem[mem[64] + 100] = uint32(cd[100])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=mem[128], data=mem[mem[64] + 164 len ceil32(mem[128])]), address(cd[36]), uint32(cd[100])
                                            else:
                                                if 1 > !idx:
                                                    revert with 0, 17
                                                if not -idx - 1:
                                                    _903 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_903] = 1
                                                    mem[_903 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                    _934 = mem[64]
                                                    _951 = mem[128]
                                                    s = 0
                                                    while s < _951:
                                                        mem[s + _934 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_934 + _951 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_951) <= _951:
                                                        _1798 = mem[_903]
                                                        s = 0
                                                        while s < _1798:
                                                            mem[s + _934 + _951 + 33] = mem[s + _903 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1798) <= _1798:
                                                            _2925 = mem[64]
                                                            mem[mem[64]] = _1798 + _934 + _951 + -mem[64] + 1
                                                            mem[64] = _1798 + _934 + _951 + 33
                                                            mem[_1798 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1798 + _934 + _951 + 37] = msg.sender
                                                            mem[_1798 + _934 + _951 + 69] = 128
                                                            _2991 = mem[_2925]
                                                            mem[_1798 + _934 + _951 + 165] = mem[_2925]
                                                            s = 0
                                                            while s < _2991:
                                                                mem[s + _1798 + _934 + _951 + 197] = mem[s + _2925 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2991) > _2991:
                                                                mem[_2991 + _1798 + _934 + _951 + 197] = 0
                                                            mem[_1798 + _934 + _951 + 101] = address(cd[36])
                                                            mem[_1798 + _934 + _951 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1798 + _934 + _951 + 165 len ceil32(_2991) + 32]
                                                        else:
                                                            mem[_1798 + _934 + _951 + 33] = 0
                                                            _2926 = mem[64]
                                                            mem[mem[64]] = _1798 + _934 + _951 + -mem[64] + 1
                                                            mem[64] = _1798 + _934 + _951 + 33
                                                            mem[_1798 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1798 + _934 + _951 + 37] = msg.sender
                                                            mem[_1798 + _934 + _951 + 69] = 128
                                                            _2992 = mem[_2926]
                                                            mem[_1798 + _934 + _951 + 165] = mem[_2926]
                                                            s = 0
                                                            while s < _2992:
                                                                mem[s + _1798 + _934 + _951 + 197] = mem[s + _2926 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2992) > _2992:
                                                                mem[_2992 + _1798 + _934 + _951 + 197] = 0
                                                            mem[_1798 + _934 + _951 + 101] = address(cd[36])
                                                            mem[_1798 + _934 + _951 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1798 + _934 + _951 + 165 len ceil32(_2992) + 32]
                                                    else:
                                                        _1799 = mem[_903]
                                                        s = 0
                                                        while s < _1799:
                                                            mem[s + _934 + _951 + 33] = mem[s + _903 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_1799) <= _1799:
                                                            _2927 = mem[64]
                                                            mem[mem[64]] = _1799 + _934 + _951 + -mem[64] + 1
                                                            mem[64] = _1799 + _934 + _951 + 33
                                                            mem[_1799 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1799 + _934 + _951 + 37] = msg.sender
                                                            mem[_1799 + _934 + _951 + 69] = 128
                                                            _2993 = mem[_2927]
                                                            mem[_1799 + _934 + _951 + 165] = mem[_2927]
                                                            s = 0
                                                            while s < _2993:
                                                                mem[s + _1799 + _934 + _951 + 197] = mem[s + _2927 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2993) > _2993:
                                                                mem[_2993 + _1799 + _934 + _951 + 197] = 0
                                                            mem[_1799 + _934 + _951 + 101] = address(cd[36])
                                                            mem[_1799 + _934 + _951 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1799 + _934 + _951 + 165 len ceil32(_2993) + 32]
                                                        else:
                                                            mem[_1799 + _934 + _951 + 33] = 0
                                                            _2928 = mem[64]
                                                            mem[mem[64]] = _1799 + _934 + _951 + -mem[64] + 1
                                                            mem[64] = _1799 + _934 + _951 + 33
                                                            mem[_1799 + _934 + _951 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_1799 + _934 + _951 + 37] = msg.sender
                                                            mem[_1799 + _934 + _951 + 69] = 128
                                                            _2994 = mem[_2928]
                                                            mem[_1799 + _934 + _951 + 165] = mem[_2928]
                                                            s = 0
                                                            while s < _2994:
                                                                mem[s + _1799 + _934 + _951 + 197] = mem[s + _2928 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_2994) > _2994:
                                                                mem[_2994 + _1799 + _934 + _951 + 197] = 0
                                                            mem[_1799 + _934 + _951 + 101] = address(cd[36])
                                                            mem[_1799 + _934 + _951 + 133] = uint32(cd[100])
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1799 + _934 + _951 + 165 len ceil32(_2994) + 32]
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
                                                    _1775 = mem[64]
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
                                                            if u - 1 >= mem[_1775]:
                                                                revert with 0, 50
                                                            mem[u + _1775 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2865 = mem[64]
                                                        _2889 = mem[128]
                                                        s = 0
                                                        while s < _2889:
                                                            mem[s + _2865 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2865 + _2889 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2889) <= _2889:
                                                            _3865 = mem[_1775]
                                                            s = 0
                                                            while s < _3865:
                                                                mem[s + _2865 + _2889 + 33] = mem[s + _1775 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3865) <= _3865:
                                                                _4609 = mem[64]
                                                                mem[mem[64]] = _3865 + _2865 + _2889 + -mem[64] + 1
                                                                mem[64] = _3865 + _2865 + _2889 + 33
                                                                mem[_3865 + _2865 + _2889 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3865 + _2865 + _2889 + 37] = msg.sender
                                                                mem[_3865 + _2865 + _2889 + 69] = 128
                                                                _4705 = mem[_4609]
                                                                mem[_3865 + _2865 + _2889 + 165] = mem[_4609]
                                                                s = 0
                                                                while s < _4705:
                                                                    mem[s + _3865 + _2865 + _2889 + 197] = mem[s + _4609 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4705) > _4705:
                                                                    mem[_4705 + _3865 + _2865 + _2889 + 197] = 0
                                                                mem[_3865 + _2865 + _2889 + 101] = address(cd[36])
                                                                mem[_3865 + _2865 + _2889 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3865 + _2865 + _2889 + 165 len ceil32(_4705) + 32]
                                                            else:
                                                                mem[_3865 + _2865 + _2889 + 33] = 0
                                                                _4610 = mem[64]
                                                                mem[mem[64]] = _3865 + _2865 + _2889 + -mem[64] + 1
                                                                mem[64] = _3865 + _2865 + _2889 + 33
                                                                mem[_3865 + _2865 + _2889 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3865 + _2865 + _2889 + 37] = msg.sender
                                                                mem[_3865 + _2865 + _2889 + 69] = 128
                                                                _4706 = mem[_4610]
                                                                mem[_3865 + _2865 + _2889 + 165] = mem[_4610]
                                                                s = 0
                                                                while s < _4706:
                                                                    mem[s + _3865 + _2865 + _2889 + 197] = mem[s + _4610 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4706) > _4706:
                                                                    mem[_4706 + _3865 + _2865 + _2889 + 197] = 0
                                                                mem[_3865 + _2865 + _2889 + 101] = address(cd[36])
                                                                mem[_3865 + _2865 + _2889 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3865 + _2865 + _2889 + 165 len ceil32(_4706) + 32]
                                                        else:
                                                            _3866 = mem[_1775]
                                                            s = 0
                                                            while s < _3866:
                                                                mem[s + _2865 + _2889 + 33] = mem[s + _1775 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3866) <= _3866:
                                                                _4611 = mem[64]
                                                                mem[mem[64]] = _3866 + _2865 + _2889 + -mem[64] + 1
                                                                mem[64] = _3866 + _2865 + _2889 + 33
                                                                mem[_3866 + _2865 + _2889 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3866 + _2865 + _2889 + 37] = msg.sender
                                                                mem[_3866 + _2865 + _2889 + 69] = 128
                                                                _4707 = mem[_4611]
                                                                mem[_3866 + _2865 + _2889 + 165] = mem[_4611]
                                                                s = 0
                                                                while s < _4707:
                                                                    mem[s + _3866 + _2865 + _2889 + 197] = mem[s + _4611 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4707) > _4707:
                                                                    mem[_4707 + _3866 + _2865 + _2889 + 197] = 0
                                                                mem[_3866 + _2865 + _2889 + 101] = address(cd[36])
                                                                mem[_3866 + _2865 + _2889 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3866 + _2865 + _2889 + 165 len ceil32(_4707) + 32]
                                                            else:
                                                                mem[_3866 + _2865 + _2889 + 33] = 0
                                                                _4612 = mem[64]
                                                                mem[mem[64]] = _3866 + _2865 + _2889 + -mem[64] + 1
                                                                mem[64] = _3866 + _2865 + _2889 + 33
                                                                mem[_3866 + _2865 + _2889 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3866 + _2865 + _2889 + 37] = msg.sender
                                                                mem[_3866 + _2865 + _2889 + 69] = 128
                                                                _4708 = mem[_4612]
                                                                mem[_3866 + _2865 + _2889 + 165] = mem[_4612]
                                                                s = 0
                                                                while s < _4708:
                                                                    mem[s + _3866 + _2865 + _2889 + 197] = mem[s + _4612 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4708) > _4708:
                                                                    mem[_4708 + _3866 + _2865 + _2889 + 197] = 0
                                                                mem[_3866 + _2865 + _2889 + 101] = address(cd[36])
                                                                mem[_3866 + _2865 + _2889 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3866 + _2865 + _2889 + 165 len ceil32(_4708) + 32]
                                                    else:
                                                        mem[_1775 + 32 len t] = call.data[calldata.size len t]
                                                        u = t
                                                        s = idx + 1
                                                        while s:
                                                            if u < 1:
                                                                revert with 0, 17
                                                            if 48 > !(s % 10):
                                                                revert with 0, 17
                                                            if u - 1 >= mem[_1775]:
                                                                revert with 0, 50
                                                            mem[u + _1775 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                            u = u - 1
                                                            s = s / 10
                                                            continue 
                                                        _2866 = mem[64]
                                                        _2890 = mem[128]
                                                        s = 0
                                                        while s < _2890:
                                                            mem[s + _2866 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_2866 + _2890 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_2890) <= _2890:
                                                            _3867 = mem[_1775]
                                                            s = 0
                                                            while s < _3867:
                                                                mem[s + _2866 + _2890 + 33] = mem[s + _1775 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3867) <= _3867:
                                                                _4613 = mem[64]
                                                                mem[mem[64]] = _3867 + _2866 + _2890 + -mem[64] + 1
                                                                mem[64] = _3867 + _2866 + _2890 + 33
                                                                mem[_3867 + _2866 + _2890 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3867 + _2866 + _2890 + 37] = msg.sender
                                                                mem[_3867 + _2866 + _2890 + 69] = 128
                                                                _4709 = mem[_4613]
                                                                mem[_3867 + _2866 + _2890 + 165] = mem[_4613]
                                                                s = 0
                                                                while s < _4709:
                                                                    mem[s + _3867 + _2866 + _2890 + 197] = mem[s + _4613 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4709) > _4709:
                                                                    mem[_4709 + _3867 + _2866 + _2890 + 197] = 0
                                                                mem[_3867 + _2866 + _2890 + 101] = address(cd[36])
                                                                mem[_3867 + _2866 + _2890 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3867 + _2866 + _2890 + 165 len ceil32(_4709) + 32]
                                                            else:
                                                                mem[_3867 + _2866 + _2890 + 33] = 0
                                                                _4614 = mem[64]
                                                                mem[mem[64]] = _3867 + _2866 + _2890 + -mem[64] + 1
                                                                mem[64] = _3867 + _2866 + _2890 + 33
                                                                mem[_3867 + _2866 + _2890 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3867 + _2866 + _2890 + 37] = msg.sender
                                                                mem[_3867 + _2866 + _2890 + 69] = 128
                                                                _4710 = mem[_4614]
                                                                mem[_3867 + _2866 + _2890 + 165] = mem[_4614]
                                                                s = 0
                                                                while s < _4710:
                                                                    mem[s + _3867 + _2866 + _2890 + 197] = mem[s + _4614 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4710) > _4710:
                                                                    mem[_4710 + _3867 + _2866 + _2890 + 197] = 0
                                                                mem[_3867 + _2866 + _2890 + 101] = address(cd[36])
                                                                mem[_3867 + _2866 + _2890 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3867 + _2866 + _2890 + 165 len ceil32(_4710) + 32]
                                                        else:
                                                            _3868 = mem[_1775]
                                                            s = 0
                                                            while s < _3868:
                                                                mem[s + _2866 + _2890 + 33] = mem[s + _1775 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_3868) <= _3868:
                                                                _4615 = mem[64]
                                                                mem[mem[64]] = _3868 + _2866 + _2890 + -mem[64] + 1
                                                                mem[64] = _3868 + _2866 + _2890 + 33
                                                                mem[_3868 + _2866 + _2890 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3868 + _2866 + _2890 + 37] = msg.sender
                                                                mem[_3868 + _2866 + _2890 + 69] = 128
                                                                _4711 = mem[_4615]
                                                                mem[_3868 + _2866 + _2890 + 165] = mem[_4615]
                                                                s = 0
                                                                while s < _4711:
                                                                    mem[s + _3868 + _2866 + _2890 + 197] = mem[s + _4615 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4711) > _4711:
                                                                    mem[_4711 + _3868 + _2866 + _2890 + 197] = 0
                                                                mem[_3868 + _2866 + _2890 + 101] = address(cd[36])
                                                                mem[_3868 + _2866 + _2890 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3868 + _2866 + _2890 + 165 len ceil32(_4711) + 32]
                                                            else:
                                                                mem[_3868 + _2866 + _2890 + 33] = 0
                                                                _4616 = mem[64]
                                                                mem[mem[64]] = _3868 + _2866 + _2890 + -mem[64] + 1
                                                                mem[64] = _3868 + _2866 + _2890 + 33
                                                                mem[_3868 + _2866 + _2890 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_3868 + _2866 + _2890 + 37] = msg.sender
                                                                mem[_3868 + _2866 + _2890 + 69] = 128
                                                                _4712 = mem[_4616]
                                                                mem[_3868 + _2866 + _2890 + 165] = mem[_4616]
                                                                s = 0
                                                                while s < _4712:
                                                                    mem[s + _3868 + _2866 + _2890 + 197] = mem[s + _4616 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_4712) > _4712:
                                                                    mem[_4712 + _3868 + _2866 + _2890 + 197] = 0
                                                                mem[_3868 + _2866 + _2890 + 101] = address(cd[36])
                                                                mem[_3868 + _2866 + _2890 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3868 + _2866 + _2890 + 165 len ceil32(_4712) + 32]
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
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < mem[128]:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + mem[64] + 164] = 0
                                                    mem[mem[64] + 68] = address(cd[36])
                                                    mem[mem[64] + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 164 len ceil32(mem[128])]), address(cd[36]), uint32(cd[100])
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _909 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_909] = 1
                                                        mem[_909 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _937 = mem[64]
                                                        _954 = mem[128]
                                                        s = 0
                                                        while s < _954:
                                                            mem[s + _937 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_937 + _954 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_954) <= _954:
                                                            _1804 = mem[_909]
                                                            s = 0
                                                            while s < _1804:
                                                                mem[s + _937 + _954 + 33] = mem[s + _909 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1804) <= _1804:
                                                                _2937 = mem[64]
                                                                mem[mem[64]] = _1804 + _937 + _954 + -mem[64] + 1
                                                                mem[64] = _1804 + _937 + _954 + 33
                                                                mem[_1804 + _937 + _954 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1804 + _937 + _954 + 37] = msg.sender
                                                                mem[_1804 + _937 + _954 + 69] = 128
                                                                _3009 = mem[_2937]
                                                                mem[_1804 + _937 + _954 + 165] = mem[_2937]
                                                                s = 0
                                                                while s < _3009:
                                                                    mem[s + _1804 + _937 + _954 + 197] = mem[s + _2937 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3009) > _3009:
                                                                    mem[_3009 + _1804 + _937 + _954 + 197] = 0
                                                                mem[_1804 + _937 + _954 + 101] = address(cd[36])
                                                                mem[_1804 + _937 + _954 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1804 + _937 + _954 + 165 len ceil32(_3009) + 32]
                                                            else:
                                                                mem[_1804 + _937 + _954 + 33] = 0
                                                                _2938 = mem[64]
                                                                mem[mem[64]] = _1804 + _937 + _954 + -mem[64] + 1
                                                                mem[64] = _1804 + _937 + _954 + 33
                                                                mem[_1804 + _937 + _954 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1804 + _937 + _954 + 37] = msg.sender
                                                                mem[_1804 + _937 + _954 + 69] = 128
                                                                _3010 = mem[_2938]
                                                                mem[_1804 + _937 + _954 + 165] = mem[_2938]
                                                                s = 0
                                                                while s < _3010:
                                                                    mem[s + _1804 + _937 + _954 + 197] = mem[s + _2938 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3010) > _3010:
                                                                    mem[_3010 + _1804 + _937 + _954 + 197] = 0
                                                                mem[_1804 + _937 + _954 + 101] = address(cd[36])
                                                                mem[_1804 + _937 + _954 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1804 + _937 + _954 + 165 len ceil32(_3010) + 32]
                                                        else:
                                                            _1805 = mem[_909]
                                                            s = 0
                                                            while s < _1805:
                                                                mem[s + _937 + _954 + 33] = mem[s + _909 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1805) <= _1805:
                                                                _2939 = mem[64]
                                                                mem[mem[64]] = _1805 + _937 + _954 + -mem[64] + 1
                                                                mem[64] = _1805 + _937 + _954 + 33
                                                                mem[_1805 + _937 + _954 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1805 + _937 + _954 + 37] = msg.sender
                                                                mem[_1805 + _937 + _954 + 69] = 128
                                                                _3011 = mem[_2939]
                                                                mem[_1805 + _937 + _954 + 165] = mem[_2939]
                                                                s = 0
                                                                while s < _3011:
                                                                    mem[s + _1805 + _937 + _954 + 197] = mem[s + _2939 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3011) > _3011:
                                                                    mem[_3011 + _1805 + _937 + _954 + 197] = 0
                                                                mem[_1805 + _937 + _954 + 101] = address(cd[36])
                                                                mem[_1805 + _937 + _954 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1805 + _937 + _954 + 165 len ceil32(_3011) + 32]
                                                            else:
                                                                mem[_1805 + _937 + _954 + 33] = 0
                                                                _2940 = mem[64]
                                                                mem[mem[64]] = _1805 + _937 + _954 + -mem[64] + 1
                                                                mem[64] = _1805 + _937 + _954 + 33
                                                                mem[_1805 + _937 + _954 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1805 + _937 + _954 + 37] = msg.sender
                                                                mem[_1805 + _937 + _954 + 69] = 128
                                                                _3012 = mem[_2940]
                                                                mem[_1805 + _937 + _954 + 165] = mem[_2940]
                                                                s = 0
                                                                while s < _3012:
                                                                    mem[s + _1805 + _937 + _954 + 197] = mem[s + _2940 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3012) > _3012:
                                                                    mem[_3012 + _1805 + _937 + _954 + 197] = 0
                                                                mem[_1805 + _937 + _954 + 101] = address(cd[36])
                                                                mem[_1805 + _937 + _954 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1805 + _937 + _954 + 165 len ceil32(_3012) + 32]
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
                                                        _1778 = mem[64]
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
                                                                if u - 1 >= mem[_1778]:
                                                                    revert with 0, 50
                                                                mem[u + _1778 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2871 = mem[64]
                                                            _2895 = mem[128]
                                                            s = 0
                                                            while s < _2895:
                                                                mem[s + _2871 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2871 + _2895 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2895) <= _2895:
                                                                _3877 = mem[_1778]
                                                                s = 0
                                                                while s < _3877:
                                                                    mem[s + _2871 + _2895 + 33] = mem[s + _1778 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3877) <= _3877:
                                                                    _4633 = mem[64]
                                                                    mem[mem[64]] = _3877 + _2871 + _2895 + -mem[64] + 1
                                                                    mem[64] = _3877 + _2871 + _2895 + 33
                                                                    mem[_3877 + _2871 + _2895 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3877 + _2871 + _2895 + 37] = msg.sender
                                                                    mem[_3877 + _2871 + _2895 + 69] = 128
                                                                    _4729 = mem[_4633]
                                                                    mem[_3877 + _2871 + _2895 + 165] = mem[_4633]
                                                                    s = 0
                                                                    while s < _4729:
                                                                        mem[s + _3877 + _2871 + _2895 + 197] = mem[s + _4633 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4729) > _4729:
                                                                        mem[_4729 + _3877 + _2871 + _2895 + 197] = 0
                                                                    mem[_3877 + _2871 + _2895 + 101] = address(cd[36])
                                                                    mem[_3877 + _2871 + _2895 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3877 + _2871 + _2895 + 165 len ceil32(_4729) + 32]
                                                                else:
                                                                    mem[_3877 + _2871 + _2895 + 33] = 0
                                                                    _4634 = mem[64]
                                                                    mem[mem[64]] = _3877 + _2871 + _2895 + -mem[64] + 1
                                                                    mem[64] = _3877 + _2871 + _2895 + 33
                                                                    mem[_3877 + _2871 + _2895 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3877 + _2871 + _2895 + 37] = msg.sender
                                                                    mem[_3877 + _2871 + _2895 + 69] = 128
                                                                    _4730 = mem[_4634]
                                                                    mem[_3877 + _2871 + _2895 + 165] = mem[_4634]
                                                                    s = 0
                                                                    while s < _4730:
                                                                        mem[s + _3877 + _2871 + _2895 + 197] = mem[s + _4634 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4730) > _4730:
                                                                        mem[_4730 + _3877 + _2871 + _2895 + 197] = 0
                                                                    mem[_3877 + _2871 + _2895 + 101] = address(cd[36])
                                                                    mem[_3877 + _2871 + _2895 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3877 + _2871 + _2895 + 165 len ceil32(_4730) + 32]
                                                            else:
                                                                _3878 = mem[_1778]
                                                                s = 0
                                                                while s < _3878:
                                                                    mem[s + _2871 + _2895 + 33] = mem[s + _1778 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3878) <= _3878:
                                                                    _4635 = mem[64]
                                                                    mem[mem[64]] = _3878 + _2871 + _2895 + -mem[64] + 1
                                                                    mem[64] = _3878 + _2871 + _2895 + 33
                                                                    mem[_3878 + _2871 + _2895 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3878 + _2871 + _2895 + 37] = msg.sender
                                                                    mem[_3878 + _2871 + _2895 + 69] = 128
                                                                    _4731 = mem[_4635]
                                                                    mem[_3878 + _2871 + _2895 + 165] = mem[_4635]
                                                                    s = 0
                                                                    while s < _4731:
                                                                        mem[s + _3878 + _2871 + _2895 + 197] = mem[s + _4635 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4731) > _4731:
                                                                        mem[_4731 + _3878 + _2871 + _2895 + 197] = 0
                                                                    mem[_3878 + _2871 + _2895 + 101] = address(cd[36])
                                                                    mem[_3878 + _2871 + _2895 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3878 + _2871 + _2895 + 165 len ceil32(_4731) + 32]
                                                                else:
                                                                    mem[_3878 + _2871 + _2895 + 33] = 0
                                                                    _4636 = mem[64]
                                                                    mem[mem[64]] = _3878 + _2871 + _2895 + -mem[64] + 1
                                                                    mem[64] = _3878 + _2871 + _2895 + 33
                                                                    mem[_3878 + _2871 + _2895 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3878 + _2871 + _2895 + 37] = msg.sender
                                                                    mem[_3878 + _2871 + _2895 + 69] = 128
                                                                    _4732 = mem[_4636]
                                                                    mem[_3878 + _2871 + _2895 + 165] = mem[_4636]
                                                                    s = 0
                                                                    while s < _4732:
                                                                        mem[s + _3878 + _2871 + _2895 + 197] = mem[s + _4636 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4732) > _4732:
                                                                        mem[_4732 + _3878 + _2871 + _2895 + 197] = 0
                                                                    mem[_3878 + _2871 + _2895 + 101] = address(cd[36])
                                                                    mem[_3878 + _2871 + _2895 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3878 + _2871 + _2895 + 165 len ceil32(_4732) + 32]
                                                        else:
                                                            mem[_1778 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1778]:
                                                                    revert with 0, 50
                                                                mem[u + _1778 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2872 = mem[64]
                                                            _2896 = mem[128]
                                                            s = 0
                                                            while s < _2896:
                                                                mem[s + _2872 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2872 + _2896 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2896) <= _2896:
                                                                _3879 = mem[_1778]
                                                                s = 0
                                                                while s < _3879:
                                                                    mem[s + _2872 + _2896 + 33] = mem[s + _1778 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3879) <= _3879:
                                                                    _4637 = mem[64]
                                                                    mem[mem[64]] = _3879 + _2872 + _2896 + -mem[64] + 1
                                                                    mem[64] = _3879 + _2872 + _2896 + 33
                                                                    mem[_3879 + _2872 + _2896 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3879 + _2872 + _2896 + 37] = msg.sender
                                                                    mem[_3879 + _2872 + _2896 + 69] = 128
                                                                    _4733 = mem[_4637]
                                                                    mem[_3879 + _2872 + _2896 + 165] = mem[_4637]
                                                                    s = 0
                                                                    while s < _4733:
                                                                        mem[s + _3879 + _2872 + _2896 + 197] = mem[s + _4637 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4733) > _4733:
                                                                        mem[_4733 + _3879 + _2872 + _2896 + 197] = 0
                                                                    mem[_3879 + _2872 + _2896 + 101] = address(cd[36])
                                                                    mem[_3879 + _2872 + _2896 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3879 + _2872 + _2896 + 165 len ceil32(_4733) + 32]
                                                                else:
                                                                    mem[_3879 + _2872 + _2896 + 33] = 0
                                                                    _4638 = mem[64]
                                                                    mem[mem[64]] = _3879 + _2872 + _2896 + -mem[64] + 1
                                                                    mem[64] = _3879 + _2872 + _2896 + 33
                                                                    mem[_3879 + _2872 + _2896 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3879 + _2872 + _2896 + 37] = msg.sender
                                                                    mem[_3879 + _2872 + _2896 + 69] = 128
                                                                    _4734 = mem[_4638]
                                                                    mem[_3879 + _2872 + _2896 + 165] = mem[_4638]
                                                                    s = 0
                                                                    while s < _4734:
                                                                        mem[s + _3879 + _2872 + _2896 + 197] = mem[s + _4638 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4734) > _4734:
                                                                        mem[_4734 + _3879 + _2872 + _2896 + 197] = 0
                                                                    mem[_3879 + _2872 + _2896 + 101] = address(cd[36])
                                                                    mem[_3879 + _2872 + _2896 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3879 + _2872 + _2896 + 165 len ceil32(_4734) + 32]
                                                            else:
                                                                _3880 = mem[_1778]
                                                                s = 0
                                                                while s < _3880:
                                                                    mem[s + _2872 + _2896 + 33] = mem[s + _1778 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3880) <= _3880:
                                                                    _4639 = mem[64]
                                                                    mem[mem[64]] = _3880 + _2872 + _2896 + -mem[64] + 1
                                                                    mem[64] = _3880 + _2872 + _2896 + 33
                                                                    mem[_3880 + _2872 + _2896 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3880 + _2872 + _2896 + 37] = msg.sender
                                                                    mem[_3880 + _2872 + _2896 + 69] = 128
                                                                    _4735 = mem[_4639]
                                                                    mem[_3880 + _2872 + _2896 + 165] = mem[_4639]
                                                                    s = 0
                                                                    while s < _4735:
                                                                        mem[s + _3880 + _2872 + _2896 + 197] = mem[s + _4639 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4735) > _4735:
                                                                        mem[_4735 + _3880 + _2872 + _2896 + 197] = 0
                                                                    mem[_3880 + _2872 + _2896 + 101] = address(cd[36])
                                                                    mem[_3880 + _2872 + _2896 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3880 + _2872 + _2896 + 165 len ceil32(_4735) + 32]
                                                                else:
                                                                    mem[_3880 + _2872 + _2896 + 33] = 0
                                                                    _4640 = mem[64]
                                                                    mem[mem[64]] = _3880 + _2872 + _2896 + -mem[64] + 1
                                                                    mem[64] = _3880 + _2872 + _2896 + 33
                                                                    mem[_3880 + _2872 + _2896 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3880 + _2872 + _2896 + 37] = msg.sender
                                                                    mem[_3880 + _2872 + _2896 + 69] = 128
                                                                    _4736 = mem[_4640]
                                                                    mem[_3880 + _2872 + _2896 + 165] = mem[_4640]
                                                                    s = 0
                                                                    while s < _4736:
                                                                        mem[s + _3880 + _2872 + _2896 + 197] = mem[s + _4640 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4736) > _4736:
                                                                        mem[_4736 + _3880 + _2872 + _2896 + 197] = 0
                                                                    mem[_3880 + _2872 + _2896 + 101] = address(cd[36])
                                                                    mem[_3880 + _2872 + _2896 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3880 + _2872 + _2896 + 165 len ceil32(_4736) + 32]
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
                                                    _838 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _852 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < _852:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_852) > _852:
                                                        mem[_852 + _838 + 164] = 0
                                                    mem[_838 + 68] = address(cd[36])
                                                    mem[_838 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_852) + _838 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _907 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_907] = 1
                                                        mem[_907 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _936 = mem[64]
                                                        _953 = mem[128]
                                                        s = 0
                                                        while s < _953:
                                                            mem[s + _936 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_936 + _953 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_953) <= _953:
                                                            _1802 = mem[_907]
                                                            s = 0
                                                            while s < _1802:
                                                                mem[s + _936 + _953 + 33] = mem[s + _907 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1802) <= _1802:
                                                                _2933 = mem[64]
                                                                mem[mem[64]] = _1802 + _936 + _953 + -mem[64] + 1
                                                                mem[64] = _1802 + _936 + _953 + 33
                                                                mem[_1802 + _936 + _953 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1802 + _936 + _953 + 37] = msg.sender
                                                                mem[_1802 + _936 + _953 + 69] = 128
                                                                _3003 = mem[_2933]
                                                                mem[_1802 + _936 + _953 + 165] = mem[_2933]
                                                                s = 0
                                                                while s < _3003:
                                                                    mem[s + _1802 + _936 + _953 + 197] = mem[s + _2933 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3003) > _3003:
                                                                    mem[_3003 + _1802 + _936 + _953 + 197] = 0
                                                                mem[_1802 + _936 + _953 + 101] = address(cd[36])
                                                                mem[_1802 + _936 + _953 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1802 + _936 + _953 + 165 len ceil32(_3003) + 32]
                                                            else:
                                                                mem[_1802 + _936 + _953 + 33] = 0
                                                                _2934 = mem[64]
                                                                mem[mem[64]] = _1802 + _936 + _953 + -mem[64] + 1
                                                                mem[64] = _1802 + _936 + _953 + 33
                                                                mem[_1802 + _936 + _953 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1802 + _936 + _953 + 37] = msg.sender
                                                                mem[_1802 + _936 + _953 + 69] = 128
                                                                _3004 = mem[_2934]
                                                                mem[_1802 + _936 + _953 + 165] = mem[_2934]
                                                                s = 0
                                                                while s < _3004:
                                                                    mem[s + _1802 + _936 + _953 + 197] = mem[s + _2934 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3004) > _3004:
                                                                    mem[_3004 + _1802 + _936 + _953 + 197] = 0
                                                                mem[_1802 + _936 + _953 + 101] = address(cd[36])
                                                                mem[_1802 + _936 + _953 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1802 + _936 + _953 + 165 len ceil32(_3004) + 32]
                                                        else:
                                                            _1803 = mem[_907]
                                                            s = 0
                                                            while s < _1803:
                                                                mem[s + _936 + _953 + 33] = mem[s + _907 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1803) <= _1803:
                                                                _2935 = mem[64]
                                                                mem[mem[64]] = _1803 + _936 + _953 + -mem[64] + 1
                                                                mem[64] = _1803 + _936 + _953 + 33
                                                                mem[_1803 + _936 + _953 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1803 + _936 + _953 + 37] = msg.sender
                                                                mem[_1803 + _936 + _953 + 69] = 128
                                                                _3005 = mem[_2935]
                                                                mem[_1803 + _936 + _953 + 165] = mem[_2935]
                                                                s = 0
                                                                while s < _3005:
                                                                    mem[s + _1803 + _936 + _953 + 197] = mem[s + _2935 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3005) > _3005:
                                                                    mem[_3005 + _1803 + _936 + _953 + 197] = 0
                                                                mem[_1803 + _936 + _953 + 101] = address(cd[36])
                                                                mem[_1803 + _936 + _953 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1803 + _936 + _953 + 165 len ceil32(_3005) + 32]
                                                            else:
                                                                mem[_1803 + _936 + _953 + 33] = 0
                                                                _2936 = mem[64]
                                                                mem[mem[64]] = _1803 + _936 + _953 + -mem[64] + 1
                                                                mem[64] = _1803 + _936 + _953 + 33
                                                                mem[_1803 + _936 + _953 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1803 + _936 + _953 + 37] = msg.sender
                                                                mem[_1803 + _936 + _953 + 69] = 128
                                                                _3006 = mem[_2936]
                                                                mem[_1803 + _936 + _953 + 165] = mem[_2936]
                                                                s = 0
                                                                while s < _3006:
                                                                    mem[s + _1803 + _936 + _953 + 197] = mem[s + _2936 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3006) > _3006:
                                                                    mem[_3006 + _1803 + _936 + _953 + 197] = 0
                                                                mem[_1803 + _936 + _953 + 101] = address(cd[36])
                                                                mem[_1803 + _936 + _953 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1803 + _936 + _953 + 165 len ceil32(_3006) + 32]
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
                                                        _1777 = mem[64]
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
                                                                if u - 1 >= mem[_1777]:
                                                                    revert with 0, 50
                                                                mem[u + _1777 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2869 = mem[64]
                                                            _2893 = mem[128]
                                                            s = 0
                                                            while s < _2893:
                                                                mem[s + _2869 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2869 + _2893 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2893) <= _2893:
                                                                _3873 = mem[_1777]
                                                                s = 0
                                                                while s < _3873:
                                                                    mem[s + _2869 + _2893 + 33] = mem[s + _1777 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3873) <= _3873:
                                                                    _4625 = mem[64]
                                                                    mem[mem[64]] = _3873 + _2869 + _2893 + -mem[64] + 1
                                                                    mem[64] = _3873 + _2869 + _2893 + 33
                                                                    mem[_3873 + _2869 + _2893 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3873 + _2869 + _2893 + 37] = msg.sender
                                                                    mem[_3873 + _2869 + _2893 + 69] = 128
                                                                    _4721 = mem[_4625]
                                                                    mem[_3873 + _2869 + _2893 + 165] = mem[_4625]
                                                                    s = 0
                                                                    while s < _4721:
                                                                        mem[s + _3873 + _2869 + _2893 + 197] = mem[s + _4625 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4721) > _4721:
                                                                        mem[_4721 + _3873 + _2869 + _2893 + 197] = 0
                                                                    mem[_3873 + _2869 + _2893 + 101] = address(cd[36])
                                                                    mem[_3873 + _2869 + _2893 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3873 + _2869 + _2893 + 165 len ceil32(_4721) + 32]
                                                                else:
                                                                    mem[_3873 + _2869 + _2893 + 33] = 0
                                                                    _4626 = mem[64]
                                                                    mem[mem[64]] = _3873 + _2869 + _2893 + -mem[64] + 1
                                                                    mem[64] = _3873 + _2869 + _2893 + 33
                                                                    mem[_3873 + _2869 + _2893 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3873 + _2869 + _2893 + 37] = msg.sender
                                                                    mem[_3873 + _2869 + _2893 + 69] = 128
                                                                    _4722 = mem[_4626]
                                                                    mem[_3873 + _2869 + _2893 + 165] = mem[_4626]
                                                                    s = 0
                                                                    while s < _4722:
                                                                        mem[s + _3873 + _2869 + _2893 + 197] = mem[s + _4626 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4722) > _4722:
                                                                        mem[_4722 + _3873 + _2869 + _2893 + 197] = 0
                                                                    mem[_3873 + _2869 + _2893 + 101] = address(cd[36])
                                                                    mem[_3873 + _2869 + _2893 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3873 + _2869 + _2893 + 165 len ceil32(_4722) + 32]
                                                            else:
                                                                _3874 = mem[_1777]
                                                                s = 0
                                                                while s < _3874:
                                                                    mem[s + _2869 + _2893 + 33] = mem[s + _1777 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3874) <= _3874:
                                                                    _4627 = mem[64]
                                                                    mem[mem[64]] = _3874 + _2869 + _2893 + -mem[64] + 1
                                                                    mem[64] = _3874 + _2869 + _2893 + 33
                                                                    mem[_3874 + _2869 + _2893 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3874 + _2869 + _2893 + 37] = msg.sender
                                                                    mem[_3874 + _2869 + _2893 + 69] = 128
                                                                    _4723 = mem[_4627]
                                                                    mem[_3874 + _2869 + _2893 + 165] = mem[_4627]
                                                                    s = 0
                                                                    while s < _4723:
                                                                        mem[s + _3874 + _2869 + _2893 + 197] = mem[s + _4627 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4723) > _4723:
                                                                        mem[_4723 + _3874 + _2869 + _2893 + 197] = 0
                                                                    mem[_3874 + _2869 + _2893 + 101] = address(cd[36])
                                                                    mem[_3874 + _2869 + _2893 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3874 + _2869 + _2893 + 165 len ceil32(_4723) + 32]
                                                                else:
                                                                    mem[_3874 + _2869 + _2893 + 33] = 0
                                                                    _4628 = mem[64]
                                                                    mem[mem[64]] = _3874 + _2869 + _2893 + -mem[64] + 1
                                                                    mem[64] = _3874 + _2869 + _2893 + 33
                                                                    mem[_3874 + _2869 + _2893 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3874 + _2869 + _2893 + 37] = msg.sender
                                                                    mem[_3874 + _2869 + _2893 + 69] = 128
                                                                    _4724 = mem[_4628]
                                                                    mem[_3874 + _2869 + _2893 + 165] = mem[_4628]
                                                                    s = 0
                                                                    while s < _4724:
                                                                        mem[s + _3874 + _2869 + _2893 + 197] = mem[s + _4628 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4724) > _4724:
                                                                        mem[_4724 + _3874 + _2869 + _2893 + 197] = 0
                                                                    mem[_3874 + _2869 + _2893 + 101] = address(cd[36])
                                                                    mem[_3874 + _2869 + _2893 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3874 + _2869 + _2893 + 165 len ceil32(_4724) + 32]
                                                        else:
                                                            mem[_1777 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1777]:
                                                                    revert with 0, 50
                                                                mem[u + _1777 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2870 = mem[64]
                                                            _2894 = mem[128]
                                                            s = 0
                                                            while s < _2894:
                                                                mem[s + _2870 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2870 + _2894 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2894) <= _2894:
                                                                _3875 = mem[_1777]
                                                                s = 0
                                                                while s < _3875:
                                                                    mem[s + _2870 + _2894 + 33] = mem[s + _1777 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3875) <= _3875:
                                                                    _4629 = mem[64]
                                                                    mem[mem[64]] = _3875 + _2870 + _2894 + -mem[64] + 1
                                                                    mem[64] = _3875 + _2870 + _2894 + 33
                                                                    mem[_3875 + _2870 + _2894 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3875 + _2870 + _2894 + 37] = msg.sender
                                                                    mem[_3875 + _2870 + _2894 + 69] = 128
                                                                    _4725 = mem[_4629]
                                                                    mem[_3875 + _2870 + _2894 + 165] = mem[_4629]
                                                                    s = 0
                                                                    while s < _4725:
                                                                        mem[s + _3875 + _2870 + _2894 + 197] = mem[s + _4629 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4725) > _4725:
                                                                        mem[_4725 + _3875 + _2870 + _2894 + 197] = 0
                                                                    mem[_3875 + _2870 + _2894 + 101] = address(cd[36])
                                                                    mem[_3875 + _2870 + _2894 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3875 + _2870 + _2894 + 165 len ceil32(_4725) + 32]
                                                                else:
                                                                    mem[_3875 + _2870 + _2894 + 33] = 0
                                                                    _4630 = mem[64]
                                                                    mem[mem[64]] = _3875 + _2870 + _2894 + -mem[64] + 1
                                                                    mem[64] = _3875 + _2870 + _2894 + 33
                                                                    mem[_3875 + _2870 + _2894 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3875 + _2870 + _2894 + 37] = msg.sender
                                                                    mem[_3875 + _2870 + _2894 + 69] = 128
                                                                    _4726 = mem[_4630]
                                                                    mem[_3875 + _2870 + _2894 + 165] = mem[_4630]
                                                                    s = 0
                                                                    while s < _4726:
                                                                        mem[s + _3875 + _2870 + _2894 + 197] = mem[s + _4630 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4726) > _4726:
                                                                        mem[_4726 + _3875 + _2870 + _2894 + 197] = 0
                                                                    mem[_3875 + _2870 + _2894 + 101] = address(cd[36])
                                                                    mem[_3875 + _2870 + _2894 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3875 + _2870 + _2894 + 165 len ceil32(_4726) + 32]
                                                            else:
                                                                _3876 = mem[_1777]
                                                                s = 0
                                                                while s < _3876:
                                                                    mem[s + _2870 + _2894 + 33] = mem[s + _1777 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3876) <= _3876:
                                                                    _4631 = mem[64]
                                                                    mem[mem[64]] = _3876 + _2870 + _2894 + -mem[64] + 1
                                                                    mem[64] = _3876 + _2870 + _2894 + 33
                                                                    mem[_3876 + _2870 + _2894 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3876 + _2870 + _2894 + 37] = msg.sender
                                                                    mem[_3876 + _2870 + _2894 + 69] = 128
                                                                    _4727 = mem[_4631]
                                                                    mem[_3876 + _2870 + _2894 + 165] = mem[_4631]
                                                                    s = 0
                                                                    while s < _4727:
                                                                        mem[s + _3876 + _2870 + _2894 + 197] = mem[s + _4631 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4727) > _4727:
                                                                        mem[_4727 + _3876 + _2870 + _2894 + 197] = 0
                                                                    mem[_3876 + _2870 + _2894 + 101] = address(cd[36])
                                                                    mem[_3876 + _2870 + _2894 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3876 + _2870 + _2894 + 165 len ceil32(_4727) + 32]
                                                                else:
                                                                    mem[_3876 + _2870 + _2894 + 33] = 0
                                                                    _4632 = mem[64]
                                                                    mem[mem[64]] = _3876 + _2870 + _2894 + -mem[64] + 1
                                                                    mem[64] = _3876 + _2870 + _2894 + 33
                                                                    mem[_3876 + _2870 + _2894 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3876 + _2870 + _2894 + 37] = msg.sender
                                                                    mem[_3876 + _2870 + _2894 + 69] = 128
                                                                    _4728 = mem[_4632]
                                                                    mem[_3876 + _2870 + _2894 + 165] = mem[_4632]
                                                                    s = 0
                                                                    while s < _4728:
                                                                        mem[s + _3876 + _2870 + _2894 + 197] = mem[s + _4632 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4728) > _4728:
                                                                        mem[_4728 + _3876 + _2870 + _2894 + 197] = 0
                                                                    mem[_3876 + _2870 + _2894 + 101] = address(cd[36])
                                                                    mem[_3876 + _2870 + _2894 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3876 + _2870 + _2894 + 165 len ceil32(_4728) + 32]
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
                                                    _841 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _855 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < _855:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_855) > _855:
                                                        mem[_855 + _841 + 164] = 0
                                                    mem[_841 + 68] = address(cd[36])
                                                    mem[_841 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_855) + _841 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _913 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_913] = 1
                                                        mem[_913 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _939 = mem[64]
                                                        _956 = mem[128]
                                                        s = 0
                                                        while s < _956:
                                                            mem[s + _939 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_939 + _956 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_956) <= _956:
                                                            _1808 = mem[_913]
                                                            s = 0
                                                            while s < _1808:
                                                                mem[s + _939 + _956 + 33] = mem[s + _913 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1808) <= _1808:
                                                                _2945 = mem[64]
                                                                mem[mem[64]] = _1808 + _939 + _956 + -mem[64] + 1
                                                                mem[64] = _1808 + _939 + _956 + 33
                                                                mem[_1808 + _939 + _956 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1808 + _939 + _956 + 37] = msg.sender
                                                                mem[_1808 + _939 + _956 + 69] = 128
                                                                _3021 = mem[_2945]
                                                                mem[_1808 + _939 + _956 + 165] = mem[_2945]
                                                                s = 0
                                                                while s < _3021:
                                                                    mem[s + _1808 + _939 + _956 + 197] = mem[s + _2945 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3021) > _3021:
                                                                    mem[_3021 + _1808 + _939 + _956 + 197] = 0
                                                                mem[_1808 + _939 + _956 + 101] = address(cd[36])
                                                                mem[_1808 + _939 + _956 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1808 + _939 + _956 + 165 len ceil32(_3021) + 32]
                                                            else:
                                                                mem[_1808 + _939 + _956 + 33] = 0
                                                                _2946 = mem[64]
                                                                mem[mem[64]] = _1808 + _939 + _956 + -mem[64] + 1
                                                                mem[64] = _1808 + _939 + _956 + 33
                                                                mem[_1808 + _939 + _956 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1808 + _939 + _956 + 37] = msg.sender
                                                                mem[_1808 + _939 + _956 + 69] = 128
                                                                _3022 = mem[_2946]
                                                                mem[_1808 + _939 + _956 + 165] = mem[_2946]
                                                                s = 0
                                                                while s < _3022:
                                                                    mem[s + _1808 + _939 + _956 + 197] = mem[s + _2946 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3022) > _3022:
                                                                    mem[_3022 + _1808 + _939 + _956 + 197] = 0
                                                                mem[_1808 + _939 + _956 + 101] = address(cd[36])
                                                                mem[_1808 + _939 + _956 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1808 + _939 + _956 + 165 len ceil32(_3022) + 32]
                                                        else:
                                                            _1809 = mem[_913]
                                                            s = 0
                                                            while s < _1809:
                                                                mem[s + _939 + _956 + 33] = mem[s + _913 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1809) <= _1809:
                                                                _2947 = mem[64]
                                                                mem[mem[64]] = _1809 + _939 + _956 + -mem[64] + 1
                                                                mem[64] = _1809 + _939 + _956 + 33
                                                                mem[_1809 + _939 + _956 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1809 + _939 + _956 + 37] = msg.sender
                                                                mem[_1809 + _939 + _956 + 69] = 128
                                                                _3023 = mem[_2947]
                                                                mem[_1809 + _939 + _956 + 165] = mem[_2947]
                                                                s = 0
                                                                while s < _3023:
                                                                    mem[s + _1809 + _939 + _956 + 197] = mem[s + _2947 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3023) > _3023:
                                                                    mem[_3023 + _1809 + _939 + _956 + 197] = 0
                                                                mem[_1809 + _939 + _956 + 101] = address(cd[36])
                                                                mem[_1809 + _939 + _956 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1809 + _939 + _956 + 165 len ceil32(_3023) + 32]
                                                            else:
                                                                mem[_1809 + _939 + _956 + 33] = 0
                                                                _2948 = mem[64]
                                                                mem[mem[64]] = _1809 + _939 + _956 + -mem[64] + 1
                                                                mem[64] = _1809 + _939 + _956 + 33
                                                                mem[_1809 + _939 + _956 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1809 + _939 + _956 + 37] = msg.sender
                                                                mem[_1809 + _939 + _956 + 69] = 128
                                                                _3024 = mem[_2948]
                                                                mem[_1809 + _939 + _956 + 165] = mem[_2948]
                                                                s = 0
                                                                while s < _3024:
                                                                    mem[s + _1809 + _939 + _956 + 197] = mem[s + _2948 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3024) > _3024:
                                                                    mem[_3024 + _1809 + _939 + _956 + 197] = 0
                                                                mem[_1809 + _939 + _956 + 101] = address(cd[36])
                                                                mem[_1809 + _939 + _956 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1809 + _939 + _956 + 165 len ceil32(_3024) + 32]
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
                                                        _1780 = mem[64]
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
                                                                if u - 1 >= mem[_1780]:
                                                                    revert with 0, 50
                                                                mem[u + _1780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2875 = mem[64]
                                                            _2899 = mem[128]
                                                            s = 0
                                                            while s < _2899:
                                                                mem[s + _2875 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2875 + _2899 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2899) <= _2899:
                                                                _3885 = mem[_1780]
                                                                s = 0
                                                                while s < _3885:
                                                                    mem[s + _2875 + _2899 + 33] = mem[s + _1780 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3885) <= _3885:
                                                                    _4649 = mem[64]
                                                                    mem[mem[64]] = _3885 + _2875 + _2899 + -mem[64] + 1
                                                                    mem[64] = _3885 + _2875 + _2899 + 33
                                                                    mem[_3885 + _2875 + _2899 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3885 + _2875 + _2899 + 37] = msg.sender
                                                                    mem[_3885 + _2875 + _2899 + 69] = 128
                                                                    _4745 = mem[_4649]
                                                                    mem[_3885 + _2875 + _2899 + 165] = mem[_4649]
                                                                    s = 0
                                                                    while s < _4745:
                                                                        mem[s + _3885 + _2875 + _2899 + 197] = mem[s + _4649 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4745) > _4745:
                                                                        mem[_4745 + _3885 + _2875 + _2899 + 197] = 0
                                                                    mem[_3885 + _2875 + _2899 + 101] = address(cd[36])
                                                                    mem[_3885 + _2875 + _2899 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3885 + _2875 + _2899 + 165 len ceil32(_4745) + 32]
                                                                else:
                                                                    mem[_3885 + _2875 + _2899 + 33] = 0
                                                                    _4650 = mem[64]
                                                                    mem[mem[64]] = _3885 + _2875 + _2899 + -mem[64] + 1
                                                                    mem[64] = _3885 + _2875 + _2899 + 33
                                                                    mem[_3885 + _2875 + _2899 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3885 + _2875 + _2899 + 37] = msg.sender
                                                                    mem[_3885 + _2875 + _2899 + 69] = 128
                                                                    _4746 = mem[_4650]
                                                                    mem[_3885 + _2875 + _2899 + 165] = mem[_4650]
                                                                    s = 0
                                                                    while s < _4746:
                                                                        mem[s + _3885 + _2875 + _2899 + 197] = mem[s + _4650 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4746) > _4746:
                                                                        mem[_4746 + _3885 + _2875 + _2899 + 197] = 0
                                                                    mem[_3885 + _2875 + _2899 + 101] = address(cd[36])
                                                                    mem[_3885 + _2875 + _2899 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3885 + _2875 + _2899 + 165 len ceil32(_4746) + 32]
                                                            else:
                                                                _3886 = mem[_1780]
                                                                s = 0
                                                                while s < _3886:
                                                                    mem[s + _2875 + _2899 + 33] = mem[s + _1780 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3886) <= _3886:
                                                                    _4651 = mem[64]
                                                                    mem[mem[64]] = _3886 + _2875 + _2899 + -mem[64] + 1
                                                                    mem[64] = _3886 + _2875 + _2899 + 33
                                                                    mem[_3886 + _2875 + _2899 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3886 + _2875 + _2899 + 37] = msg.sender
                                                                    mem[_3886 + _2875 + _2899 + 69] = 128
                                                                    _4747 = mem[_4651]
                                                                    mem[_3886 + _2875 + _2899 + 165] = mem[_4651]
                                                                    s = 0
                                                                    while s < _4747:
                                                                        mem[s + _3886 + _2875 + _2899 + 197] = mem[s + _4651 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4747) > _4747:
                                                                        mem[_4747 + _3886 + _2875 + _2899 + 197] = 0
                                                                    mem[_3886 + _2875 + _2899 + 101] = address(cd[36])
                                                                    mem[_3886 + _2875 + _2899 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3886 + _2875 + _2899 + 165 len ceil32(_4747) + 32]
                                                                else:
                                                                    mem[_3886 + _2875 + _2899 + 33] = 0
                                                                    _4652 = mem[64]
                                                                    mem[mem[64]] = _3886 + _2875 + _2899 + -mem[64] + 1
                                                                    mem[64] = _3886 + _2875 + _2899 + 33
                                                                    mem[_3886 + _2875 + _2899 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3886 + _2875 + _2899 + 37] = msg.sender
                                                                    mem[_3886 + _2875 + _2899 + 69] = 128
                                                                    _4748 = mem[_4652]
                                                                    mem[_3886 + _2875 + _2899 + 165] = mem[_4652]
                                                                    s = 0
                                                                    while s < _4748:
                                                                        mem[s + _3886 + _2875 + _2899 + 197] = mem[s + _4652 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4748) > _4748:
                                                                        mem[_4748 + _3886 + _2875 + _2899 + 197] = 0
                                                                    mem[_3886 + _2875 + _2899 + 101] = address(cd[36])
                                                                    mem[_3886 + _2875 + _2899 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3886 + _2875 + _2899 + 165 len ceil32(_4748) + 32]
                                                        else:
                                                            mem[_1780 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1780]:
                                                                    revert with 0, 50
                                                                mem[u + _1780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2876 = mem[64]
                                                            _2900 = mem[128]
                                                            s = 0
                                                            while s < _2900:
                                                                mem[s + _2876 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2876 + _2900 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2900) <= _2900:
                                                                _3887 = mem[_1780]
                                                                s = 0
                                                                while s < _3887:
                                                                    mem[s + _2876 + _2900 + 33] = mem[s + _1780 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3887) <= _3887:
                                                                    _4653 = mem[64]
                                                                    mem[mem[64]] = _3887 + _2876 + _2900 + -mem[64] + 1
                                                                    mem[64] = _3887 + _2876 + _2900 + 33
                                                                    mem[_3887 + _2876 + _2900 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3887 + _2876 + _2900 + 37] = msg.sender
                                                                    mem[_3887 + _2876 + _2900 + 69] = 128
                                                                    _4749 = mem[_4653]
                                                                    mem[_3887 + _2876 + _2900 + 165] = mem[_4653]
                                                                    s = 0
                                                                    while s < _4749:
                                                                        mem[s + _3887 + _2876 + _2900 + 197] = mem[s + _4653 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4749) > _4749:
                                                                        mem[_4749 + _3887 + _2876 + _2900 + 197] = 0
                                                                    mem[_3887 + _2876 + _2900 + 101] = address(cd[36])
                                                                    mem[_3887 + _2876 + _2900 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3887 + _2876 + _2900 + 165 len ceil32(_4749) + 32]
                                                                else:
                                                                    mem[_3887 + _2876 + _2900 + 33] = 0
                                                                    _4654 = mem[64]
                                                                    mem[mem[64]] = _3887 + _2876 + _2900 + -mem[64] + 1
                                                                    mem[64] = _3887 + _2876 + _2900 + 33
                                                                    mem[_3887 + _2876 + _2900 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3887 + _2876 + _2900 + 37] = msg.sender
                                                                    mem[_3887 + _2876 + _2900 + 69] = 128
                                                                    _4750 = mem[_4654]
                                                                    mem[_3887 + _2876 + _2900 + 165] = mem[_4654]
                                                                    s = 0
                                                                    while s < _4750:
                                                                        mem[s + _3887 + _2876 + _2900 + 197] = mem[s + _4654 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4750) > _4750:
                                                                        mem[_4750 + _3887 + _2876 + _2900 + 197] = 0
                                                                    mem[_3887 + _2876 + _2900 + 101] = address(cd[36])
                                                                    mem[_3887 + _2876 + _2900 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3887 + _2876 + _2900 + 165 len ceil32(_4750) + 32]
                                                            else:
                                                                _3888 = mem[_1780]
                                                                s = 0
                                                                while s < _3888:
                                                                    mem[s + _2876 + _2900 + 33] = mem[s + _1780 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3888) <= _3888:
                                                                    _4655 = mem[64]
                                                                    mem[mem[64]] = _3888 + _2876 + _2900 + -mem[64] + 1
                                                                    mem[64] = _3888 + _2876 + _2900 + 33
                                                                    mem[_3888 + _2876 + _2900 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3888 + _2876 + _2900 + 37] = msg.sender
                                                                    mem[_3888 + _2876 + _2900 + 69] = 128
                                                                    _4751 = mem[_4655]
                                                                    mem[_3888 + _2876 + _2900 + 165] = mem[_4655]
                                                                    s = 0
                                                                    while s < _4751:
                                                                        mem[s + _3888 + _2876 + _2900 + 197] = mem[s + _4655 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4751) > _4751:
                                                                        mem[_4751 + _3888 + _2876 + _2900 + 197] = 0
                                                                    mem[_3888 + _2876 + _2900 + 101] = address(cd[36])
                                                                    mem[_3888 + _2876 + _2900 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3888 + _2876 + _2900 + 165 len ceil32(_4751) + 32]
                                                                else:
                                                                    mem[_3888 + _2876 + _2900 + 33] = 0
                                                                    _4656 = mem[64]
                                                                    mem[mem[64]] = _3888 + _2876 + _2900 + -mem[64] + 1
                                                                    mem[64] = _3888 + _2876 + _2900 + 33
                                                                    mem[_3888 + _2876 + _2900 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3888 + _2876 + _2900 + 37] = msg.sender
                                                                    mem[_3888 + _2876 + _2900 + 69] = 128
                                                                    _4752 = mem[_4656]
                                                                    mem[_3888 + _2876 + _2900 + 165] = mem[_4656]
                                                                    s = 0
                                                                    while s < _4752:
                                                                        mem[s + _3888 + _2876 + _2900 + 197] = mem[s + _4656 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4752) > _4752:
                                                                        mem[_4752 + _3888 + _2876 + _2900 + 197] = 0
                                                                    mem[_3888 + _2876 + _2900 + 101] = address(cd[36])
                                                                    mem[_3888 + _2876 + _2900 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3888 + _2876 + _2900 + 165 len ceil32(_4752) + 32]
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
                                                    _840 = mem[64]
                                                    mem[mem[64]] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 128
                                                    _854 = mem[128]
                                                    mem[mem[64] + 132] = mem[128]
                                                    s = 0
                                                    while s < _854:
                                                        mem[s + mem[64] + 164] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_854) > _854:
                                                        mem[_854 + _840 + 164] = 0
                                                    mem[_840 + 68] = address(cd[36])
                                                    mem[_840 + 100] = uint32(cd[100])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(_854) + _840 + -mem[64] + 160]
                                                else:
                                                    if 1 > !idx:
                                                        revert with 0, 17
                                                    if not -idx - 1:
                                                        _911 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_911] = 1
                                                        mem[_911 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                        _938 = mem[64]
                                                        _955 = mem[128]
                                                        s = 0
                                                        while s < _955:
                                                            mem[s + _938 + 32] = mem[s + 160]
                                                            s = s + 32
                                                            continue 
                                                        mem[_938 + _955 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                        if ceil32(_955) <= _955:
                                                            _1806 = mem[_911]
                                                            s = 0
                                                            while s < _1806:
                                                                mem[s + _938 + _955 + 33] = mem[s + _911 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1806) <= _1806:
                                                                _2941 = mem[64]
                                                                mem[mem[64]] = _1806 + _938 + _955 + -mem[64] + 1
                                                                mem[64] = _1806 + _938 + _955 + 33
                                                                mem[_1806 + _938 + _955 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1806 + _938 + _955 + 37] = msg.sender
                                                                mem[_1806 + _938 + _955 + 69] = 128
                                                                _3015 = mem[_2941]
                                                                mem[_1806 + _938 + _955 + 165] = mem[_2941]
                                                                s = 0
                                                                while s < _3015:
                                                                    mem[s + _1806 + _938 + _955 + 197] = mem[s + _2941 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3015) > _3015:
                                                                    mem[_3015 + _1806 + _938 + _955 + 197] = 0
                                                                mem[_1806 + _938 + _955 + 101] = address(cd[36])
                                                                mem[_1806 + _938 + _955 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1806 + _938 + _955 + 165 len ceil32(_3015) + 32]
                                                            else:
                                                                mem[_1806 + _938 + _955 + 33] = 0
                                                                _2942 = mem[64]
                                                                mem[mem[64]] = _1806 + _938 + _955 + -mem[64] + 1
                                                                mem[64] = _1806 + _938 + _955 + 33
                                                                mem[_1806 + _938 + _955 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1806 + _938 + _955 + 37] = msg.sender
                                                                mem[_1806 + _938 + _955 + 69] = 128
                                                                _3016 = mem[_2942]
                                                                mem[_1806 + _938 + _955 + 165] = mem[_2942]
                                                                s = 0
                                                                while s < _3016:
                                                                    mem[s + _1806 + _938 + _955 + 197] = mem[s + _2942 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3016) > _3016:
                                                                    mem[_3016 + _1806 + _938 + _955 + 197] = 0
                                                                mem[_1806 + _938 + _955 + 101] = address(cd[36])
                                                                mem[_1806 + _938 + _955 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1806 + _938 + _955 + 165 len ceil32(_3016) + 32]
                                                        else:
                                                            _1807 = mem[_911]
                                                            s = 0
                                                            while s < _1807:
                                                                mem[s + _938 + _955 + 33] = mem[s + _911 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_1807) <= _1807:
                                                                _2943 = mem[64]
                                                                mem[mem[64]] = _1807 + _938 + _955 + -mem[64] + 1
                                                                mem[64] = _1807 + _938 + _955 + 33
                                                                mem[_1807 + _938 + _955 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1807 + _938 + _955 + 37] = msg.sender
                                                                mem[_1807 + _938 + _955 + 69] = 128
                                                                _3017 = mem[_2943]
                                                                mem[_1807 + _938 + _955 + 165] = mem[_2943]
                                                                s = 0
                                                                while s < _3017:
                                                                    mem[s + _1807 + _938 + _955 + 197] = mem[s + _2943 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3017) > _3017:
                                                                    mem[_3017 + _1807 + _938 + _955 + 197] = 0
                                                                mem[_1807 + _938 + _955 + 101] = address(cd[36])
                                                                mem[_1807 + _938 + _955 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1807 + _938 + _955 + 165 len ceil32(_3017) + 32]
                                                            else:
                                                                mem[_1807 + _938 + _955 + 33] = 0
                                                                _2944 = mem[64]
                                                                mem[mem[64]] = _1807 + _938 + _955 + -mem[64] + 1
                                                                mem[64] = _1807 + _938 + _955 + 33
                                                                mem[_1807 + _938 + _955 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                mem[_1807 + _938 + _955 + 37] = msg.sender
                                                                mem[_1807 + _938 + _955 + 69] = 128
                                                                _3018 = mem[_2944]
                                                                mem[_1807 + _938 + _955 + 165] = mem[_2944]
                                                                s = 0
                                                                while s < _3018:
                                                                    mem[s + _1807 + _938 + _955 + 197] = mem[s + _2944 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3018) > _3018:
                                                                    mem[_3018 + _1807 + _938 + _955 + 197] = 0
                                                                mem[_1807 + _938 + _955 + 101] = address(cd[36])
                                                                mem[_1807 + _938 + _955 + 133] = uint32(cd[100])
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                     gas gas_remaining wei
                                                                    args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_1807 + _938 + _955 + 165 len ceil32(_3018) + 32]
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
                                                        _1779 = mem[64]
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
                                                                if u - 1 >= mem[_1779]:
                                                                    revert with 0, 50
                                                                mem[u + _1779 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2873 = mem[64]
                                                            _2897 = mem[128]
                                                            s = 0
                                                            while s < _2897:
                                                                mem[s + _2873 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2873 + _2897 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2897) <= _2897:
                                                                _3881 = mem[_1779]
                                                                s = 0
                                                                while s < _3881:
                                                                    mem[s + _2873 + _2897 + 33] = mem[s + _1779 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3881) <= _3881:
                                                                    _4641 = mem[64]
                                                                    mem[mem[64]] = _3881 + _2873 + _2897 + -mem[64] + 1
                                                                    mem[64] = _3881 + _2873 + _2897 + 33
                                                                    mem[_3881 + _2873 + _2897 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3881 + _2873 + _2897 + 37] = msg.sender
                                                                    mem[_3881 + _2873 + _2897 + 69] = 128
                                                                    _4737 = mem[_4641]
                                                                    mem[_3881 + _2873 + _2897 + 165] = mem[_4641]
                                                                    s = 0
                                                                    while s < _4737:
                                                                        mem[s + _3881 + _2873 + _2897 + 197] = mem[s + _4641 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4737) > _4737:
                                                                        mem[_4737 + _3881 + _2873 + _2897 + 197] = 0
                                                                    mem[_3881 + _2873 + _2897 + 101] = address(cd[36])
                                                                    mem[_3881 + _2873 + _2897 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3881 + _2873 + _2897 + 165 len ceil32(_4737) + 32]
                                                                else:
                                                                    mem[_3881 + _2873 + _2897 + 33] = 0
                                                                    _4642 = mem[64]
                                                                    mem[mem[64]] = _3881 + _2873 + _2897 + -mem[64] + 1
                                                                    mem[64] = _3881 + _2873 + _2897 + 33
                                                                    mem[_3881 + _2873 + _2897 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3881 + _2873 + _2897 + 37] = msg.sender
                                                                    mem[_3881 + _2873 + _2897 + 69] = 128
                                                                    _4738 = mem[_4642]
                                                                    mem[_3881 + _2873 + _2897 + 165] = mem[_4642]
                                                                    s = 0
                                                                    while s < _4738:
                                                                        mem[s + _3881 + _2873 + _2897 + 197] = mem[s + _4642 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4738) > _4738:
                                                                        mem[_4738 + _3881 + _2873 + _2897 + 197] = 0
                                                                    mem[_3881 + _2873 + _2897 + 101] = address(cd[36])
                                                                    mem[_3881 + _2873 + _2897 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3881 + _2873 + _2897 + 165 len ceil32(_4738) + 32]
                                                            else:
                                                                _3882 = mem[_1779]
                                                                s = 0
                                                                while s < _3882:
                                                                    mem[s + _2873 + _2897 + 33] = mem[s + _1779 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3882) <= _3882:
                                                                    _4643 = mem[64]
                                                                    mem[mem[64]] = _3882 + _2873 + _2897 + -mem[64] + 1
                                                                    mem[64] = _3882 + _2873 + _2897 + 33
                                                                    mem[_3882 + _2873 + _2897 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3882 + _2873 + _2897 + 37] = msg.sender
                                                                    mem[_3882 + _2873 + _2897 + 69] = 128
                                                                    _4739 = mem[_4643]
                                                                    mem[_3882 + _2873 + _2897 + 165] = mem[_4643]
                                                                    s = 0
                                                                    while s < _4739:
                                                                        mem[s + _3882 + _2873 + _2897 + 197] = mem[s + _4643 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4739) > _4739:
                                                                        mem[_4739 + _3882 + _2873 + _2897 + 197] = 0
                                                                    mem[_3882 + _2873 + _2897 + 101] = address(cd[36])
                                                                    mem[_3882 + _2873 + _2897 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3882 + _2873 + _2897 + 165 len ceil32(_4739) + 32]
                                                                else:
                                                                    mem[_3882 + _2873 + _2897 + 33] = 0
                                                                    _4644 = mem[64]
                                                                    mem[mem[64]] = _3882 + _2873 + _2897 + -mem[64] + 1
                                                                    mem[64] = _3882 + _2873 + _2897 + 33
                                                                    mem[_3882 + _2873 + _2897 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3882 + _2873 + _2897 + 37] = msg.sender
                                                                    mem[_3882 + _2873 + _2897 + 69] = 128
                                                                    _4740 = mem[_4644]
                                                                    mem[_3882 + _2873 + _2897 + 165] = mem[_4644]
                                                                    s = 0
                                                                    while s < _4740:
                                                                        mem[s + _3882 + _2873 + _2897 + 197] = mem[s + _4644 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4740) > _4740:
                                                                        mem[_4740 + _3882 + _2873 + _2897 + 197] = 0
                                                                    mem[_3882 + _2873 + _2897 + 101] = address(cd[36])
                                                                    mem[_3882 + _2873 + _2897 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3882 + _2873 + _2897 + 165 len ceil32(_4740) + 32]
                                                        else:
                                                            mem[_1779 + 32 len t] = call.data[calldata.size len t]
                                                            u = t
                                                            s = idx + 1
                                                            while s:
                                                                if u < 1:
                                                                    revert with 0, 17
                                                                if 48 > !(s % 10):
                                                                    revert with 0, 17
                                                                if u - 1 >= mem[_1779]:
                                                                    revert with 0, 50
                                                                mem[u + _1779 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                                u = u - 1
                                                                s = s / 10
                                                                continue 
                                                            _2874 = mem[64]
                                                            _2898 = mem[128]
                                                            s = 0
                                                            while s < _2898:
                                                                mem[s + _2874 + 32] = mem[s + 160]
                                                                s = s + 32
                                                                continue 
                                                            mem[_2874 + _2898 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                            if ceil32(_2898) <= _2898:
                                                                _3883 = mem[_1779]
                                                                s = 0
                                                                while s < _3883:
                                                                    mem[s + _2874 + _2898 + 33] = mem[s + _1779 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3883) <= _3883:
                                                                    _4645 = mem[64]
                                                                    mem[mem[64]] = _3883 + _2874 + _2898 + -mem[64] + 1
                                                                    mem[64] = _3883 + _2874 + _2898 + 33
                                                                    mem[_3883 + _2874 + _2898 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3883 + _2874 + _2898 + 37] = msg.sender
                                                                    mem[_3883 + _2874 + _2898 + 69] = 128
                                                                    _4741 = mem[_4645]
                                                                    mem[_3883 + _2874 + _2898 + 165] = mem[_4645]
                                                                    s = 0
                                                                    while s < _4741:
                                                                        mem[s + _3883 + _2874 + _2898 + 197] = mem[s + _4645 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4741) > _4741:
                                                                        mem[_4741 + _3883 + _2874 + _2898 + 197] = 0
                                                                    mem[_3883 + _2874 + _2898 + 101] = address(cd[36])
                                                                    mem[_3883 + _2874 + _2898 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3883 + _2874 + _2898 + 165 len ceil32(_4741) + 32]
                                                                else:
                                                                    mem[_3883 + _2874 + _2898 + 33] = 0
                                                                    _4646 = mem[64]
                                                                    mem[mem[64]] = _3883 + _2874 + _2898 + -mem[64] + 1
                                                                    mem[64] = _3883 + _2874 + _2898 + 33
                                                                    mem[_3883 + _2874 + _2898 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3883 + _2874 + _2898 + 37] = msg.sender
                                                                    mem[_3883 + _2874 + _2898 + 69] = 128
                                                                    _4742 = mem[_4646]
                                                                    mem[_3883 + _2874 + _2898 + 165] = mem[_4646]
                                                                    s = 0
                                                                    while s < _4742:
                                                                        mem[s + _3883 + _2874 + _2898 + 197] = mem[s + _4646 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4742) > _4742:
                                                                        mem[_4742 + _3883 + _2874 + _2898 + 197] = 0
                                                                    mem[_3883 + _2874 + _2898 + 101] = address(cd[36])
                                                                    mem[_3883 + _2874 + _2898 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3883 + _2874 + _2898 + 165 len ceil32(_4742) + 32]
                                                            else:
                                                                _3884 = mem[_1779]
                                                                s = 0
                                                                while s < _3884:
                                                                    mem[s + _2874 + _2898 + 33] = mem[s + _1779 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                if ceil32(_3884) <= _3884:
                                                                    _4647 = mem[64]
                                                                    mem[mem[64]] = _3884 + _2874 + _2898 + -mem[64] + 1
                                                                    mem[64] = _3884 + _2874 + _2898 + 33
                                                                    mem[_3884 + _2874 + _2898 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3884 + _2874 + _2898 + 37] = msg.sender
                                                                    mem[_3884 + _2874 + _2898 + 69] = 128
                                                                    _4743 = mem[_4647]
                                                                    mem[_3884 + _2874 + _2898 + 165] = mem[_4647]
                                                                    s = 0
                                                                    while s < _4743:
                                                                        mem[s + _3884 + _2874 + _2898 + 197] = mem[s + _4647 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4743) > _4743:
                                                                        mem[_4743 + _3884 + _2874 + _2898 + 197] = 0
                                                                    mem[_3884 + _2874 + _2898 + 101] = address(cd[36])
                                                                    mem[_3884 + _2874 + _2898 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3884 + _2874 + _2898 + 165 len ceil32(_4743) + 32]
                                                                else:
                                                                    mem[_3884 + _2874 + _2898 + 33] = 0
                                                                    _4648 = mem[64]
                                                                    mem[mem[64]] = _3884 + _2874 + _2898 + -mem[64] + 1
                                                                    mem[64] = _3884 + _2874 + _2898 + 33
                                                                    mem[_3884 + _2874 + _2898 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                                    mem[_3884 + _2874 + _2898 + 37] = msg.sender
                                                                    mem[_3884 + _2874 + _2898 + 69] = 128
                                                                    _4744 = mem[_4648]
                                                                    mem[_3884 + _2874 + _2898 + 165] = mem[_4648]
                                                                    s = 0
                                                                    while s < _4744:
                                                                        mem[s + _3884 + _2874 + _2898 + 197] = mem[s + _4648 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    if ceil32(_4744) > _4744:
                                                                        mem[_4744 + _3884 + _2874 + _2898 + 197] = 0
                                                                    mem[_3884 + _2874 + _2898 + 101] = address(cd[36])
                                                                    mem[_3884 + _2874 + _2898 + 133] = uint32(cd[100])
                                                                    require ext_code.size(nodeRewardManagerAddress)
                                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                         gas gas_remaining wei
                                                                        args address(msg.sender), 128, address(cd[36]), cd[100] << 224, mem[_3884 + _2874 + _2898 + 165 len ceil32(_4744) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not idx + 1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
}



}
