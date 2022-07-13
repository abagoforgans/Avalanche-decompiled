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
uint256 roi;
uint256 sub_06701340;
uint256 sub_6680607d;
uint256 sub_055db2ee;
uint256 stor27;
uint8 stor28;
uint8 stor28; offset 8
uint256 stor28; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor30;
mapping of uint8 stor31;

function sub_055db2ee(?) {
    return sub_055db2ee
}

function sub_06701340(?) {
    return sub_06701340
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[arg1])
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

function roi() {
    return roi
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function sub_6680607d(?) {
    return sub_6680607d
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
    return bool(stor31[arg1])
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

function sub_b8acf840(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    roi = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_10c4d2e7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6680607d = arg1
}

function sub_620d8c55(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_06701340 = arg1
}

function sub_8c0955f5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_055db2ee = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27 = arg1
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
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
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
    stor30[address(arg1)] = uint8(arg2)
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
    if stor30[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    if stor30[address(arg2)]:
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
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
    if not bool(stor31[address(arg1)]) - arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor31[address(arg1)] = uint8(arg2)
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

function sub_6972a1fb(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    call nodeRewardManagerAddress.0xa7806c44 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg3 << 224, uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_b12cbc76Address, ext_call.return_data[0]
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    t = _5
    idx = _4 + 128
    while idx < _4 + (32 * _5) + 128:
        _12 = mem[idx]
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        t = _12
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
    if stor30[address(msg.sender)]:
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
    if not uint8(stor28.field_8):
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_b12cbc76Address, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 0, 17
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
    if stor30[address(msg.sender)]:
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
    if not uint8(stor28.field_8):
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_b12cbc76Address, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 0, 17
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_db3883cc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint32(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor30[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    call nodeRewardManagerAddress.0x9631b48a with:
         gas gas_remaining wei
        args address(arg1), uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args distributionPoolAddress, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not uint8(stor28.field_8):
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_b12cbc76Address, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 0, 17
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x8013858b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb62496f5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9349c47d(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8bc9c7b0(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress._changeNodePrice(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return deadWalletAddress
                            if unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                call nodeRewardManagerAddress._distributeRewards() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x88c41d7c(?????):
                                    require unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if arg1 >= payee.length:
                                        revert with 0, 50
                                    return payee[arg1]
                                require not msg.value
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
                    else:
                        if unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor27 = arg1
                        else:
                            if unknown_0x8c0955f5(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_055db2ee = arg1
                            else:
                                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return owner
                                if unknown_0x913a0aa6(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    sub_b18d9840Address = address(arg1)
                                else:
                                    if uint32(call.func_hash) >> 224 != unknown_0x91ca7f3c(?????):
                                        require unknown_0x92662bc7(?????) == uint32(call.func_hash) >> 224
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        require arg1 == address(arg1)
                                        if owner != msg.sender:
                                            revert with 0, 'Ownable: caller is not the owner'
                                        sub_b12cbc76Address = address(arg1)
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
                                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if unknown_0xa2a376cd(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(arg1)
                    else:
                        if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return released[address(arg1)]
                        if uint32(call.func_hash) >> 224 != unknown_0x9a7a23d6(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x9c82751c(?????):
                                require unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                staticcall nodeRewardManagerAddress.totalNodesCreated() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress._changeClaimTime(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == bool(arg2)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1) - uniswapV2PairAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                            if not bool(stor31[address(arg1)]) - bool(arg2):
                                revert with 0, 'TKN: Automated market maker pair is already set to that value'
                            stor31[address(arg1)] = uint8(bool(arg2))
                            emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                if uint32(call.func_hash) >> 224 != unknown_0xa2a376cd(?????):
                    if unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nodeRewardManagerAddress.nodePrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurUsePoolAddress
                    if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurFee
                    if unknown_0xb12cbc76(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b12cbc76Address
                    require unknown_0xb18d9840(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_b18d9840Address
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
                _60 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159 < return_data.size + 128
                _130 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _60 + (32 * _130) + 32 <= return_data.size
                s = ceil32(return_data.size) + 160
                t = _130
                idx = _60 + 160
                while idx < _60 + (32 * _130) + 160:
                    _752 = mem[idx]
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    t = _752
                    idx = idx + 32
                    continue 
                _767 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _130
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _130:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _767 + (32 * _130) + -mem[64] + 64
            if unknown_0xdb3ad6b5(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf74c9934(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
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
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        nodeRewardManagerAddress = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        if stor30[msg.sender]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        if stor30[address(arg2)]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.0xe0f2cfd8 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, address(arg2)
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
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
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
                _402 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _402
                require _387 + _402 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_402)] = mem[ceil32(return_data.size) + _387 + 160 len ceil32(_402)]
                if ceil32(_402) > _402:
                    mem[_402 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _402
                mem[mem[64] + 64 len ceil32(_402)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_402)]
                if ceil32(_402) > _402:
                    mem[_402 + mem[64] + 64] = 0
                return Array(len=_402, data=mem[mem[64] + 64 len ceil32(_402)])
            if unknown_0xce7c2ac2(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return shares[address(arg1)]
                if unknown_0xd0f77474(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress._changeAutoDistri(bool arg1) with:
                         gas gas_remaining wei
                        args bool(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return totalReleased[address(arg1)]
                    if unknown_0xd8929342(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor30[address(arg1)] = uint8(bool(arg2))
                    else:
                        if unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            staticcall nodeRewardManagerAddress.lastDistributionCount() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require unknown_0xdb3883cc(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == uint32(arg2)
                        if not msg.sender:
                            revert with 0, 'CSHT:  creation from the zero address'
                        if stor30[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        call nodeRewardManagerAddress.0x9631b48a with:
                             gas gas_remaining wei
                            args address(arg1), uint32(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CSHT: You don't have enough reward to cash out'
                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args distributionPoolAddress, address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not uint8(stor28.field_8):
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                        else:
                            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_b12cbc76Address, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] < ext_call.return_data[32]:
                                revert with 0, 17
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor31[arg1])
            if unknown_0xb8acf840(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                roi = arg1
            if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                require unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return distributionPoolAddress
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
            _395 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
            _412 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
            mem[(2 * ceil32(return_data.size)) + 128] = _412
            require _395 + _412 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_412)] = mem[ceil32(return_data.size) + _395 + 160 len ceil32(_412)]
            if ceil32(_412) > _412:
                mem[_412 + (2 * ceil32(return_data.size)) + 160] = 0
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _412
            mem[mem[64] + 64 len ceil32(_412)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_412)]
            if ceil32(_412) > _412:
                mem[_412 + mem[64] + 64] = 0
            return Array(len=_412, data=mem[mem[64] + 64 len ceil32(_412)])
        if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x6680607d(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6d9ae0be(?????) <= uint32(call.func_hash) >> 224:
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
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
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
                        require unknown_0x7b770392(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress._changeRewardPerNode(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x6680607d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_6680607d
                if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    swapTokensAmount = arg1
                if uint32(call.func_hash) >> 224 != unknown_0x679cf1a2(?????):
                    if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        cashoutFee = arg1
                    else:
                        require unknown_0x6972a1fb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 <= test266151307()
                        require arg1 + 35 < calldata.size
                        if arg1.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                            revert with 0, 65
                        require arg1 + arg1.length + 36 <= calldata.size
                        require arg2 == uint32(arg2)
                        require arg3 == uint32(arg3)
                        call nodeRewardManagerAddress.0xa7806c44 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg3 << 224, uint32(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call tokenAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_b12cbc76Address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
                _152 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _213 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _152 + _213 + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160 len ceil32(_213)] = mem[_152 + 160 len ceil32(_213)]
                if ceil32(_213) > _213:
                    mem[_213 + ceil32(return_data.size) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _213
                mem[mem[64] + 64 len ceil32(_213)] = mem[ceil32(return_data.size) + 160 len ceil32(_213)]
                if ceil32(_213) > _213:
                    mem[_213 + mem[64] + 64] = 0
                return Array(len=_213, data=mem[mem[64] + 64 len ceil32(_213)])
            if unknown_0x59640ed9(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                if unknown_0x4afdd0e7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return roi
                if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                    if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityPoolFee
                    require unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    Mask(248, 0, stor28.field_8) = Mask(248, 0, bool(arg1))
                else:
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'MANIA CSHT:  creation from the zero address'
                    if stor30[address(msg.sender)]:
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
                    if not uint8(stor28.field_8):
                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                    else:
                        call tokenAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_b12cbc76Address, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, ext_call.return_data[0] - ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0x59640ed9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(nodeRewardManagerAddress)
                call nodeRewardManagerAddress._changeGasDistri(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x5b0d4674(?????):
                if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return swapTokensAmount
                if unknown_0x620d8c55(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_06701340 = arg1
                else:
                    if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1) - uniswapV2RouterAddress:
                            revert with 0, 'TKN: The router already has that address'
                        emit UpdateUniswapV2Router(address(arg1), uniswapV2RouterAddress);
                        uniswapV2RouterAddress = address(arg1)
                        staticcall address(arg1).factory() with:
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
                        require unknown_0x65bfe430(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not msg.sender:
                            revert with 0, 'CSHT:  creation from the zero address'
                        if stor30[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CSHT: You don't have enough reward to cash out'
                        if not uint8(stor28.field_8):
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                        else:
                            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_b12cbc76Address, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] < ext_call.return_data[32]:
                                revert with 0, 17
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
            _356 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
            _391 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
            mem[(2 * ceil32(return_data.size)) + 128] = _391
            require _356 + _391 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_391)] = mem[ceil32(return_data.size) + _356 + 160 len ceil32(_391)]
            if ceil32(_391) > _391:
                mem[_391 + (2 * ceil32(return_data.size)) + 160] = 0
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _391
            mem[mem[64] + 64 len ceil32(_391)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_391)]
            if ceil32(_391) > _391:
                mem[_391 + mem[64] + 64] = 0
            return Array(len=_391, data=mem[mem[64] + 64 len ceil32(_391)])
        if unknown_0x1694505e(?????) > uint32(call.func_hash) >> 224:
            if updateFuturWall(address arg1) > uint32(call.func_hash) >> 224:
                if setReferralBonusPercent(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.setReferralBonus(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x055db2ee(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_055db2ee
                if unknown_0x06701340(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_06701340
                if updateRewardsFee(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
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
                require getRewardAmount() == uint32(call.func_hash) >> 224
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
            if updateFuturWall(address arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                futurUsePoolAddress = address(arg1)
            if unknown_0x10c4d2e7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_6680607d = arg1
            if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalFees
            if unknown_0x13899303(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                staticcall nodeRewardManagerAddress.0xb8c7a1a2 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require unknown_0x138a634a(?????) == uint32(call.func_hash) >> 224
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
            _398 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
            _417 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
            mem[(2 * ceil32(return_data.size)) + 128] = _417
            require _398 + _417 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_417)] = mem[ceil32(return_data.size) + _398 + 160 len ceil32(_417)]
            if ceil32(_417) > _417:
                mem[_417 + (2 * ceil32(return_data.size)) + 160] = 0
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _417
            mem[mem[64] + 64 len ceil32(_417)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_417)]
            if ceil32(_417) > _417:
                mem[_417 + mem[64] + 64] = 0
            return Array(len=_417, data=mem[mem[64] + 64 len ceil32(_417)])
        if unknown_0x3a98ef39(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalShares
            if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return released[address(arg1)][address(arg2)]
            if unknown_0x4195fbf3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
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
            else:
                if unknown_0x42bc9fca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
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
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                        require unknown_0x48e5642b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        staticcall nodeRewardManagerAddress.totalRewardStaked() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if not shares[address(arg2)]:
                        revert with 0, 'PaymentSplitter: account has no shares'
                    mem[132] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
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
                    mem[ceil32(return_data.size) + 164] = address(arg2)
                    mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 160 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
                    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], address(arg1));
        else:
            if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return uniswapV2RouterAddress
            if unknown_0x19165587(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not shares[address(arg1)]:
                    revert with 0, 'PaymentSplitter: account has no shares'
                if eth.balance(this.address) > !totalReleased:
                    revert with 0, 17
                if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
                    revert with 0, 17
                if not -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)]:
                    revert with 0, 'PaymentSplitter: account is not due payment'
                if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                    revert with 0, 17
                released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
                if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                    revert with 0, 17
                totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
                if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                    revert with 0, 'Address: insufficient balance'
                call address(arg1) with:
                   value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
            else:
                if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor30[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x2096879b(?????):
                    require unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return rewardsFee
                require calldata.size - 4 >= 128
                require arg1 <= test266151307()
                require arg1 + 35 < calldata.size
                if arg1.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = arg1.length
                require arg1 + arg1.length + 36 <= calldata.size
                mem[160 len arg1.length] = arg1[all]
                mem[arg1.length + 160] = 0
                require arg2 == address(arg2)
                require arg4 == uint32(arg4)
                if arg3 > 5:
                    revert with 0, 'Max: 5 nodes Min: 1'
                if arg3 < 1:
                    revert with 0, 'Max: 5 nodes Min: 1'
                if arg1.length <= 3:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if arg1.length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if not msg.sender:
                    revert with 0, 'NODE CREATION:  creation from the zero address'
                mem[0] = msg.sender
                mem[32] = 30
                if stor30[address(msg.sender)]:
                    revert with 0, 'NODE CREATION: Blacklisted address'
                if futurUsePoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                mem[ceil32(ceil32(arg1.length)) + 133] = uint32(arg4)
                staticcall nodeRewardManagerAddress.0xb76adfd6 with:
                        gas gas_remaining wei
                       args uint32(arg4)
                mem[ceil32(ceil32(arg1.length)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 133] = msg.sender
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'NODE CREATION: Balance too low for creation.'
                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < swapTokensAmount:
                    if not -arg3:
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = 0
                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 0
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < arg3:
                            if 1 > !idx:
                                revert with 0, 17
                            if not -idx - 1:
                                _1644 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1644] = 1
                                mem[_1644 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                _1656 = mem[64]
                                _1668 = mem[128]
                                s = 0
                                while s < _1668:
                                    mem[s + _1656 + 32] = mem[s + 160]
                                    s = s + 32
                                    continue 
                                mem[_1656 + _1668 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                if ceil32(_1668) <= _1668:
                                    _2341 = mem[_1644]
                                    s = 0
                                    while s < _2341:
                                        mem[s + _1656 + _1668 + 33] = mem[s + _1644 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2341) <= _2341:
                                        _3375 = mem[64]
                                        mem[mem[64]] = _2341 + _1656 + _1668 + -mem[64] + 1
                                        mem[64] = _2341 + _1656 + _1668 + 33
                                        mem[_2341 + _1656 + _1668 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2341 + _1656 + _1668 + 37] = msg.sender
                                        mem[_2341 + _1656 + _1668 + 69] = 128
                                        _3427 = mem[_3375]
                                        mem[_2341 + _1656 + _1668 + 165] = mem[_3375]
                                        s = 0
                                        while s < _3427:
                                            mem[s + _2341 + _1656 + _1668 + 197] = mem[s + _3375 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3427) > _3427:
                                            mem[_3427 + _2341 + _1656 + _1668 + 197] = 0
                                        mem[_2341 + _1656 + _1668 + 101] = address(arg2)
                                        mem[_2341 + _1656 + _1668 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2341 + _1656 + _1668 + 165 len ceil32(_3427) + 32]
                                    else:
                                        mem[_2341 + _1656 + _1668 + 33] = 0
                                        _3376 = mem[64]
                                        mem[mem[64]] = _2341 + _1656 + _1668 + -mem[64] + 1
                                        mem[64] = _2341 + _1656 + _1668 + 33
                                        mem[_2341 + _1656 + _1668 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2341 + _1656 + _1668 + 37] = msg.sender
                                        mem[_2341 + _1656 + _1668 + 69] = 128
                                        _3428 = mem[_3376]
                                        mem[_2341 + _1656 + _1668 + 165] = mem[_3376]
                                        s = 0
                                        while s < _3428:
                                            mem[s + _2341 + _1656 + _1668 + 197] = mem[s + _3376 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3428) > _3428:
                                            mem[_3428 + _2341 + _1656 + _1668 + 197] = 0
                                        mem[_2341 + _1656 + _1668 + 101] = address(arg2)
                                        mem[_2341 + _1656 + _1668 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2341 + _1656 + _1668 + 165 len ceil32(_3428) + 32]
                                else:
                                    _2342 = mem[_1644]
                                    s = 0
                                    while s < _2342:
                                        mem[s + _1656 + _1668 + 33] = mem[s + _1644 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2342) <= _2342:
                                        _3377 = mem[64]
                                        mem[mem[64]] = _2342 + _1656 + _1668 + -mem[64] + 1
                                        mem[64] = _2342 + _1656 + _1668 + 33
                                        mem[_2342 + _1656 + _1668 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2342 + _1656 + _1668 + 37] = msg.sender
                                        mem[_2342 + _1656 + _1668 + 69] = 128
                                        _3429 = mem[_3377]
                                        mem[_2342 + _1656 + _1668 + 165] = mem[_3377]
                                        s = 0
                                        while s < _3429:
                                            mem[s + _2342 + _1656 + _1668 + 197] = mem[s + _3377 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3429) > _3429:
                                            mem[_3429 + _2342 + _1656 + _1668 + 197] = 0
                                        mem[_2342 + _1656 + _1668 + 101] = address(arg2)
                                        mem[_2342 + _1656 + _1668 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2342 + _1656 + _1668 + 165 len ceil32(_3429) + 32]
                                    else:
                                        mem[_2342 + _1656 + _1668 + 33] = 0
                                        _3378 = mem[64]
                                        mem[mem[64]] = _2342 + _1656 + _1668 + -mem[64] + 1
                                        mem[64] = _2342 + _1656 + _1668 + 33
                                        mem[_2342 + _1656 + _1668 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2342 + _1656 + _1668 + 37] = msg.sender
                                        mem[_2342 + _1656 + _1668 + 69] = 128
                                        _3430 = mem[_3378]
                                        mem[_2342 + _1656 + _1668 + 165] = mem[_3378]
                                        s = 0
                                        while s < _3430:
                                            mem[s + _2342 + _1656 + _1668 + 197] = mem[s + _3378 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3430) > _3430:
                                            mem[_3430 + _2342 + _1656 + _1668 + 197] = 0
                                        mem[_2342 + _1656 + _1668 + 101] = address(arg2)
                                        mem[_2342 + _1656 + _1668 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2342 + _1656 + _1668 + 165 len ceil32(_3430) + 32]
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
                                _2328 = mem[64]
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
                                        if u - 1 >= mem[_2328]:
                                            revert with 0, 50
                                        mem[u + _2328 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                        u = u - 1
                                        s = s / 10
                                        continue 
                                    _3325 = mem[64]
                                    _3349 = mem[128]
                                    s = 0
                                    while s < _3349:
                                        mem[s + _3325 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_3325 + _3349 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_3349) <= _3349:
                                        _4311 = mem[_2328]
                                        s = 0
                                        while s < _4311:
                                            mem[s + _3325 + _3349 + 33] = mem[s + _2328 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4311) <= _4311:
                                            _5035 = mem[64]
                                            mem[mem[64]] = _4311 + _3325 + _3349 + -mem[64] + 1
                                            mem[64] = _4311 + _3325 + _3349 + 33
                                            mem[_4311 + _3325 + _3349 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4311 + _3325 + _3349 + 37] = msg.sender
                                            mem[_4311 + _3325 + _3349 + 69] = 128
                                            _5131 = mem[_5035]
                                            mem[_4311 + _3325 + _3349 + 165] = mem[_5035]
                                            s = 0
                                            while s < _5131:
                                                mem[s + _4311 + _3325 + _3349 + 197] = mem[s + _5035 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5131) > _5131:
                                                mem[_5131 + _4311 + _3325 + _3349 + 197] = 0
                                            mem[_4311 + _3325 + _3349 + 101] = address(arg2)
                                            mem[_4311 + _3325 + _3349 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4311 + _3325 + _3349 + 165 len ceil32(_5131) + 32]
                                        else:
                                            mem[_4311 + _3325 + _3349 + 33] = 0
                                            _5036 = mem[64]
                                            mem[mem[64]] = _4311 + _3325 + _3349 + -mem[64] + 1
                                            mem[64] = _4311 + _3325 + _3349 + 33
                                            mem[_4311 + _3325 + _3349 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4311 + _3325 + _3349 + 37] = msg.sender
                                            mem[_4311 + _3325 + _3349 + 69] = 128
                                            _5132 = mem[_5036]
                                            mem[_4311 + _3325 + _3349 + 165] = mem[_5036]
                                            s = 0
                                            while s < _5132:
                                                mem[s + _4311 + _3325 + _3349 + 197] = mem[s + _5036 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5132) > _5132:
                                                mem[_5132 + _4311 + _3325 + _3349 + 197] = 0
                                            mem[_4311 + _3325 + _3349 + 101] = address(arg2)
                                            mem[_4311 + _3325 + _3349 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4311 + _3325 + _3349 + 165 len ceil32(_5132) + 32]
                                    else:
                                        _4312 = mem[_2328]
                                        s = 0
                                        while s < _4312:
                                            mem[s + _3325 + _3349 + 33] = mem[s + _2328 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4312) <= _4312:
                                            _5037 = mem[64]
                                            mem[mem[64]] = _4312 + _3325 + _3349 + -mem[64] + 1
                                            mem[64] = _4312 + _3325 + _3349 + 33
                                            mem[_4312 + _3325 + _3349 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4312 + _3325 + _3349 + 37] = msg.sender
                                            mem[_4312 + _3325 + _3349 + 69] = 128
                                            _5133 = mem[_5037]
                                            mem[_4312 + _3325 + _3349 + 165] = mem[_5037]
                                            s = 0
                                            while s < _5133:
                                                mem[s + _4312 + _3325 + _3349 + 197] = mem[s + _5037 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5133) > _5133:
                                                mem[_5133 + _4312 + _3325 + _3349 + 197] = 0
                                            mem[_4312 + _3325 + _3349 + 101] = address(arg2)
                                            mem[_4312 + _3325 + _3349 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4312 + _3325 + _3349 + 165 len ceil32(_5133) + 32]
                                        else:
                                            mem[_4312 + _3325 + _3349 + 33] = 0
                                            _5038 = mem[64]
                                            mem[mem[64]] = _4312 + _3325 + _3349 + -mem[64] + 1
                                            mem[64] = _4312 + _3325 + _3349 + 33
                                            mem[_4312 + _3325 + _3349 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4312 + _3325 + _3349 + 37] = msg.sender
                                            mem[_4312 + _3325 + _3349 + 69] = 128
                                            _5134 = mem[_5038]
                                            mem[_4312 + _3325 + _3349 + 165] = mem[_5038]
                                            s = 0
                                            while s < _5134:
                                                mem[s + _4312 + _3325 + _3349 + 197] = mem[s + _5038 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5134) > _5134:
                                                mem[_5134 + _4312 + _3325 + _3349 + 197] = 0
                                            mem[_4312 + _3325 + _3349 + 101] = address(arg2)
                                            mem[_4312 + _3325 + _3349 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4312 + _3325 + _3349 + 165 len ceil32(_5134) + 32]
                                else:
                                    mem[_2328 + 32 len t] = call.data[calldata.size len t]
                                    u = t
                                    s = idx + 1
                                    while s:
                                        if u < 1:
                                            revert with 0, 17
                                        if 48 > !(s % 10):
                                            revert with 0, 17
                                        if u - 1 >= mem[_2328]:
                                            revert with 0, 50
                                        mem[u + _2328 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                        u = u - 1
                                        s = s / 10
                                        continue 
                                    _3326 = mem[64]
                                    _3350 = mem[128]
                                    s = 0
                                    while s < _3350:
                                        mem[s + _3326 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_3326 + _3350 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_3350) <= _3350:
                                        _4313 = mem[_2328]
                                        s = 0
                                        while s < _4313:
                                            mem[s + _3326 + _3350 + 33] = mem[s + _2328 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4313) <= _4313:
                                            _5039 = mem[64]
                                            mem[mem[64]] = _4313 + _3326 + _3350 + -mem[64] + 1
                                            mem[64] = _4313 + _3326 + _3350 + 33
                                            mem[_4313 + _3326 + _3350 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4313 + _3326 + _3350 + 37] = msg.sender
                                            mem[_4313 + _3326 + _3350 + 69] = 128
                                            _5135 = mem[_5039]
                                            mem[_4313 + _3326 + _3350 + 165] = mem[_5039]
                                            s = 0
                                            while s < _5135:
                                                mem[s + _4313 + _3326 + _3350 + 197] = mem[s + _5039 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5135) > _5135:
                                                mem[_5135 + _4313 + _3326 + _3350 + 197] = 0
                                            mem[_4313 + _3326 + _3350 + 101] = address(arg2)
                                            mem[_4313 + _3326 + _3350 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4313 + _3326 + _3350 + 165 len ceil32(_5135) + 32]
                                        else:
                                            mem[_4313 + _3326 + _3350 + 33] = 0
                                            _5040 = mem[64]
                                            mem[mem[64]] = _4313 + _3326 + _3350 + -mem[64] + 1
                                            mem[64] = _4313 + _3326 + _3350 + 33
                                            mem[_4313 + _3326 + _3350 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4313 + _3326 + _3350 + 37] = msg.sender
                                            mem[_4313 + _3326 + _3350 + 69] = 128
                                            _5136 = mem[_5040]
                                            mem[_4313 + _3326 + _3350 + 165] = mem[_5040]
                                            s = 0
                                            while s < _5136:
                                                mem[s + _4313 + _3326 + _3350 + 197] = mem[s + _5040 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5136) > _5136:
                                                mem[_5136 + _4313 + _3326 + _3350 + 197] = 0
                                            mem[_4313 + _3326 + _3350 + 101] = address(arg2)
                                            mem[_4313 + _3326 + _3350 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4313 + _3326 + _3350 + 165 len ceil32(_5136) + 32]
                                    else:
                                        _4314 = mem[_2328]
                                        s = 0
                                        while s < _4314:
                                            mem[s + _3326 + _3350 + 33] = mem[s + _2328 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4314) <= _4314:
                                            _5041 = mem[64]
                                            mem[mem[64]] = _4314 + _3326 + _3350 + -mem[64] + 1
                                            mem[64] = _4314 + _3326 + _3350 + 33
                                            mem[_4314 + _3326 + _3350 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4314 + _3326 + _3350 + 37] = msg.sender
                                            mem[_4314 + _3326 + _3350 + 69] = 128
                                            _5137 = mem[_5041]
                                            mem[_4314 + _3326 + _3350 + 165] = mem[_5041]
                                            s = 0
                                            while s < _5137:
                                                mem[s + _4314 + _3326 + _3350 + 197] = mem[s + _5041 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5137) > _5137:
                                                mem[_5137 + _4314 + _3326 + _3350 + 197] = 0
                                            mem[_4314 + _3326 + _3350 + 101] = address(arg2)
                                            mem[_4314 + _3326 + _3350 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4314 + _3326 + _3350 + 165 len ceil32(_5137) + 32]
                                        else:
                                            mem[_4314 + _3326 + _3350 + 33] = 0
                                            _5042 = mem[64]
                                            mem[mem[64]] = _4314 + _3326 + _3350 + -mem[64] + 1
                                            mem[64] = _4314 + _3326 + _3350 + 33
                                            mem[_4314 + _3326 + _3350 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4314 + _3326 + _3350 + 37] = msg.sender
                                            mem[_4314 + _3326 + _3350 + 69] = 128
                                            _5138 = mem[_5042]
                                            mem[_4314 + _3326 + _3350 + 165] = mem[_5042]
                                            s = 0
                                            while s < _5138:
                                                mem[s + _4314 + _3326 + _3350 + 197] = mem[s + _5042 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5138) > _5138:
                                                mem[_5138 + _4314 + _3326 + _3350 + 197] = 0
                                            mem[_4314 + _3326 + _3350 + 101] = address(arg2)
                                            mem[_4314 + _3326 + _3350 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4314 + _3326 + _3350 + 165 len ceil32(_5138) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < arg3:
                            if 1 > !idx:
                                revert with 0, 17
                            if not -idx - 1:
                                _1643 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1643] = 1
                                mem[_1643 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                _1655 = mem[64]
                                _1667 = mem[128]
                                s = 0
                                while s < _1667:
                                    mem[s + _1655 + 32] = mem[s + 160]
                                    s = s + 32
                                    continue 
                                mem[_1655 + _1667 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                if ceil32(_1667) <= _1667:
                                    _2339 = mem[_1643]
                                    s = 0
                                    while s < _2339:
                                        mem[s + _1655 + _1667 + 33] = mem[s + _1643 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2339) <= _2339:
                                        _3371 = mem[64]
                                        mem[mem[64]] = _2339 + _1655 + _1667 + -mem[64] + 1
                                        mem[64] = _2339 + _1655 + _1667 + 33
                                        mem[_2339 + _1655 + _1667 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2339 + _1655 + _1667 + 37] = msg.sender
                                        mem[_2339 + _1655 + _1667 + 69] = 128
                                        _3421 = mem[_3371]
                                        mem[_2339 + _1655 + _1667 + 165] = mem[_3371]
                                        s = 0
                                        while s < _3421:
                                            mem[s + _2339 + _1655 + _1667 + 197] = mem[s + _3371 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3421) > _3421:
                                            mem[_3421 + _2339 + _1655 + _1667 + 197] = 0
                                        mem[_2339 + _1655 + _1667 + 101] = address(arg2)
                                        mem[_2339 + _1655 + _1667 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2339 + _1655 + _1667 + 165 len ceil32(_3421) + 32]
                                    else:
                                        mem[_2339 + _1655 + _1667 + 33] = 0
                                        _3372 = mem[64]
                                        mem[mem[64]] = _2339 + _1655 + _1667 + -mem[64] + 1
                                        mem[64] = _2339 + _1655 + _1667 + 33
                                        mem[_2339 + _1655 + _1667 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2339 + _1655 + _1667 + 37] = msg.sender
                                        mem[_2339 + _1655 + _1667 + 69] = 128
                                        _3422 = mem[_3372]
                                        mem[_2339 + _1655 + _1667 + 165] = mem[_3372]
                                        s = 0
                                        while s < _3422:
                                            mem[s + _2339 + _1655 + _1667 + 197] = mem[s + _3372 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3422) > _3422:
                                            mem[_3422 + _2339 + _1655 + _1667 + 197] = 0
                                        mem[_2339 + _1655 + _1667 + 101] = address(arg2)
                                        mem[_2339 + _1655 + _1667 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2339 + _1655 + _1667 + 165 len ceil32(_3422) + 32]
                                else:
                                    _2340 = mem[_1643]
                                    s = 0
                                    while s < _2340:
                                        mem[s + _1655 + _1667 + 33] = mem[s + _1643 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2340) <= _2340:
                                        _3373 = mem[64]
                                        mem[mem[64]] = _2340 + _1655 + _1667 + -mem[64] + 1
                                        mem[64] = _2340 + _1655 + _1667 + 33
                                        mem[_2340 + _1655 + _1667 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2340 + _1655 + _1667 + 37] = msg.sender
                                        mem[_2340 + _1655 + _1667 + 69] = 128
                                        _3423 = mem[_3373]
                                        mem[_2340 + _1655 + _1667 + 165] = mem[_3373]
                                        s = 0
                                        while s < _3423:
                                            mem[s + _2340 + _1655 + _1667 + 197] = mem[s + _3373 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3423) > _3423:
                                            mem[_3423 + _2340 + _1655 + _1667 + 197] = 0
                                        mem[_2340 + _1655 + _1667 + 101] = address(arg2)
                                        mem[_2340 + _1655 + _1667 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2340 + _1655 + _1667 + 165 len ceil32(_3423) + 32]
                                    else:
                                        mem[_2340 + _1655 + _1667 + 33] = 0
                                        _3374 = mem[64]
                                        mem[mem[64]] = _2340 + _1655 + _1667 + -mem[64] + 1
                                        mem[64] = _2340 + _1655 + _1667 + 33
                                        mem[_2340 + _1655 + _1667 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                        mem[_2340 + _1655 + _1667 + 37] = msg.sender
                                        mem[_2340 + _1655 + _1667 + 69] = 128
                                        _3424 = mem[_3374]
                                        mem[_2340 + _1655 + _1667 + 165] = mem[_3374]
                                        s = 0
                                        while s < _3424:
                                            mem[s + _2340 + _1655 + _1667 + 197] = mem[s + _3374 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3424) > _3424:
                                            mem[_3424 + _2340 + _1655 + _1667 + 197] = 0
                                        mem[_2340 + _1655 + _1667 + 101] = address(arg2)
                                        mem[_2340 + _1655 + _1667 + 133] = uint32(arg4)
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                             gas gas_remaining wei
                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2340 + _1655 + _1667 + 165 len ceil32(_3424) + 32]
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
                                _2327 = mem[64]
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
                                        if u - 1 >= mem[_2327]:
                                            revert with 0, 50
                                        mem[u + _2327 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                        u = u - 1
                                        s = s / 10
                                        continue 
                                    _3323 = mem[64]
                                    _3347 = mem[128]
                                    s = 0
                                    while s < _3347:
                                        mem[s + _3323 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_3323 + _3347 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_3347) <= _3347:
                                        _4307 = mem[_2327]
                                        s = 0
                                        while s < _4307:
                                            mem[s + _3323 + _3347 + 33] = mem[s + _2327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4307) <= _4307:
                                            _5027 = mem[64]
                                            mem[mem[64]] = _4307 + _3323 + _3347 + -mem[64] + 1
                                            mem[64] = _4307 + _3323 + _3347 + 33
                                            mem[_4307 + _3323 + _3347 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4307 + _3323 + _3347 + 37] = msg.sender
                                            mem[_4307 + _3323 + _3347 + 69] = 128
                                            _5123 = mem[_5027]
                                            mem[_4307 + _3323 + _3347 + 165] = mem[_5027]
                                            s = 0
                                            while s < _5123:
                                                mem[s + _4307 + _3323 + _3347 + 197] = mem[s + _5027 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5123) > _5123:
                                                mem[_5123 + _4307 + _3323 + _3347 + 197] = 0
                                            mem[_4307 + _3323 + _3347 + 101] = address(arg2)
                                            mem[_4307 + _3323 + _3347 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4307 + _3323 + _3347 + 165 len ceil32(_5123) + 32]
                                        else:
                                            mem[_4307 + _3323 + _3347 + 33] = 0
                                            _5028 = mem[64]
                                            mem[mem[64]] = _4307 + _3323 + _3347 + -mem[64] + 1
                                            mem[64] = _4307 + _3323 + _3347 + 33
                                            mem[_4307 + _3323 + _3347 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4307 + _3323 + _3347 + 37] = msg.sender
                                            mem[_4307 + _3323 + _3347 + 69] = 128
                                            _5124 = mem[_5028]
                                            mem[_4307 + _3323 + _3347 + 165] = mem[_5028]
                                            s = 0
                                            while s < _5124:
                                                mem[s + _4307 + _3323 + _3347 + 197] = mem[s + _5028 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5124) > _5124:
                                                mem[_5124 + _4307 + _3323 + _3347 + 197] = 0
                                            mem[_4307 + _3323 + _3347 + 101] = address(arg2)
                                            mem[_4307 + _3323 + _3347 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4307 + _3323 + _3347 + 165 len ceil32(_5124) + 32]
                                    else:
                                        _4308 = mem[_2327]
                                        s = 0
                                        while s < _4308:
                                            mem[s + _3323 + _3347 + 33] = mem[s + _2327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4308) <= _4308:
                                            _5029 = mem[64]
                                            mem[mem[64]] = _4308 + _3323 + _3347 + -mem[64] + 1
                                            mem[64] = _4308 + _3323 + _3347 + 33
                                            mem[_4308 + _3323 + _3347 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4308 + _3323 + _3347 + 37] = msg.sender
                                            mem[_4308 + _3323 + _3347 + 69] = 128
                                            _5125 = mem[_5029]
                                            mem[_4308 + _3323 + _3347 + 165] = mem[_5029]
                                            s = 0
                                            while s < _5125:
                                                mem[s + _4308 + _3323 + _3347 + 197] = mem[s + _5029 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5125) > _5125:
                                                mem[_5125 + _4308 + _3323 + _3347 + 197] = 0
                                            mem[_4308 + _3323 + _3347 + 101] = address(arg2)
                                            mem[_4308 + _3323 + _3347 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4308 + _3323 + _3347 + 165 len ceil32(_5125) + 32]
                                        else:
                                            mem[_4308 + _3323 + _3347 + 33] = 0
                                            _5030 = mem[64]
                                            mem[mem[64]] = _4308 + _3323 + _3347 + -mem[64] + 1
                                            mem[64] = _4308 + _3323 + _3347 + 33
                                            mem[_4308 + _3323 + _3347 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4308 + _3323 + _3347 + 37] = msg.sender
                                            mem[_4308 + _3323 + _3347 + 69] = 128
                                            _5126 = mem[_5030]
                                            mem[_4308 + _3323 + _3347 + 165] = mem[_5030]
                                            s = 0
                                            while s < _5126:
                                                mem[s + _4308 + _3323 + _3347 + 197] = mem[s + _5030 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5126) > _5126:
                                                mem[_5126 + _4308 + _3323 + _3347 + 197] = 0
                                            mem[_4308 + _3323 + _3347 + 101] = address(arg2)
                                            mem[_4308 + _3323 + _3347 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4308 + _3323 + _3347 + 165 len ceil32(_5126) + 32]
                                else:
                                    mem[_2327 + 32 len t] = call.data[calldata.size len t]
                                    u = t
                                    s = idx + 1
                                    while s:
                                        if u < 1:
                                            revert with 0, 17
                                        if 48 > !(s % 10):
                                            revert with 0, 17
                                        if u - 1 >= mem[_2327]:
                                            revert with 0, 50
                                        mem[u + _2327 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                        u = u - 1
                                        s = s / 10
                                        continue 
                                    _3324 = mem[64]
                                    _3348 = mem[128]
                                    s = 0
                                    while s < _3348:
                                        mem[s + _3324 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_3324 + _3348 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_3348) <= _3348:
                                        _4309 = mem[_2327]
                                        s = 0
                                        while s < _4309:
                                            mem[s + _3324 + _3348 + 33] = mem[s + _2327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4309) <= _4309:
                                            _5031 = mem[64]
                                            mem[mem[64]] = _4309 + _3324 + _3348 + -mem[64] + 1
                                            mem[64] = _4309 + _3324 + _3348 + 33
                                            mem[_4309 + _3324 + _3348 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4309 + _3324 + _3348 + 37] = msg.sender
                                            mem[_4309 + _3324 + _3348 + 69] = 128
                                            _5127 = mem[_5031]
                                            mem[_4309 + _3324 + _3348 + 165] = mem[_5031]
                                            s = 0
                                            while s < _5127:
                                                mem[s + _4309 + _3324 + _3348 + 197] = mem[s + _5031 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5127) > _5127:
                                                mem[_5127 + _4309 + _3324 + _3348 + 197] = 0
                                            mem[_4309 + _3324 + _3348 + 101] = address(arg2)
                                            mem[_4309 + _3324 + _3348 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4309 + _3324 + _3348 + 165 len ceil32(_5127) + 32]
                                        else:
                                            mem[_4309 + _3324 + _3348 + 33] = 0
                                            _5032 = mem[64]
                                            mem[mem[64]] = _4309 + _3324 + _3348 + -mem[64] + 1
                                            mem[64] = _4309 + _3324 + _3348 + 33
                                            mem[_4309 + _3324 + _3348 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4309 + _3324 + _3348 + 37] = msg.sender
                                            mem[_4309 + _3324 + _3348 + 69] = 128
                                            _5128 = mem[_5032]
                                            mem[_4309 + _3324 + _3348 + 165] = mem[_5032]
                                            s = 0
                                            while s < _5128:
                                                mem[s + _4309 + _3324 + _3348 + 197] = mem[s + _5032 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5128) > _5128:
                                                mem[_5128 + _4309 + _3324 + _3348 + 197] = 0
                                            mem[_4309 + _3324 + _3348 + 101] = address(arg2)
                                            mem[_4309 + _3324 + _3348 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4309 + _3324 + _3348 + 165 len ceil32(_5128) + 32]
                                    else:
                                        _4310 = mem[_2327]
                                        s = 0
                                        while s < _4310:
                                            mem[s + _3324 + _3348 + 33] = mem[s + _2327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_4310) <= _4310:
                                            _5033 = mem[64]
                                            mem[mem[64]] = _4310 + _3324 + _3348 + -mem[64] + 1
                                            mem[64] = _4310 + _3324 + _3348 + 33
                                            mem[_4310 + _3324 + _3348 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4310 + _3324 + _3348 + 37] = msg.sender
                                            mem[_4310 + _3324 + _3348 + 69] = 128
                                            _5129 = mem[_5033]
                                            mem[_4310 + _3324 + _3348 + 165] = mem[_5033]
                                            s = 0
                                            while s < _5129:
                                                mem[s + _4310 + _3324 + _3348 + 197] = mem[s + _5033 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5129) > _5129:
                                                mem[_5129 + _4310 + _3324 + _3348 + 197] = 0
                                            mem[_4310 + _3324 + _3348 + 101] = address(arg2)
                                            mem[_4310 + _3324 + _3348 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4310 + _3324 + _3348 + 165 len ceil32(_5129) + 32]
                                        else:
                                            mem[_4310 + _3324 + _3348 + 33] = 0
                                            _5034 = mem[64]
                                            mem[mem[64]] = _4310 + _3324 + _3348 + -mem[64] + 1
                                            mem[64] = _4310 + _3324 + _3348 + 33
                                            mem[_4310 + _3324 + _3348 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_4310 + _3324 + _3348 + 37] = msg.sender
                                            mem[_4310 + _3324 + _3348 + 69] = 128
                                            _5130 = mem[_5034]
                                            mem[_4310 + _3324 + _3348 + 165] = mem[_5034]
                                            s = 0
                                            while s < _5130:
                                                mem[s + _4310 + _3324 + _3348 + 197] = mem[s + _5034 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_5130) > _5130:
                                                mem[_5130 + _4310 + _3324 + _3348 + 197] = 0
                                            mem[_4310 + _3324 + _3348 + 101] = address(arg2)
                                            mem[_4310 + _3324 + _3348 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4310 + _3324 + _3348 + 165 len ceil32(_5130) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if not uint8(stor28.field_8):
                        if not -arg3:
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = 0
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < arg3:
                                if 1 > !idx:
                                    revert with 0, 17
                                if not -idx - 1:
                                    _1646 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1646] = 1
                                    mem[_1646 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                    _1658 = mem[64]
                                    _1670 = mem[128]
                                    s = 0
                                    while s < _1670:
                                        mem[s + _1658 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_1658 + _1670 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_1670) <= _1670:
                                        _2345 = mem[_1646]
                                        s = 0
                                        while s < _2345:
                                            mem[s + _1658 + _1670 + 33] = mem[s + _1646 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2345) <= _2345:
                                            _3383 = mem[64]
                                            mem[mem[64]] = _2345 + _1658 + _1670 + -mem[64] + 1
                                            mem[64] = _2345 + _1658 + _1670 + 33
                                            mem[_2345 + _1658 + _1670 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2345 + _1658 + _1670 + 37] = msg.sender
                                            mem[_2345 + _1658 + _1670 + 69] = 128
                                            _3439 = mem[_3383]
                                            mem[_2345 + _1658 + _1670 + 165] = mem[_3383]
                                            s = 0
                                            while s < _3439:
                                                mem[s + _2345 + _1658 + _1670 + 197] = mem[s + _3383 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3439) > _3439:
                                                mem[_3439 + _2345 + _1658 + _1670 + 197] = 0
                                            mem[_2345 + _1658 + _1670 + 101] = address(arg2)
                                            mem[_2345 + _1658 + _1670 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2345 + _1658 + _1670 + 165 len ceil32(_3439) + 32]
                                        else:
                                            mem[_2345 + _1658 + _1670 + 33] = 0
                                            _3384 = mem[64]
                                            mem[mem[64]] = _2345 + _1658 + _1670 + -mem[64] + 1
                                            mem[64] = _2345 + _1658 + _1670 + 33
                                            mem[_2345 + _1658 + _1670 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2345 + _1658 + _1670 + 37] = msg.sender
                                            mem[_2345 + _1658 + _1670 + 69] = 128
                                            _3440 = mem[_3384]
                                            mem[_2345 + _1658 + _1670 + 165] = mem[_3384]
                                            s = 0
                                            while s < _3440:
                                                mem[s + _2345 + _1658 + _1670 + 197] = mem[s + _3384 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3440) > _3440:
                                                mem[_3440 + _2345 + _1658 + _1670 + 197] = 0
                                            mem[_2345 + _1658 + _1670 + 101] = address(arg2)
                                            mem[_2345 + _1658 + _1670 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2345 + _1658 + _1670 + 165 len ceil32(_3440) + 32]
                                    else:
                                        _2346 = mem[_1646]
                                        s = 0
                                        while s < _2346:
                                            mem[s + _1658 + _1670 + 33] = mem[s + _1646 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2346) <= _2346:
                                            _3385 = mem[64]
                                            mem[mem[64]] = _2346 + _1658 + _1670 + -mem[64] + 1
                                            mem[64] = _2346 + _1658 + _1670 + 33
                                            mem[_2346 + _1658 + _1670 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2346 + _1658 + _1670 + 37] = msg.sender
                                            mem[_2346 + _1658 + _1670 + 69] = 128
                                            _3441 = mem[_3385]
                                            mem[_2346 + _1658 + _1670 + 165] = mem[_3385]
                                            s = 0
                                            while s < _3441:
                                                mem[s + _2346 + _1658 + _1670 + 197] = mem[s + _3385 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3441) > _3441:
                                                mem[_3441 + _2346 + _1658 + _1670 + 197] = 0
                                            mem[_2346 + _1658 + _1670 + 101] = address(arg2)
                                            mem[_2346 + _1658 + _1670 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2346 + _1658 + _1670 + 165 len ceil32(_3441) + 32]
                                        else:
                                            mem[_2346 + _1658 + _1670 + 33] = 0
                                            _3386 = mem[64]
                                            mem[mem[64]] = _2346 + _1658 + _1670 + -mem[64] + 1
                                            mem[64] = _2346 + _1658 + _1670 + 33
                                            mem[_2346 + _1658 + _1670 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2346 + _1658 + _1670 + 37] = msg.sender
                                            mem[_2346 + _1658 + _1670 + 69] = 128
                                            _3442 = mem[_3386]
                                            mem[_2346 + _1658 + _1670 + 165] = mem[_3386]
                                            s = 0
                                            while s < _3442:
                                                mem[s + _2346 + _1658 + _1670 + 197] = mem[s + _3386 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3442) > _3442:
                                                mem[_3442 + _2346 + _1658 + _1670 + 197] = 0
                                            mem[_2346 + _1658 + _1670 + 101] = address(arg2)
                                            mem[_2346 + _1658 + _1670 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2346 + _1658 + _1670 + 165 len ceil32(_3442) + 32]
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
                                    _2330 = mem[64]
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
                                            if u - 1 >= mem[_2330]:
                                                revert with 0, 50
                                            mem[u + _2330 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                            u = u - 1
                                            s = s / 10
                                            continue 
                                        _3329 = mem[64]
                                        _3353 = mem[128]
                                        s = 0
                                        while s < _3353:
                                            mem[s + _3329 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_3329 + _3353 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_3353) <= _3353:
                                            _4319 = mem[_2330]
                                            s = 0
                                            while s < _4319:
                                                mem[s + _3329 + _3353 + 33] = mem[s + _2330 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4319) <= _4319:
                                                _5051 = mem[64]
                                                mem[mem[64]] = _4319 + _3329 + _3353 + -mem[64] + 1
                                                mem[64] = _4319 + _3329 + _3353 + 33
                                                mem[_4319 + _3329 + _3353 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4319 + _3329 + _3353 + 37] = msg.sender
                                                mem[_4319 + _3329 + _3353 + 69] = 128
                                                _5147 = mem[_5051]
                                                mem[_4319 + _3329 + _3353 + 165] = mem[_5051]
                                                s = 0
                                                while s < _5147:
                                                    mem[s + _4319 + _3329 + _3353 + 197] = mem[s + _5051 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5147) > _5147:
                                                    mem[_5147 + _4319 + _3329 + _3353 + 197] = 0
                                                mem[_4319 + _3329 + _3353 + 101] = address(arg2)
                                                mem[_4319 + _3329 + _3353 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4319 + _3329 + _3353 + 165 len ceil32(_5147) + 32]
                                            else:
                                                mem[_4319 + _3329 + _3353 + 33] = 0
                                                _5052 = mem[64]
                                                mem[mem[64]] = _4319 + _3329 + _3353 + -mem[64] + 1
                                                mem[64] = _4319 + _3329 + _3353 + 33
                                                mem[_4319 + _3329 + _3353 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4319 + _3329 + _3353 + 37] = msg.sender
                                                mem[_4319 + _3329 + _3353 + 69] = 128
                                                _5148 = mem[_5052]
                                                mem[_4319 + _3329 + _3353 + 165] = mem[_5052]
                                                s = 0
                                                while s < _5148:
                                                    mem[s + _4319 + _3329 + _3353 + 197] = mem[s + _5052 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5148) > _5148:
                                                    mem[_5148 + _4319 + _3329 + _3353 + 197] = 0
                                                mem[_4319 + _3329 + _3353 + 101] = address(arg2)
                                                mem[_4319 + _3329 + _3353 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4319 + _3329 + _3353 + 165 len ceil32(_5148) + 32]
                                        else:
                                            _4320 = mem[_2330]
                                            s = 0
                                            while s < _4320:
                                                mem[s + _3329 + _3353 + 33] = mem[s + _2330 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4320) <= _4320:
                                                _5053 = mem[64]
                                                mem[mem[64]] = _4320 + _3329 + _3353 + -mem[64] + 1
                                                mem[64] = _4320 + _3329 + _3353 + 33
                                                mem[_4320 + _3329 + _3353 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4320 + _3329 + _3353 + 37] = msg.sender
                                                mem[_4320 + _3329 + _3353 + 69] = 128
                                                _5149 = mem[_5053]
                                                mem[_4320 + _3329 + _3353 + 165] = mem[_5053]
                                                s = 0
                                                while s < _5149:
                                                    mem[s + _4320 + _3329 + _3353 + 197] = mem[s + _5053 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5149) > _5149:
                                                    mem[_5149 + _4320 + _3329 + _3353 + 197] = 0
                                                mem[_4320 + _3329 + _3353 + 101] = address(arg2)
                                                mem[_4320 + _3329 + _3353 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4320 + _3329 + _3353 + 165 len ceil32(_5149) + 32]
                                            else:
                                                mem[_4320 + _3329 + _3353 + 33] = 0
                                                _5054 = mem[64]
                                                mem[mem[64]] = _4320 + _3329 + _3353 + -mem[64] + 1
                                                mem[64] = _4320 + _3329 + _3353 + 33
                                                mem[_4320 + _3329 + _3353 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4320 + _3329 + _3353 + 37] = msg.sender
                                                mem[_4320 + _3329 + _3353 + 69] = 128
                                                _5150 = mem[_5054]
                                                mem[_4320 + _3329 + _3353 + 165] = mem[_5054]
                                                s = 0
                                                while s < _5150:
                                                    mem[s + _4320 + _3329 + _3353 + 197] = mem[s + _5054 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5150) > _5150:
                                                    mem[_5150 + _4320 + _3329 + _3353 + 197] = 0
                                                mem[_4320 + _3329 + _3353 + 101] = address(arg2)
                                                mem[_4320 + _3329 + _3353 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4320 + _3329 + _3353 + 165 len ceil32(_5150) + 32]
                                    else:
                                        mem[_2330 + 32 len t] = call.data[calldata.size len t]
                                        u = t
                                        s = idx + 1
                                        while s:
                                            if u < 1:
                                                revert with 0, 17
                                            if 48 > !(s % 10):
                                                revert with 0, 17
                                            if u - 1 >= mem[_2330]:
                                                revert with 0, 50
                                            mem[u + _2330 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                            u = u - 1
                                            s = s / 10
                                            continue 
                                        _3330 = mem[64]
                                        _3354 = mem[128]
                                        s = 0
                                        while s < _3354:
                                            mem[s + _3330 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_3330 + _3354 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_3354) <= _3354:
                                            _4321 = mem[_2330]
                                            s = 0
                                            while s < _4321:
                                                mem[s + _3330 + _3354 + 33] = mem[s + _2330 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4321) <= _4321:
                                                _5055 = mem[64]
                                                mem[mem[64]] = _4321 + _3330 + _3354 + -mem[64] + 1
                                                mem[64] = _4321 + _3330 + _3354 + 33
                                                mem[_4321 + _3330 + _3354 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4321 + _3330 + _3354 + 37] = msg.sender
                                                mem[_4321 + _3330 + _3354 + 69] = 128
                                                _5151 = mem[_5055]
                                                mem[_4321 + _3330 + _3354 + 165] = mem[_5055]
                                                s = 0
                                                while s < _5151:
                                                    mem[s + _4321 + _3330 + _3354 + 197] = mem[s + _5055 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5151) > _5151:
                                                    mem[_5151 + _4321 + _3330 + _3354 + 197] = 0
                                                mem[_4321 + _3330 + _3354 + 101] = address(arg2)
                                                mem[_4321 + _3330 + _3354 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4321 + _3330 + _3354 + 165 len ceil32(_5151) + 32]
                                            else:
                                                mem[_4321 + _3330 + _3354 + 33] = 0
                                                _5056 = mem[64]
                                                mem[mem[64]] = _4321 + _3330 + _3354 + -mem[64] + 1
                                                mem[64] = _4321 + _3330 + _3354 + 33
                                                mem[_4321 + _3330 + _3354 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4321 + _3330 + _3354 + 37] = msg.sender
                                                mem[_4321 + _3330 + _3354 + 69] = 128
                                                _5152 = mem[_5056]
                                                mem[_4321 + _3330 + _3354 + 165] = mem[_5056]
                                                s = 0
                                                while s < _5152:
                                                    mem[s + _4321 + _3330 + _3354 + 197] = mem[s + _5056 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5152) > _5152:
                                                    mem[_5152 + _4321 + _3330 + _3354 + 197] = 0
                                                mem[_4321 + _3330 + _3354 + 101] = address(arg2)
                                                mem[_4321 + _3330 + _3354 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4321 + _3330 + _3354 + 165 len ceil32(_5152) + 32]
                                        else:
                                            _4322 = mem[_2330]
                                            s = 0
                                            while s < _4322:
                                                mem[s + _3330 + _3354 + 33] = mem[s + _2330 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4322) <= _4322:
                                                _5057 = mem[64]
                                                mem[mem[64]] = _4322 + _3330 + _3354 + -mem[64] + 1
                                                mem[64] = _4322 + _3330 + _3354 + 33
                                                mem[_4322 + _3330 + _3354 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4322 + _3330 + _3354 + 37] = msg.sender
                                                mem[_4322 + _3330 + _3354 + 69] = 128
                                                _5153 = mem[_5057]
                                                mem[_4322 + _3330 + _3354 + 165] = mem[_5057]
                                                s = 0
                                                while s < _5153:
                                                    mem[s + _4322 + _3330 + _3354 + 197] = mem[s + _5057 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5153) > _5153:
                                                    mem[_5153 + _4322 + _3330 + _3354 + 197] = 0
                                                mem[_4322 + _3330 + _3354 + 101] = address(arg2)
                                                mem[_4322 + _3330 + _3354 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4322 + _3330 + _3354 + 165 len ceil32(_5153) + 32]
                                            else:
                                                mem[_4322 + _3330 + _3354 + 33] = 0
                                                _5058 = mem[64]
                                                mem[mem[64]] = _4322 + _3330 + _3354 + -mem[64] + 1
                                                mem[64] = _4322 + _3330 + _3354 + 33
                                                mem[_4322 + _3330 + _3354 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4322 + _3330 + _3354 + 37] = msg.sender
                                                mem[_4322 + _3330 + _3354 + 69] = 128
                                                _5154 = mem[_5058]
                                                mem[_4322 + _3330 + _3354 + 165] = mem[_5058]
                                                s = 0
                                                while s < _5154:
                                                    mem[s + _4322 + _3330 + _3354 + 197] = mem[s + _5058 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5154) > _5154:
                                                    mem[_5154 + _4322 + _3330 + _3354 + 197] = 0
                                                mem[_4322 + _3330 + _3354 + 101] = address(arg2)
                                                mem[_4322 + _3330 + _3354 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4322 + _3330 + _3354 + 165 len ceil32(_5154) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if arg3 and ext_call.return_data[0] > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < arg3:
                                if 1 > !idx:
                                    revert with 0, 17
                                if not -idx - 1:
                                    _1645 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1645] = 1
                                    mem[_1645 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                    _1657 = mem[64]
                                    _1669 = mem[128]
                                    s = 0
                                    while s < _1669:
                                        mem[s + _1657 + 32] = mem[s + 160]
                                        s = s + 32
                                        continue 
                                    mem[_1657 + _1669 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                    if ceil32(_1669) <= _1669:
                                        _2343 = mem[_1645]
                                        s = 0
                                        while s < _2343:
                                            mem[s + _1657 + _1669 + 33] = mem[s + _1645 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2343) <= _2343:
                                            _3379 = mem[64]
                                            mem[mem[64]] = _2343 + _1657 + _1669 + -mem[64] + 1
                                            mem[64] = _2343 + _1657 + _1669 + 33
                                            mem[_2343 + _1657 + _1669 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2343 + _1657 + _1669 + 37] = msg.sender
                                            mem[_2343 + _1657 + _1669 + 69] = 128
                                            _3433 = mem[_3379]
                                            mem[_2343 + _1657 + _1669 + 165] = mem[_3379]
                                            s = 0
                                            while s < _3433:
                                                mem[s + _2343 + _1657 + _1669 + 197] = mem[s + _3379 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3433) > _3433:
                                                mem[_3433 + _2343 + _1657 + _1669 + 197] = 0
                                            mem[_2343 + _1657 + _1669 + 101] = address(arg2)
                                            mem[_2343 + _1657 + _1669 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2343 + _1657 + _1669 + 165 len ceil32(_3433) + 32]
                                        else:
                                            mem[_2343 + _1657 + _1669 + 33] = 0
                                            _3380 = mem[64]
                                            mem[mem[64]] = _2343 + _1657 + _1669 + -mem[64] + 1
                                            mem[64] = _2343 + _1657 + _1669 + 33
                                            mem[_2343 + _1657 + _1669 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2343 + _1657 + _1669 + 37] = msg.sender
                                            mem[_2343 + _1657 + _1669 + 69] = 128
                                            _3434 = mem[_3380]
                                            mem[_2343 + _1657 + _1669 + 165] = mem[_3380]
                                            s = 0
                                            while s < _3434:
                                                mem[s + _2343 + _1657 + _1669 + 197] = mem[s + _3380 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3434) > _3434:
                                                mem[_3434 + _2343 + _1657 + _1669 + 197] = 0
                                            mem[_2343 + _1657 + _1669 + 101] = address(arg2)
                                            mem[_2343 + _1657 + _1669 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2343 + _1657 + _1669 + 165 len ceil32(_3434) + 32]
                                    else:
                                        _2344 = mem[_1645]
                                        s = 0
                                        while s < _2344:
                                            mem[s + _1657 + _1669 + 33] = mem[s + _1645 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2344) <= _2344:
                                            _3381 = mem[64]
                                            mem[mem[64]] = _2344 + _1657 + _1669 + -mem[64] + 1
                                            mem[64] = _2344 + _1657 + _1669 + 33
                                            mem[_2344 + _1657 + _1669 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2344 + _1657 + _1669 + 37] = msg.sender
                                            mem[_2344 + _1657 + _1669 + 69] = 128
                                            _3435 = mem[_3381]
                                            mem[_2344 + _1657 + _1669 + 165] = mem[_3381]
                                            s = 0
                                            while s < _3435:
                                                mem[s + _2344 + _1657 + _1669 + 197] = mem[s + _3381 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3435) > _3435:
                                                mem[_3435 + _2344 + _1657 + _1669 + 197] = 0
                                            mem[_2344 + _1657 + _1669 + 101] = address(arg2)
                                            mem[_2344 + _1657 + _1669 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2344 + _1657 + _1669 + 165 len ceil32(_3435) + 32]
                                        else:
                                            mem[_2344 + _1657 + _1669 + 33] = 0
                                            _3382 = mem[64]
                                            mem[mem[64]] = _2344 + _1657 + _1669 + -mem[64] + 1
                                            mem[64] = _2344 + _1657 + _1669 + 33
                                            mem[_2344 + _1657 + _1669 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                            mem[_2344 + _1657 + _1669 + 37] = msg.sender
                                            mem[_2344 + _1657 + _1669 + 69] = 128
                                            _3436 = mem[_3382]
                                            mem[_2344 + _1657 + _1669 + 165] = mem[_3382]
                                            s = 0
                                            while s < _3436:
                                                mem[s + _2344 + _1657 + _1669 + 197] = mem[s + _3382 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_3436) > _3436:
                                                mem[_3436 + _2344 + _1657 + _1669 + 197] = 0
                                            mem[_2344 + _1657 + _1669 + 101] = address(arg2)
                                            mem[_2344 + _1657 + _1669 + 133] = uint32(arg4)
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                 gas gas_remaining wei
                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2344 + _1657 + _1669 + 165 len ceil32(_3436) + 32]
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
                                    _2329 = mem[64]
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
                                            if u - 1 >= mem[_2329]:
                                                revert with 0, 50
                                            mem[u + _2329 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                            u = u - 1
                                            s = s / 10
                                            continue 
                                        _3327 = mem[64]
                                        _3351 = mem[128]
                                        s = 0
                                        while s < _3351:
                                            mem[s + _3327 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_3327 + _3351 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_3351) <= _3351:
                                            _4315 = mem[_2329]
                                            s = 0
                                            while s < _4315:
                                                mem[s + _3327 + _3351 + 33] = mem[s + _2329 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4315) <= _4315:
                                                _5043 = mem[64]
                                                mem[mem[64]] = _4315 + _3327 + _3351 + -mem[64] + 1
                                                mem[64] = _4315 + _3327 + _3351 + 33
                                                mem[_4315 + _3327 + _3351 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4315 + _3327 + _3351 + 37] = msg.sender
                                                mem[_4315 + _3327 + _3351 + 69] = 128
                                                _5139 = mem[_5043]
                                                mem[_4315 + _3327 + _3351 + 165] = mem[_5043]
                                                s = 0
                                                while s < _5139:
                                                    mem[s + _4315 + _3327 + _3351 + 197] = mem[s + _5043 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5139) > _5139:
                                                    mem[_5139 + _4315 + _3327 + _3351 + 197] = 0
                                                mem[_4315 + _3327 + _3351 + 101] = address(arg2)
                                                mem[_4315 + _3327 + _3351 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4315 + _3327 + _3351 + 165 len ceil32(_5139) + 32]
                                            else:
                                                mem[_4315 + _3327 + _3351 + 33] = 0
                                                _5044 = mem[64]
                                                mem[mem[64]] = _4315 + _3327 + _3351 + -mem[64] + 1
                                                mem[64] = _4315 + _3327 + _3351 + 33
                                                mem[_4315 + _3327 + _3351 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4315 + _3327 + _3351 + 37] = msg.sender
                                                mem[_4315 + _3327 + _3351 + 69] = 128
                                                _5140 = mem[_5044]
                                                mem[_4315 + _3327 + _3351 + 165] = mem[_5044]
                                                s = 0
                                                while s < _5140:
                                                    mem[s + _4315 + _3327 + _3351 + 197] = mem[s + _5044 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5140) > _5140:
                                                    mem[_5140 + _4315 + _3327 + _3351 + 197] = 0
                                                mem[_4315 + _3327 + _3351 + 101] = address(arg2)
                                                mem[_4315 + _3327 + _3351 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4315 + _3327 + _3351 + 165 len ceil32(_5140) + 32]
                                        else:
                                            _4316 = mem[_2329]
                                            s = 0
                                            while s < _4316:
                                                mem[s + _3327 + _3351 + 33] = mem[s + _2329 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4316) <= _4316:
                                                _5045 = mem[64]
                                                mem[mem[64]] = _4316 + _3327 + _3351 + -mem[64] + 1
                                                mem[64] = _4316 + _3327 + _3351 + 33
                                                mem[_4316 + _3327 + _3351 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4316 + _3327 + _3351 + 37] = msg.sender
                                                mem[_4316 + _3327 + _3351 + 69] = 128
                                                _5141 = mem[_5045]
                                                mem[_4316 + _3327 + _3351 + 165] = mem[_5045]
                                                s = 0
                                                while s < _5141:
                                                    mem[s + _4316 + _3327 + _3351 + 197] = mem[s + _5045 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5141) > _5141:
                                                    mem[_5141 + _4316 + _3327 + _3351 + 197] = 0
                                                mem[_4316 + _3327 + _3351 + 101] = address(arg2)
                                                mem[_4316 + _3327 + _3351 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4316 + _3327 + _3351 + 165 len ceil32(_5141) + 32]
                                            else:
                                                mem[_4316 + _3327 + _3351 + 33] = 0
                                                _5046 = mem[64]
                                                mem[mem[64]] = _4316 + _3327 + _3351 + -mem[64] + 1
                                                mem[64] = _4316 + _3327 + _3351 + 33
                                                mem[_4316 + _3327 + _3351 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4316 + _3327 + _3351 + 37] = msg.sender
                                                mem[_4316 + _3327 + _3351 + 69] = 128
                                                _5142 = mem[_5046]
                                                mem[_4316 + _3327 + _3351 + 165] = mem[_5046]
                                                s = 0
                                                while s < _5142:
                                                    mem[s + _4316 + _3327 + _3351 + 197] = mem[s + _5046 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5142) > _5142:
                                                    mem[_5142 + _4316 + _3327 + _3351 + 197] = 0
                                                mem[_4316 + _3327 + _3351 + 101] = address(arg2)
                                                mem[_4316 + _3327 + _3351 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4316 + _3327 + _3351 + 165 len ceil32(_5142) + 32]
                                    else:
                                        mem[_2329 + 32 len t] = call.data[calldata.size len t]
                                        u = t
                                        s = idx + 1
                                        while s:
                                            if u < 1:
                                                revert with 0, 17
                                            if 48 > !(s % 10):
                                                revert with 0, 17
                                            if u - 1 >= mem[_2329]:
                                                revert with 0, 50
                                            mem[u + _2329 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                            u = u - 1
                                            s = s / 10
                                            continue 
                                        _3328 = mem[64]
                                        _3352 = mem[128]
                                        s = 0
                                        while s < _3352:
                                            mem[s + _3328 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_3328 + _3352 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_3352) <= _3352:
                                            _4317 = mem[_2329]
                                            s = 0
                                            while s < _4317:
                                                mem[s + _3328 + _3352 + 33] = mem[s + _2329 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4317) <= _4317:
                                                _5047 = mem[64]
                                                mem[mem[64]] = _4317 + _3328 + _3352 + -mem[64] + 1
                                                mem[64] = _4317 + _3328 + _3352 + 33
                                                mem[_4317 + _3328 + _3352 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4317 + _3328 + _3352 + 37] = msg.sender
                                                mem[_4317 + _3328 + _3352 + 69] = 128
                                                _5143 = mem[_5047]
                                                mem[_4317 + _3328 + _3352 + 165] = mem[_5047]
                                                s = 0
                                                while s < _5143:
                                                    mem[s + _4317 + _3328 + _3352 + 197] = mem[s + _5047 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5143) > _5143:
                                                    mem[_5143 + _4317 + _3328 + _3352 + 197] = 0
                                                mem[_4317 + _3328 + _3352 + 101] = address(arg2)
                                                mem[_4317 + _3328 + _3352 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4317 + _3328 + _3352 + 165 len ceil32(_5143) + 32]
                                            else:
                                                mem[_4317 + _3328 + _3352 + 33] = 0
                                                _5048 = mem[64]
                                                mem[mem[64]] = _4317 + _3328 + _3352 + -mem[64] + 1
                                                mem[64] = _4317 + _3328 + _3352 + 33
                                                mem[_4317 + _3328 + _3352 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4317 + _3328 + _3352 + 37] = msg.sender
                                                mem[_4317 + _3328 + _3352 + 69] = 128
                                                _5144 = mem[_5048]
                                                mem[_4317 + _3328 + _3352 + 165] = mem[_5048]
                                                s = 0
                                                while s < _5144:
                                                    mem[s + _4317 + _3328 + _3352 + 197] = mem[s + _5048 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5144) > _5144:
                                                    mem[_5144 + _4317 + _3328 + _3352 + 197] = 0
                                                mem[_4317 + _3328 + _3352 + 101] = address(arg2)
                                                mem[_4317 + _3328 + _3352 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4317 + _3328 + _3352 + 165 len ceil32(_5144) + 32]
                                        else:
                                            _4318 = mem[_2329]
                                            s = 0
                                            while s < _4318:
                                                mem[s + _3328 + _3352 + 33] = mem[s + _2329 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_4318) <= _4318:
                                                _5049 = mem[64]
                                                mem[mem[64]] = _4318 + _3328 + _3352 + -mem[64] + 1
                                                mem[64] = _4318 + _3328 + _3352 + 33
                                                mem[_4318 + _3328 + _3352 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4318 + _3328 + _3352 + 37] = msg.sender
                                                mem[_4318 + _3328 + _3352 + 69] = 128
                                                _5145 = mem[_5049]
                                                mem[_4318 + _3328 + _3352 + 165] = mem[_5049]
                                                s = 0
                                                while s < _5145:
                                                    mem[s + _4318 + _3328 + _3352 + 197] = mem[s + _5049 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5145) > _5145:
                                                    mem[_5145 + _4318 + _3328 + _3352 + 197] = 0
                                                mem[_4318 + _3328 + _3352 + 101] = address(arg2)
                                                mem[_4318 + _3328 + _3352 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4318 + _3328 + _3352 + 165 len ceil32(_5145) + 32]
                                            else:
                                                mem[_4318 + _3328 + _3352 + 33] = 0
                                                _5050 = mem[64]
                                                mem[mem[64]] = _4318 + _3328 + _3352 + -mem[64] + 1
                                                mem[64] = _4318 + _3328 + _3352 + 33
                                                mem[_4318 + _3328 + _3352 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_4318 + _3328 + _3352 + 37] = msg.sender
                                                mem[_4318 + _3328 + _3352 + 69] = 128
                                                _5146 = mem[_5050]
                                                mem[_4318 + _3328 + _3352 + 165] = mem[_5050]
                                                s = 0
                                                while s < _5146:
                                                    mem[s + _4318 + _3328 + _3352 + 197] = mem[s + _5050 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_5146) > _5146:
                                                    mem[_5146 + _4318 + _3328 + _3352 + 197] = 0
                                                mem[_4318 + _3328 + _3352 + 101] = address(arg2)
                                                mem[_4318 + _3328 + _3352 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4318 + _3328 + _3352 + 165 len ceil32(_5146) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not idx + 1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        if uint8(stor28.field_0):
                            if not -arg3:
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < arg3:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if not -idx - 1:
                                        _1648 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1648] = 1
                                        mem[_1648 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _1660 = mem[64]
                                        _1672 = mem[128]
                                        s = 0
                                        while s < _1672:
                                            mem[s + _1660 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_1660 + _1672 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_1672) <= _1672:
                                            _2349 = mem[_1648]
                                            s = 0
                                            while s < _2349:
                                                mem[s + _1660 + _1672 + 33] = mem[s + _1648 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_2349) <= _2349:
                                                _3391 = mem[64]
                                                mem[mem[64]] = _2349 + _1660 + _1672 + -mem[64] + 1
                                                mem[64] = _2349 + _1660 + _1672 + 33
                                                mem[_2349 + _1660 + _1672 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2349 + _1660 + _1672 + 37] = msg.sender
                                                mem[_2349 + _1660 + _1672 + 69] = 128
                                                _3451 = mem[_3391]
                                                mem[_2349 + _1660 + _1672 + 165] = mem[_3391]
                                                s = 0
                                                while s < _3451:
                                                    mem[s + _2349 + _1660 + _1672 + 197] = mem[s + _3391 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3451) > _3451:
                                                    mem[_3451 + _2349 + _1660 + _1672 + 197] = 0
                                                mem[_2349 + _1660 + _1672 + 101] = address(arg2)
                                                mem[_2349 + _1660 + _1672 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2349 + _1660 + _1672 + 165 len ceil32(_3451) + 32]
                                            else:
                                                mem[_2349 + _1660 + _1672 + 33] = 0
                                                _3392 = mem[64]
                                                mem[mem[64]] = _2349 + _1660 + _1672 + -mem[64] + 1
                                                mem[64] = _2349 + _1660 + _1672 + 33
                                                mem[_2349 + _1660 + _1672 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2349 + _1660 + _1672 + 37] = msg.sender
                                                mem[_2349 + _1660 + _1672 + 69] = 128
                                                _3452 = mem[_3392]
                                                mem[_2349 + _1660 + _1672 + 165] = mem[_3392]
                                                s = 0
                                                while s < _3452:
                                                    mem[s + _2349 + _1660 + _1672 + 197] = mem[s + _3392 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3452) > _3452:
                                                    mem[_3452 + _2349 + _1660 + _1672 + 197] = 0
                                                mem[_2349 + _1660 + _1672 + 101] = address(arg2)
                                                mem[_2349 + _1660 + _1672 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2349 + _1660 + _1672 + 165 len ceil32(_3452) + 32]
                                        else:
                                            _2350 = mem[_1648]
                                            s = 0
                                            while s < _2350:
                                                mem[s + _1660 + _1672 + 33] = mem[s + _1648 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_2350) <= _2350:
                                                _3393 = mem[64]
                                                mem[mem[64]] = _2350 + _1660 + _1672 + -mem[64] + 1
                                                mem[64] = _2350 + _1660 + _1672 + 33
                                                mem[_2350 + _1660 + _1672 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2350 + _1660 + _1672 + 37] = msg.sender
                                                mem[_2350 + _1660 + _1672 + 69] = 128
                                                _3453 = mem[_3393]
                                                mem[_2350 + _1660 + _1672 + 165] = mem[_3393]
                                                s = 0
                                                while s < _3453:
                                                    mem[s + _2350 + _1660 + _1672 + 197] = mem[s + _3393 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3453) > _3453:
                                                    mem[_3453 + _2350 + _1660 + _1672 + 197] = 0
                                                mem[_2350 + _1660 + _1672 + 101] = address(arg2)
                                                mem[_2350 + _1660 + _1672 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2350 + _1660 + _1672 + 165 len ceil32(_3453) + 32]
                                            else:
                                                mem[_2350 + _1660 + _1672 + 33] = 0
                                                _3394 = mem[64]
                                                mem[mem[64]] = _2350 + _1660 + _1672 + -mem[64] + 1
                                                mem[64] = _2350 + _1660 + _1672 + 33
                                                mem[_2350 + _1660 + _1672 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2350 + _1660 + _1672 + 37] = msg.sender
                                                mem[_2350 + _1660 + _1672 + 69] = 128
                                                _3454 = mem[_3394]
                                                mem[_2350 + _1660 + _1672 + 165] = mem[_3394]
                                                s = 0
                                                while s < _3454:
                                                    mem[s + _2350 + _1660 + _1672 + 197] = mem[s + _3394 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3454) > _3454:
                                                    mem[_3454 + _2350 + _1660 + _1672 + 197] = 0
                                                mem[_2350 + _1660 + _1672 + 101] = address(arg2)
                                                mem[_2350 + _1660 + _1672 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2350 + _1660 + _1672 + 165 len ceil32(_3454) + 32]
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
                                        _2332 = mem[64]
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
                                                if u - 1 >= mem[_2332]:
                                                    revert with 0, 50
                                                mem[u + _2332 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _3333 = mem[64]
                                            _3357 = mem[128]
                                            s = 0
                                            while s < _3357:
                                                mem[s + _3333 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_3333 + _3357 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_3357) <= _3357:
                                                _4327 = mem[_2332]
                                                s = 0
                                                while s < _4327:
                                                    mem[s + _3333 + _3357 + 33] = mem[s + _2332 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4327) <= _4327:
                                                    _5067 = mem[64]
                                                    mem[mem[64]] = _4327 + _3333 + _3357 + -mem[64] + 1
                                                    mem[64] = _4327 + _3333 + _3357 + 33
                                                    mem[_4327 + _3333 + _3357 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4327 + _3333 + _3357 + 37] = msg.sender
                                                    mem[_4327 + _3333 + _3357 + 69] = 128
                                                    _5163 = mem[_5067]
                                                    mem[_4327 + _3333 + _3357 + 165] = mem[_5067]
                                                    s = 0
                                                    while s < _5163:
                                                        mem[s + _4327 + _3333 + _3357 + 197] = mem[s + _5067 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5163) > _5163:
                                                        mem[_5163 + _4327 + _3333 + _3357 + 197] = 0
                                                    mem[_4327 + _3333 + _3357 + 101] = address(arg2)
                                                    mem[_4327 + _3333 + _3357 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4327 + _3333 + _3357 + 165 len ceil32(_5163) + 32]
                                                else:
                                                    mem[_4327 + _3333 + _3357 + 33] = 0
                                                    _5068 = mem[64]
                                                    mem[mem[64]] = _4327 + _3333 + _3357 + -mem[64] + 1
                                                    mem[64] = _4327 + _3333 + _3357 + 33
                                                    mem[_4327 + _3333 + _3357 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4327 + _3333 + _3357 + 37] = msg.sender
                                                    mem[_4327 + _3333 + _3357 + 69] = 128
                                                    _5164 = mem[_5068]
                                                    mem[_4327 + _3333 + _3357 + 165] = mem[_5068]
                                                    s = 0
                                                    while s < _5164:
                                                        mem[s + _4327 + _3333 + _3357 + 197] = mem[s + _5068 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5164) > _5164:
                                                        mem[_5164 + _4327 + _3333 + _3357 + 197] = 0
                                                    mem[_4327 + _3333 + _3357 + 101] = address(arg2)
                                                    mem[_4327 + _3333 + _3357 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4327 + _3333 + _3357 + 165 len ceil32(_5164) + 32]
                                            else:
                                                _4328 = mem[_2332]
                                                s = 0
                                                while s < _4328:
                                                    mem[s + _3333 + _3357 + 33] = mem[s + _2332 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4328) <= _4328:
                                                    _5069 = mem[64]
                                                    mem[mem[64]] = _4328 + _3333 + _3357 + -mem[64] + 1
                                                    mem[64] = _4328 + _3333 + _3357 + 33
                                                    mem[_4328 + _3333 + _3357 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4328 + _3333 + _3357 + 37] = msg.sender
                                                    mem[_4328 + _3333 + _3357 + 69] = 128
                                                    _5165 = mem[_5069]
                                                    mem[_4328 + _3333 + _3357 + 165] = mem[_5069]
                                                    s = 0
                                                    while s < _5165:
                                                        mem[s + _4328 + _3333 + _3357 + 197] = mem[s + _5069 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5165) > _5165:
                                                        mem[_5165 + _4328 + _3333 + _3357 + 197] = 0
                                                    mem[_4328 + _3333 + _3357 + 101] = address(arg2)
                                                    mem[_4328 + _3333 + _3357 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4328 + _3333 + _3357 + 165 len ceil32(_5165) + 32]
                                                else:
                                                    mem[_4328 + _3333 + _3357 + 33] = 0
                                                    _5070 = mem[64]
                                                    mem[mem[64]] = _4328 + _3333 + _3357 + -mem[64] + 1
                                                    mem[64] = _4328 + _3333 + _3357 + 33
                                                    mem[_4328 + _3333 + _3357 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4328 + _3333 + _3357 + 37] = msg.sender
                                                    mem[_4328 + _3333 + _3357 + 69] = 128
                                                    _5166 = mem[_5070]
                                                    mem[_4328 + _3333 + _3357 + 165] = mem[_5070]
                                                    s = 0
                                                    while s < _5166:
                                                        mem[s + _4328 + _3333 + _3357 + 197] = mem[s + _5070 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5166) > _5166:
                                                        mem[_5166 + _4328 + _3333 + _3357 + 197] = 0
                                                    mem[_4328 + _3333 + _3357 + 101] = address(arg2)
                                                    mem[_4328 + _3333 + _3357 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4328 + _3333 + _3357 + 165 len ceil32(_5166) + 32]
                                        else:
                                            mem[_2332 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_2332]:
                                                    revert with 0, 50
                                                mem[u + _2332 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _3334 = mem[64]
                                            _3358 = mem[128]
                                            s = 0
                                            while s < _3358:
                                                mem[s + _3334 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_3334 + _3358 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_3358) <= _3358:
                                                _4329 = mem[_2332]
                                                s = 0
                                                while s < _4329:
                                                    mem[s + _3334 + _3358 + 33] = mem[s + _2332 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4329) <= _4329:
                                                    _5071 = mem[64]
                                                    mem[mem[64]] = _4329 + _3334 + _3358 + -mem[64] + 1
                                                    mem[64] = _4329 + _3334 + _3358 + 33
                                                    mem[_4329 + _3334 + _3358 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4329 + _3334 + _3358 + 37] = msg.sender
                                                    mem[_4329 + _3334 + _3358 + 69] = 128
                                                    _5167 = mem[_5071]
                                                    mem[_4329 + _3334 + _3358 + 165] = mem[_5071]
                                                    s = 0
                                                    while s < _5167:
                                                        mem[s + _4329 + _3334 + _3358 + 197] = mem[s + _5071 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5167) > _5167:
                                                        mem[_5167 + _4329 + _3334 + _3358 + 197] = 0
                                                    mem[_4329 + _3334 + _3358 + 101] = address(arg2)
                                                    mem[_4329 + _3334 + _3358 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4329 + _3334 + _3358 + 165 len ceil32(_5167) + 32]
                                                else:
                                                    mem[_4329 + _3334 + _3358 + 33] = 0
                                                    _5072 = mem[64]
                                                    mem[mem[64]] = _4329 + _3334 + _3358 + -mem[64] + 1
                                                    mem[64] = _4329 + _3334 + _3358 + 33
                                                    mem[_4329 + _3334 + _3358 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4329 + _3334 + _3358 + 37] = msg.sender
                                                    mem[_4329 + _3334 + _3358 + 69] = 128
                                                    _5168 = mem[_5072]
                                                    mem[_4329 + _3334 + _3358 + 165] = mem[_5072]
                                                    s = 0
                                                    while s < _5168:
                                                        mem[s + _4329 + _3334 + _3358 + 197] = mem[s + _5072 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5168) > _5168:
                                                        mem[_5168 + _4329 + _3334 + _3358 + 197] = 0
                                                    mem[_4329 + _3334 + _3358 + 101] = address(arg2)
                                                    mem[_4329 + _3334 + _3358 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4329 + _3334 + _3358 + 165 len ceil32(_5168) + 32]
                                            else:
                                                _4330 = mem[_2332]
                                                s = 0
                                                while s < _4330:
                                                    mem[s + _3334 + _3358 + 33] = mem[s + _2332 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4330) <= _4330:
                                                    _5073 = mem[64]
                                                    mem[mem[64]] = _4330 + _3334 + _3358 + -mem[64] + 1
                                                    mem[64] = _4330 + _3334 + _3358 + 33
                                                    mem[_4330 + _3334 + _3358 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4330 + _3334 + _3358 + 37] = msg.sender
                                                    mem[_4330 + _3334 + _3358 + 69] = 128
                                                    _5169 = mem[_5073]
                                                    mem[_4330 + _3334 + _3358 + 165] = mem[_5073]
                                                    s = 0
                                                    while s < _5169:
                                                        mem[s + _4330 + _3334 + _3358 + 197] = mem[s + _5073 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5169) > _5169:
                                                        mem[_5169 + _4330 + _3334 + _3358 + 197] = 0
                                                    mem[_4330 + _3334 + _3358 + 101] = address(arg2)
                                                    mem[_4330 + _3334 + _3358 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4330 + _3334 + _3358 + 165 len ceil32(_5169) + 32]
                                                else:
                                                    mem[_4330 + _3334 + _3358 + 33] = 0
                                                    _5074 = mem[64]
                                                    mem[mem[64]] = _4330 + _3334 + _3358 + -mem[64] + 1
                                                    mem[64] = _4330 + _3334 + _3358 + 33
                                                    mem[_4330 + _3334 + _3358 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4330 + _3334 + _3358 + 37] = msg.sender
                                                    mem[_4330 + _3334 + _3358 + 69] = 128
                                                    _5170 = mem[_5074]
                                                    mem[_4330 + _3334 + _3358 + 165] = mem[_5074]
                                                    s = 0
                                                    while s < _5170:
                                                        mem[s + _4330 + _3334 + _3358 + 197] = mem[s + _5074 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5170) > _5170:
                                                        mem[_5170 + _4330 + _3334 + _3358 + 197] = 0
                                                    mem[_4330 + _3334 + _3358 + 101] = address(arg2)
                                                    mem[_4330 + _3334 + _3358 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4330 + _3334 + _3358 + 165 len ceil32(_5170) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not idx + 1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg3 and ext_call.return_data[0] > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < arg3:
                                    if 1 > !idx:
                                        revert with 0, 17
                                    if not -idx - 1:
                                        _1647 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1647] = 1
                                        mem[_1647 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                        _1659 = mem[64]
                                        _1671 = mem[128]
                                        s = 0
                                        while s < _1671:
                                            mem[s + _1659 + 32] = mem[s + 160]
                                            s = s + 32
                                            continue 
                                        mem[_1659 + _1671 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                        if ceil32(_1671) <= _1671:
                                            _2347 = mem[_1647]
                                            s = 0
                                            while s < _2347:
                                                mem[s + _1659 + _1671 + 33] = mem[s + _1647 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_2347) <= _2347:
                                                _3387 = mem[64]
                                                mem[mem[64]] = _2347 + _1659 + _1671 + -mem[64] + 1
                                                mem[64] = _2347 + _1659 + _1671 + 33
                                                mem[_2347 + _1659 + _1671 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2347 + _1659 + _1671 + 37] = msg.sender
                                                mem[_2347 + _1659 + _1671 + 69] = 128
                                                _3445 = mem[_3387]
                                                mem[_2347 + _1659 + _1671 + 165] = mem[_3387]
                                                s = 0
                                                while s < _3445:
                                                    mem[s + _2347 + _1659 + _1671 + 197] = mem[s + _3387 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3445) > _3445:
                                                    mem[_3445 + _2347 + _1659 + _1671 + 197] = 0
                                                mem[_2347 + _1659 + _1671 + 101] = address(arg2)
                                                mem[_2347 + _1659 + _1671 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2347 + _1659 + _1671 + 165 len ceil32(_3445) + 32]
                                            else:
                                                mem[_2347 + _1659 + _1671 + 33] = 0
                                                _3388 = mem[64]
                                                mem[mem[64]] = _2347 + _1659 + _1671 + -mem[64] + 1
                                                mem[64] = _2347 + _1659 + _1671 + 33
                                                mem[_2347 + _1659 + _1671 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2347 + _1659 + _1671 + 37] = msg.sender
                                                mem[_2347 + _1659 + _1671 + 69] = 128
                                                _3446 = mem[_3388]
                                                mem[_2347 + _1659 + _1671 + 165] = mem[_3388]
                                                s = 0
                                                while s < _3446:
                                                    mem[s + _2347 + _1659 + _1671 + 197] = mem[s + _3388 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3446) > _3446:
                                                    mem[_3446 + _2347 + _1659 + _1671 + 197] = 0
                                                mem[_2347 + _1659 + _1671 + 101] = address(arg2)
                                                mem[_2347 + _1659 + _1671 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2347 + _1659 + _1671 + 165 len ceil32(_3446) + 32]
                                        else:
                                            _2348 = mem[_1647]
                                            s = 0
                                            while s < _2348:
                                                mem[s + _1659 + _1671 + 33] = mem[s + _1647 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_2348) <= _2348:
                                                _3389 = mem[64]
                                                mem[mem[64]] = _2348 + _1659 + _1671 + -mem[64] + 1
                                                mem[64] = _2348 + _1659 + _1671 + 33
                                                mem[_2348 + _1659 + _1671 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2348 + _1659 + _1671 + 37] = msg.sender
                                                mem[_2348 + _1659 + _1671 + 69] = 128
                                                _3447 = mem[_3389]
                                                mem[_2348 + _1659 + _1671 + 165] = mem[_3389]
                                                s = 0
                                                while s < _3447:
                                                    mem[s + _2348 + _1659 + _1671 + 197] = mem[s + _3389 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3447) > _3447:
                                                    mem[_3447 + _2348 + _1659 + _1671 + 197] = 0
                                                mem[_2348 + _1659 + _1671 + 101] = address(arg2)
                                                mem[_2348 + _1659 + _1671 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2348 + _1659 + _1671 + 165 len ceil32(_3447) + 32]
                                            else:
                                                mem[_2348 + _1659 + _1671 + 33] = 0
                                                _3390 = mem[64]
                                                mem[mem[64]] = _2348 + _1659 + _1671 + -mem[64] + 1
                                                mem[64] = _2348 + _1659 + _1671 + 33
                                                mem[_2348 + _1659 + _1671 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                mem[_2348 + _1659 + _1671 + 37] = msg.sender
                                                mem[_2348 + _1659 + _1671 + 69] = 128
                                                _3448 = mem[_3390]
                                                mem[_2348 + _1659 + _1671 + 165] = mem[_3390]
                                                s = 0
                                                while s < _3448:
                                                    mem[s + _2348 + _1659 + _1671 + 197] = mem[s + _3390 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_3448) > _3448:
                                                    mem[_3448 + _2348 + _1659 + _1671 + 197] = 0
                                                mem[_2348 + _1659 + _1671 + 101] = address(arg2)
                                                mem[_2348 + _1659 + _1671 + 133] = uint32(arg4)
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                     gas gas_remaining wei
                                                    args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2348 + _1659 + _1671 + 165 len ceil32(_3448) + 32]
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
                                        _2331 = mem[64]
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
                                                if u - 1 >= mem[_2331]:
                                                    revert with 0, 50
                                                mem[u + _2331 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _3331 = mem[64]
                                            _3355 = mem[128]
                                            s = 0
                                            while s < _3355:
                                                mem[s + _3331 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_3331 + _3355 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_3355) <= _3355:
                                                _4323 = mem[_2331]
                                                s = 0
                                                while s < _4323:
                                                    mem[s + _3331 + _3355 + 33] = mem[s + _2331 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4323) <= _4323:
                                                    _5059 = mem[64]
                                                    mem[mem[64]] = _4323 + _3331 + _3355 + -mem[64] + 1
                                                    mem[64] = _4323 + _3331 + _3355 + 33
                                                    mem[_4323 + _3331 + _3355 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4323 + _3331 + _3355 + 37] = msg.sender
                                                    mem[_4323 + _3331 + _3355 + 69] = 128
                                                    _5155 = mem[_5059]
                                                    mem[_4323 + _3331 + _3355 + 165] = mem[_5059]
                                                    s = 0
                                                    while s < _5155:
                                                        mem[s + _4323 + _3331 + _3355 + 197] = mem[s + _5059 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5155) > _5155:
                                                        mem[_5155 + _4323 + _3331 + _3355 + 197] = 0
                                                    mem[_4323 + _3331 + _3355 + 101] = address(arg2)
                                                    mem[_4323 + _3331 + _3355 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4323 + _3331 + _3355 + 165 len ceil32(_5155) + 32]
                                                else:
                                                    mem[_4323 + _3331 + _3355 + 33] = 0
                                                    _5060 = mem[64]
                                                    mem[mem[64]] = _4323 + _3331 + _3355 + -mem[64] + 1
                                                    mem[64] = _4323 + _3331 + _3355 + 33
                                                    mem[_4323 + _3331 + _3355 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4323 + _3331 + _3355 + 37] = msg.sender
                                                    mem[_4323 + _3331 + _3355 + 69] = 128
                                                    _5156 = mem[_5060]
                                                    mem[_4323 + _3331 + _3355 + 165] = mem[_5060]
                                                    s = 0
                                                    while s < _5156:
                                                        mem[s + _4323 + _3331 + _3355 + 197] = mem[s + _5060 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5156) > _5156:
                                                        mem[_5156 + _4323 + _3331 + _3355 + 197] = 0
                                                    mem[_4323 + _3331 + _3355 + 101] = address(arg2)
                                                    mem[_4323 + _3331 + _3355 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4323 + _3331 + _3355 + 165 len ceil32(_5156) + 32]
                                            else:
                                                _4324 = mem[_2331]
                                                s = 0
                                                while s < _4324:
                                                    mem[s + _3331 + _3355 + 33] = mem[s + _2331 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4324) <= _4324:
                                                    _5061 = mem[64]
                                                    mem[mem[64]] = _4324 + _3331 + _3355 + -mem[64] + 1
                                                    mem[64] = _4324 + _3331 + _3355 + 33
                                                    mem[_4324 + _3331 + _3355 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4324 + _3331 + _3355 + 37] = msg.sender
                                                    mem[_4324 + _3331 + _3355 + 69] = 128
                                                    _5157 = mem[_5061]
                                                    mem[_4324 + _3331 + _3355 + 165] = mem[_5061]
                                                    s = 0
                                                    while s < _5157:
                                                        mem[s + _4324 + _3331 + _3355 + 197] = mem[s + _5061 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5157) > _5157:
                                                        mem[_5157 + _4324 + _3331 + _3355 + 197] = 0
                                                    mem[_4324 + _3331 + _3355 + 101] = address(arg2)
                                                    mem[_4324 + _3331 + _3355 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4324 + _3331 + _3355 + 165 len ceil32(_5157) + 32]
                                                else:
                                                    mem[_4324 + _3331 + _3355 + 33] = 0
                                                    _5062 = mem[64]
                                                    mem[mem[64]] = _4324 + _3331 + _3355 + -mem[64] + 1
                                                    mem[64] = _4324 + _3331 + _3355 + 33
                                                    mem[_4324 + _3331 + _3355 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4324 + _3331 + _3355 + 37] = msg.sender
                                                    mem[_4324 + _3331 + _3355 + 69] = 128
                                                    _5158 = mem[_5062]
                                                    mem[_4324 + _3331 + _3355 + 165] = mem[_5062]
                                                    s = 0
                                                    while s < _5158:
                                                        mem[s + _4324 + _3331 + _3355 + 197] = mem[s + _5062 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5158) > _5158:
                                                        mem[_5158 + _4324 + _3331 + _3355 + 197] = 0
                                                    mem[_4324 + _3331 + _3355 + 101] = address(arg2)
                                                    mem[_4324 + _3331 + _3355 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4324 + _3331 + _3355 + 165 len ceil32(_5158) + 32]
                                        else:
                                            mem[_2331 + 32 len t] = call.data[calldata.size len t]
                                            u = t
                                            s = idx + 1
                                            while s:
                                                if u < 1:
                                                    revert with 0, 17
                                                if 48 > !(s % 10):
                                                    revert with 0, 17
                                                if u - 1 >= mem[_2331]:
                                                    revert with 0, 50
                                                mem[u + _2331 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                u = u - 1
                                                s = s / 10
                                                continue 
                                            _3332 = mem[64]
                                            _3356 = mem[128]
                                            s = 0
                                            while s < _3356:
                                                mem[s + _3332 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_3332 + _3356 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_3356) <= _3356:
                                                _4325 = mem[_2331]
                                                s = 0
                                                while s < _4325:
                                                    mem[s + _3332 + _3356 + 33] = mem[s + _2331 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4325) <= _4325:
                                                    _5063 = mem[64]
                                                    mem[mem[64]] = _4325 + _3332 + _3356 + -mem[64] + 1
                                                    mem[64] = _4325 + _3332 + _3356 + 33
                                                    mem[_4325 + _3332 + _3356 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4325 + _3332 + _3356 + 37] = msg.sender
                                                    mem[_4325 + _3332 + _3356 + 69] = 128
                                                    _5159 = mem[_5063]
                                                    mem[_4325 + _3332 + _3356 + 165] = mem[_5063]
                                                    s = 0
                                                    while s < _5159:
                                                        mem[s + _4325 + _3332 + _3356 + 197] = mem[s + _5063 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5159) > _5159:
                                                        mem[_5159 + _4325 + _3332 + _3356 + 197] = 0
                                                    mem[_4325 + _3332 + _3356 + 101] = address(arg2)
                                                    mem[_4325 + _3332 + _3356 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4325 + _3332 + _3356 + 165 len ceil32(_5159) + 32]
                                                else:
                                                    mem[_4325 + _3332 + _3356 + 33] = 0
                                                    _5064 = mem[64]
                                                    mem[mem[64]] = _4325 + _3332 + _3356 + -mem[64] + 1
                                                    mem[64] = _4325 + _3332 + _3356 + 33
                                                    mem[_4325 + _3332 + _3356 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4325 + _3332 + _3356 + 37] = msg.sender
                                                    mem[_4325 + _3332 + _3356 + 69] = 128
                                                    _5160 = mem[_5064]
                                                    mem[_4325 + _3332 + _3356 + 165] = mem[_5064]
                                                    s = 0
                                                    while s < _5160:
                                                        mem[s + _4325 + _3332 + _3356 + 197] = mem[s + _5064 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5160) > _5160:
                                                        mem[_5160 + _4325 + _3332 + _3356 + 197] = 0
                                                    mem[_4325 + _3332 + _3356 + 101] = address(arg2)
                                                    mem[_4325 + _3332 + _3356 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4325 + _3332 + _3356 + 165 len ceil32(_5160) + 32]
                                            else:
                                                _4326 = mem[_2331]
                                                s = 0
                                                while s < _4326:
                                                    mem[s + _3332 + _3356 + 33] = mem[s + _2331 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_4326) <= _4326:
                                                    _5065 = mem[64]
                                                    mem[mem[64]] = _4326 + _3332 + _3356 + -mem[64] + 1
                                                    mem[64] = _4326 + _3332 + _3356 + 33
                                                    mem[_4326 + _3332 + _3356 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4326 + _3332 + _3356 + 37] = msg.sender
                                                    mem[_4326 + _3332 + _3356 + 69] = 128
                                                    _5161 = mem[_5065]
                                                    mem[_4326 + _3332 + _3356 + 165] = mem[_5065]
                                                    s = 0
                                                    while s < _5161:
                                                        mem[s + _4326 + _3332 + _3356 + 197] = mem[s + _5065 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5161) > _5161:
                                                        mem[_5161 + _4326 + _3332 + _3356 + 197] = 0
                                                    mem[_4326 + _3332 + _3356 + 101] = address(arg2)
                                                    mem[_4326 + _3332 + _3356 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4326 + _3332 + _3356 + 165 len ceil32(_5161) + 32]
                                                else:
                                                    mem[_4326 + _3332 + _3356 + 33] = 0
                                                    _5066 = mem[64]
                                                    mem[mem[64]] = _4326 + _3332 + _3356 + -mem[64] + 1
                                                    mem[64] = _4326 + _3332 + _3356 + 33
                                                    mem[_4326 + _3332 + _3356 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_4326 + _3332 + _3356 + 37] = msg.sender
                                                    mem[_4326 + _3332 + _3356 + 69] = 128
                                                    _5162 = mem[_5066]
                                                    mem[_4326 + _3332 + _3356 + 165] = mem[_5066]
                                                    s = 0
                                                    while s < _5162:
                                                        mem[s + _4326 + _3332 + _3356 + 197] = mem[s + _5066 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_5162) > _5162:
                                                        mem[_5162 + _4326 + _3332 + _3356 + 197] = 0
                                                    mem[_4326 + _3332 + _3356 + 101] = address(arg2)
                                                    mem[_4326 + _3332 + _3356 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4326 + _3332 + _3356 + 165 len ceil32(_5162) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not idx + 1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if owner == msg.sender:
                                if not -arg3:
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    while idx < arg3:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _1650 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1650] = 1
                                            mem[_1650 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _1662 = mem[64]
                                            _1674 = mem[128]
                                            s = 0
                                            while s < _1674:
                                                mem[s + _1662 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_1662 + _1674 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_1674) <= _1674:
                                                _2353 = mem[_1650]
                                                s = 0
                                                while s < _2353:
                                                    mem[s + _1662 + _1674 + 33] = mem[s + _1650 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2353) <= _2353:
                                                    _3399 = mem[64]
                                                    mem[mem[64]] = _2353 + _1662 + _1674 + -mem[64] + 1
                                                    mem[64] = _2353 + _1662 + _1674 + 33
                                                    mem[_2353 + _1662 + _1674 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2353 + _1662 + _1674 + 37] = msg.sender
                                                    mem[_2353 + _1662 + _1674 + 69] = 128
                                                    _3463 = mem[_3399]
                                                    mem[_2353 + _1662 + _1674 + 165] = mem[_3399]
                                                    s = 0
                                                    while s < _3463:
                                                        mem[s + _2353 + _1662 + _1674 + 197] = mem[s + _3399 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3463) > _3463:
                                                        mem[_3463 + _2353 + _1662 + _1674 + 197] = 0
                                                    mem[_2353 + _1662 + _1674 + 101] = address(arg2)
                                                    mem[_2353 + _1662 + _1674 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2353 + _1662 + _1674 + 165 len ceil32(_3463) + 32]
                                                else:
                                                    mem[_2353 + _1662 + _1674 + 33] = 0
                                                    _3400 = mem[64]
                                                    mem[mem[64]] = _2353 + _1662 + _1674 + -mem[64] + 1
                                                    mem[64] = _2353 + _1662 + _1674 + 33
                                                    mem[_2353 + _1662 + _1674 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2353 + _1662 + _1674 + 37] = msg.sender
                                                    mem[_2353 + _1662 + _1674 + 69] = 128
                                                    _3464 = mem[_3400]
                                                    mem[_2353 + _1662 + _1674 + 165] = mem[_3400]
                                                    s = 0
                                                    while s < _3464:
                                                        mem[s + _2353 + _1662 + _1674 + 197] = mem[s + _3400 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3464) > _3464:
                                                        mem[_3464 + _2353 + _1662 + _1674 + 197] = 0
                                                    mem[_2353 + _1662 + _1674 + 101] = address(arg2)
                                                    mem[_2353 + _1662 + _1674 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2353 + _1662 + _1674 + 165 len ceil32(_3464) + 32]
                                            else:
                                                _2354 = mem[_1650]
                                                s = 0
                                                while s < _2354:
                                                    mem[s + _1662 + _1674 + 33] = mem[s + _1650 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2354) <= _2354:
                                                    _3401 = mem[64]
                                                    mem[mem[64]] = _2354 + _1662 + _1674 + -mem[64] + 1
                                                    mem[64] = _2354 + _1662 + _1674 + 33
                                                    mem[_2354 + _1662 + _1674 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2354 + _1662 + _1674 + 37] = msg.sender
                                                    mem[_2354 + _1662 + _1674 + 69] = 128
                                                    _3465 = mem[_3401]
                                                    mem[_2354 + _1662 + _1674 + 165] = mem[_3401]
                                                    s = 0
                                                    while s < _3465:
                                                        mem[s + _2354 + _1662 + _1674 + 197] = mem[s + _3401 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3465) > _3465:
                                                        mem[_3465 + _2354 + _1662 + _1674 + 197] = 0
                                                    mem[_2354 + _1662 + _1674 + 101] = address(arg2)
                                                    mem[_2354 + _1662 + _1674 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2354 + _1662 + _1674 + 165 len ceil32(_3465) + 32]
                                                else:
                                                    mem[_2354 + _1662 + _1674 + 33] = 0
                                                    _3402 = mem[64]
                                                    mem[mem[64]] = _2354 + _1662 + _1674 + -mem[64] + 1
                                                    mem[64] = _2354 + _1662 + _1674 + 33
                                                    mem[_2354 + _1662 + _1674 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2354 + _1662 + _1674 + 37] = msg.sender
                                                    mem[_2354 + _1662 + _1674 + 69] = 128
                                                    _3466 = mem[_3402]
                                                    mem[_2354 + _1662 + _1674 + 165] = mem[_3402]
                                                    s = 0
                                                    while s < _3466:
                                                        mem[s + _2354 + _1662 + _1674 + 197] = mem[s + _3402 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3466) > _3466:
                                                        mem[_3466 + _2354 + _1662 + _1674 + 197] = 0
                                                    mem[_2354 + _1662 + _1674 + 101] = address(arg2)
                                                    mem[_2354 + _1662 + _1674 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2354 + _1662 + _1674 + 165 len ceil32(_3466) + 32]
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
                                            _2334 = mem[64]
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
                                                    if u - 1 >= mem[_2334]:
                                                        revert with 0, 50
                                                    mem[u + _2334 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _3337 = mem[64]
                                                _3361 = mem[128]
                                                s = 0
                                                while s < _3361:
                                                    mem[s + _3337 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_3337 + _3361 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_3361) <= _3361:
                                                    _4335 = mem[_2334]
                                                    s = 0
                                                    while s < _4335:
                                                        mem[s + _3337 + _3361 + 33] = mem[s + _2334 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4335) <= _4335:
                                                        _5083 = mem[64]
                                                        mem[mem[64]] = _4335 + _3337 + _3361 + -mem[64] + 1
                                                        mem[64] = _4335 + _3337 + _3361 + 33
                                                        mem[_4335 + _3337 + _3361 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4335 + _3337 + _3361 + 37] = msg.sender
                                                        mem[_4335 + _3337 + _3361 + 69] = 128
                                                        _5179 = mem[_5083]
                                                        mem[_4335 + _3337 + _3361 + 165] = mem[_5083]
                                                        s = 0
                                                        while s < _5179:
                                                            mem[s + _4335 + _3337 + _3361 + 197] = mem[s + _5083 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5179) > _5179:
                                                            mem[_5179 + _4335 + _3337 + _3361 + 197] = 0
                                                        mem[_4335 + _3337 + _3361 + 101] = address(arg2)
                                                        mem[_4335 + _3337 + _3361 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4335 + _3337 + _3361 + 165 len ceil32(_5179) + 32]
                                                    else:
                                                        mem[_4335 + _3337 + _3361 + 33] = 0
                                                        _5084 = mem[64]
                                                        mem[mem[64]] = _4335 + _3337 + _3361 + -mem[64] + 1
                                                        mem[64] = _4335 + _3337 + _3361 + 33
                                                        mem[_4335 + _3337 + _3361 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4335 + _3337 + _3361 + 37] = msg.sender
                                                        mem[_4335 + _3337 + _3361 + 69] = 128
                                                        _5180 = mem[_5084]
                                                        mem[_4335 + _3337 + _3361 + 165] = mem[_5084]
                                                        s = 0
                                                        while s < _5180:
                                                            mem[s + _4335 + _3337 + _3361 + 197] = mem[s + _5084 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5180) > _5180:
                                                            mem[_5180 + _4335 + _3337 + _3361 + 197] = 0
                                                        mem[_4335 + _3337 + _3361 + 101] = address(arg2)
                                                        mem[_4335 + _3337 + _3361 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4335 + _3337 + _3361 + 165 len ceil32(_5180) + 32]
                                                else:
                                                    _4336 = mem[_2334]
                                                    s = 0
                                                    while s < _4336:
                                                        mem[s + _3337 + _3361 + 33] = mem[s + _2334 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4336) <= _4336:
                                                        _5085 = mem[64]
                                                        mem[mem[64]] = _4336 + _3337 + _3361 + -mem[64] + 1
                                                        mem[64] = _4336 + _3337 + _3361 + 33
                                                        mem[_4336 + _3337 + _3361 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4336 + _3337 + _3361 + 37] = msg.sender
                                                        mem[_4336 + _3337 + _3361 + 69] = 128
                                                        _5181 = mem[_5085]
                                                        mem[_4336 + _3337 + _3361 + 165] = mem[_5085]
                                                        s = 0
                                                        while s < _5181:
                                                            mem[s + _4336 + _3337 + _3361 + 197] = mem[s + _5085 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5181) > _5181:
                                                            mem[_5181 + _4336 + _3337 + _3361 + 197] = 0
                                                        mem[_4336 + _3337 + _3361 + 101] = address(arg2)
                                                        mem[_4336 + _3337 + _3361 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4336 + _3337 + _3361 + 165 len ceil32(_5181) + 32]
                                                    else:
                                                        mem[_4336 + _3337 + _3361 + 33] = 0
                                                        _5086 = mem[64]
                                                        mem[mem[64]] = _4336 + _3337 + _3361 + -mem[64] + 1
                                                        mem[64] = _4336 + _3337 + _3361 + 33
                                                        mem[_4336 + _3337 + _3361 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4336 + _3337 + _3361 + 37] = msg.sender
                                                        mem[_4336 + _3337 + _3361 + 69] = 128
                                                        _5182 = mem[_5086]
                                                        mem[_4336 + _3337 + _3361 + 165] = mem[_5086]
                                                        s = 0
                                                        while s < _5182:
                                                            mem[s + _4336 + _3337 + _3361 + 197] = mem[s + _5086 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5182) > _5182:
                                                            mem[_5182 + _4336 + _3337 + _3361 + 197] = 0
                                                        mem[_4336 + _3337 + _3361 + 101] = address(arg2)
                                                        mem[_4336 + _3337 + _3361 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4336 + _3337 + _3361 + 165 len ceil32(_5182) + 32]
                                            else:
                                                mem[_2334 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_2334]:
                                                        revert with 0, 50
                                                    mem[u + _2334 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _3338 = mem[64]
                                                _3362 = mem[128]
                                                s = 0
                                                while s < _3362:
                                                    mem[s + _3338 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_3338 + _3362 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_3362) <= _3362:
                                                    _4337 = mem[_2334]
                                                    s = 0
                                                    while s < _4337:
                                                        mem[s + _3338 + _3362 + 33] = mem[s + _2334 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4337) <= _4337:
                                                        _5087 = mem[64]
                                                        mem[mem[64]] = _4337 + _3338 + _3362 + -mem[64] + 1
                                                        mem[64] = _4337 + _3338 + _3362 + 33
                                                        mem[_4337 + _3338 + _3362 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4337 + _3338 + _3362 + 37] = msg.sender
                                                        mem[_4337 + _3338 + _3362 + 69] = 128
                                                        _5183 = mem[_5087]
                                                        mem[_4337 + _3338 + _3362 + 165] = mem[_5087]
                                                        s = 0
                                                        while s < _5183:
                                                            mem[s + _4337 + _3338 + _3362 + 197] = mem[s + _5087 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5183) > _5183:
                                                            mem[_5183 + _4337 + _3338 + _3362 + 197] = 0
                                                        mem[_4337 + _3338 + _3362 + 101] = address(arg2)
                                                        mem[_4337 + _3338 + _3362 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4337 + _3338 + _3362 + 165 len ceil32(_5183) + 32]
                                                    else:
                                                        mem[_4337 + _3338 + _3362 + 33] = 0
                                                        _5088 = mem[64]
                                                        mem[mem[64]] = _4337 + _3338 + _3362 + -mem[64] + 1
                                                        mem[64] = _4337 + _3338 + _3362 + 33
                                                        mem[_4337 + _3338 + _3362 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4337 + _3338 + _3362 + 37] = msg.sender
                                                        mem[_4337 + _3338 + _3362 + 69] = 128
                                                        _5184 = mem[_5088]
                                                        mem[_4337 + _3338 + _3362 + 165] = mem[_5088]
                                                        s = 0
                                                        while s < _5184:
                                                            mem[s + _4337 + _3338 + _3362 + 197] = mem[s + _5088 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5184) > _5184:
                                                            mem[_5184 + _4337 + _3338 + _3362 + 197] = 0
                                                        mem[_4337 + _3338 + _3362 + 101] = address(arg2)
                                                        mem[_4337 + _3338 + _3362 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4337 + _3338 + _3362 + 165 len ceil32(_5184) + 32]
                                                else:
                                                    _4338 = mem[_2334]
                                                    s = 0
                                                    while s < _4338:
                                                        mem[s + _3338 + _3362 + 33] = mem[s + _2334 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4338) <= _4338:
                                                        _5089 = mem[64]
                                                        mem[mem[64]] = _4338 + _3338 + _3362 + -mem[64] + 1
                                                        mem[64] = _4338 + _3338 + _3362 + 33
                                                        mem[_4338 + _3338 + _3362 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4338 + _3338 + _3362 + 37] = msg.sender
                                                        mem[_4338 + _3338 + _3362 + 69] = 128
                                                        _5185 = mem[_5089]
                                                        mem[_4338 + _3338 + _3362 + 165] = mem[_5089]
                                                        s = 0
                                                        while s < _5185:
                                                            mem[s + _4338 + _3338 + _3362 + 197] = mem[s + _5089 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5185) > _5185:
                                                            mem[_5185 + _4338 + _3338 + _3362 + 197] = 0
                                                        mem[_4338 + _3338 + _3362 + 101] = address(arg2)
                                                        mem[_4338 + _3338 + _3362 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4338 + _3338 + _3362 + 165 len ceil32(_5185) + 32]
                                                    else:
                                                        mem[_4338 + _3338 + _3362 + 33] = 0
                                                        _5090 = mem[64]
                                                        mem[mem[64]] = _4338 + _3338 + _3362 + -mem[64] + 1
                                                        mem[64] = _4338 + _3338 + _3362 + 33
                                                        mem[_4338 + _3338 + _3362 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4338 + _3338 + _3362 + 37] = msg.sender
                                                        mem[_4338 + _3338 + _3362 + 69] = 128
                                                        _5186 = mem[_5090]
                                                        mem[_4338 + _3338 + _3362 + 165] = mem[_5090]
                                                        s = 0
                                                        while s < _5186:
                                                            mem[s + _4338 + _3338 + _3362 + 197] = mem[s + _5090 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5186) > _5186:
                                                            mem[_5186 + _4338 + _3338 + _3362 + 197] = 0
                                                        mem[_4338 + _3338 + _3362 + 101] = address(arg2)
                                                        mem[_4338 + _3338 + _3362 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4338 + _3338 + _3362 + 165 len ceil32(_5186) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not idx + 1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                                    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    while idx < arg3:
                                        if 1 > !idx:
                                            revert with 0, 17
                                        if not -idx - 1:
                                            _1649 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1649] = 1
                                            mem[_1649 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                            _1661 = mem[64]
                                            _1673 = mem[128]
                                            s = 0
                                            while s < _1673:
                                                mem[s + _1661 + 32] = mem[s + 160]
                                                s = s + 32
                                                continue 
                                            mem[_1661 + _1673 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                            if ceil32(_1673) <= _1673:
                                                _2351 = mem[_1649]
                                                s = 0
                                                while s < _2351:
                                                    mem[s + _1661 + _1673 + 33] = mem[s + _1649 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2351) <= _2351:
                                                    _3395 = mem[64]
                                                    mem[mem[64]] = _2351 + _1661 + _1673 + -mem[64] + 1
                                                    mem[64] = _2351 + _1661 + _1673 + 33
                                                    mem[_2351 + _1661 + _1673 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2351 + _1661 + _1673 + 37] = msg.sender
                                                    mem[_2351 + _1661 + _1673 + 69] = 128
                                                    _3457 = mem[_3395]
                                                    mem[_2351 + _1661 + _1673 + 165] = mem[_3395]
                                                    s = 0
                                                    while s < _3457:
                                                        mem[s + _2351 + _1661 + _1673 + 197] = mem[s + _3395 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3457) > _3457:
                                                        mem[_3457 + _2351 + _1661 + _1673 + 197] = 0
                                                    mem[_2351 + _1661 + _1673 + 101] = address(arg2)
                                                    mem[_2351 + _1661 + _1673 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2351 + _1661 + _1673 + 165 len ceil32(_3457) + 32]
                                                else:
                                                    mem[_2351 + _1661 + _1673 + 33] = 0
                                                    _3396 = mem[64]
                                                    mem[mem[64]] = _2351 + _1661 + _1673 + -mem[64] + 1
                                                    mem[64] = _2351 + _1661 + _1673 + 33
                                                    mem[_2351 + _1661 + _1673 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2351 + _1661 + _1673 + 37] = msg.sender
                                                    mem[_2351 + _1661 + _1673 + 69] = 128
                                                    _3458 = mem[_3396]
                                                    mem[_2351 + _1661 + _1673 + 165] = mem[_3396]
                                                    s = 0
                                                    while s < _3458:
                                                        mem[s + _2351 + _1661 + _1673 + 197] = mem[s + _3396 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3458) > _3458:
                                                        mem[_3458 + _2351 + _1661 + _1673 + 197] = 0
                                                    mem[_2351 + _1661 + _1673 + 101] = address(arg2)
                                                    mem[_2351 + _1661 + _1673 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2351 + _1661 + _1673 + 165 len ceil32(_3458) + 32]
                                            else:
                                                _2352 = mem[_1649]
                                                s = 0
                                                while s < _2352:
                                                    mem[s + _1661 + _1673 + 33] = mem[s + _1649 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(_2352) <= _2352:
                                                    _3397 = mem[64]
                                                    mem[mem[64]] = _2352 + _1661 + _1673 + -mem[64] + 1
                                                    mem[64] = _2352 + _1661 + _1673 + 33
                                                    mem[_2352 + _1661 + _1673 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2352 + _1661 + _1673 + 37] = msg.sender
                                                    mem[_2352 + _1661 + _1673 + 69] = 128
                                                    _3459 = mem[_3397]
                                                    mem[_2352 + _1661 + _1673 + 165] = mem[_3397]
                                                    s = 0
                                                    while s < _3459:
                                                        mem[s + _2352 + _1661 + _1673 + 197] = mem[s + _3397 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3459) > _3459:
                                                        mem[_3459 + _2352 + _1661 + _1673 + 197] = 0
                                                    mem[_2352 + _1661 + _1673 + 101] = address(arg2)
                                                    mem[_2352 + _1661 + _1673 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2352 + _1661 + _1673 + 165 len ceil32(_3459) + 32]
                                                else:
                                                    mem[_2352 + _1661 + _1673 + 33] = 0
                                                    _3398 = mem[64]
                                                    mem[mem[64]] = _2352 + _1661 + _1673 + -mem[64] + 1
                                                    mem[64] = _2352 + _1661 + _1673 + 33
                                                    mem[_2352 + _1661 + _1673 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                    mem[_2352 + _1661 + _1673 + 37] = msg.sender
                                                    mem[_2352 + _1661 + _1673 + 69] = 128
                                                    _3460 = mem[_3398]
                                                    mem[_2352 + _1661 + _1673 + 165] = mem[_3398]
                                                    s = 0
                                                    while s < _3460:
                                                        mem[s + _2352 + _1661 + _1673 + 197] = mem[s + _3398 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_3460) > _3460:
                                                        mem[_3460 + _2352 + _1661 + _1673 + 197] = 0
                                                    mem[_2352 + _1661 + _1673 + 101] = address(arg2)
                                                    mem[_2352 + _1661 + _1673 + 133] = uint32(arg4)
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                         gas gas_remaining wei
                                                        args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2352 + _1661 + _1673 + 165 len ceil32(_3460) + 32]
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
                                            _2333 = mem[64]
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
                                                    if u - 1 >= mem[_2333]:
                                                        revert with 0, 50
                                                    mem[u + _2333 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _3335 = mem[64]
                                                _3359 = mem[128]
                                                s = 0
                                                while s < _3359:
                                                    mem[s + _3335 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_3335 + _3359 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_3359) <= _3359:
                                                    _4331 = mem[_2333]
                                                    s = 0
                                                    while s < _4331:
                                                        mem[s + _3335 + _3359 + 33] = mem[s + _2333 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4331) <= _4331:
                                                        _5075 = mem[64]
                                                        mem[mem[64]] = _4331 + _3335 + _3359 + -mem[64] + 1
                                                        mem[64] = _4331 + _3335 + _3359 + 33
                                                        mem[_4331 + _3335 + _3359 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4331 + _3335 + _3359 + 37] = msg.sender
                                                        mem[_4331 + _3335 + _3359 + 69] = 128
                                                        _5171 = mem[_5075]
                                                        mem[_4331 + _3335 + _3359 + 165] = mem[_5075]
                                                        s = 0
                                                        while s < _5171:
                                                            mem[s + _4331 + _3335 + _3359 + 197] = mem[s + _5075 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5171) > _5171:
                                                            mem[_5171 + _4331 + _3335 + _3359 + 197] = 0
                                                        mem[_4331 + _3335 + _3359 + 101] = address(arg2)
                                                        mem[_4331 + _3335 + _3359 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4331 + _3335 + _3359 + 165 len ceil32(_5171) + 32]
                                                    else:
                                                        mem[_4331 + _3335 + _3359 + 33] = 0
                                                        _5076 = mem[64]
                                                        mem[mem[64]] = _4331 + _3335 + _3359 + -mem[64] + 1
                                                        mem[64] = _4331 + _3335 + _3359 + 33
                                                        mem[_4331 + _3335 + _3359 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4331 + _3335 + _3359 + 37] = msg.sender
                                                        mem[_4331 + _3335 + _3359 + 69] = 128
                                                        _5172 = mem[_5076]
                                                        mem[_4331 + _3335 + _3359 + 165] = mem[_5076]
                                                        s = 0
                                                        while s < _5172:
                                                            mem[s + _4331 + _3335 + _3359 + 197] = mem[s + _5076 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5172) > _5172:
                                                            mem[_5172 + _4331 + _3335 + _3359 + 197] = 0
                                                        mem[_4331 + _3335 + _3359 + 101] = address(arg2)
                                                        mem[_4331 + _3335 + _3359 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4331 + _3335 + _3359 + 165 len ceil32(_5172) + 32]
                                                else:
                                                    _4332 = mem[_2333]
                                                    s = 0
                                                    while s < _4332:
                                                        mem[s + _3335 + _3359 + 33] = mem[s + _2333 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4332) <= _4332:
                                                        _5077 = mem[64]
                                                        mem[mem[64]] = _4332 + _3335 + _3359 + -mem[64] + 1
                                                        mem[64] = _4332 + _3335 + _3359 + 33
                                                        mem[_4332 + _3335 + _3359 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4332 + _3335 + _3359 + 37] = msg.sender
                                                        mem[_4332 + _3335 + _3359 + 69] = 128
                                                        _5173 = mem[_5077]
                                                        mem[_4332 + _3335 + _3359 + 165] = mem[_5077]
                                                        s = 0
                                                        while s < _5173:
                                                            mem[s + _4332 + _3335 + _3359 + 197] = mem[s + _5077 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5173) > _5173:
                                                            mem[_5173 + _4332 + _3335 + _3359 + 197] = 0
                                                        mem[_4332 + _3335 + _3359 + 101] = address(arg2)
                                                        mem[_4332 + _3335 + _3359 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4332 + _3335 + _3359 + 165 len ceil32(_5173) + 32]
                                                    else:
                                                        mem[_4332 + _3335 + _3359 + 33] = 0
                                                        _5078 = mem[64]
                                                        mem[mem[64]] = _4332 + _3335 + _3359 + -mem[64] + 1
                                                        mem[64] = _4332 + _3335 + _3359 + 33
                                                        mem[_4332 + _3335 + _3359 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4332 + _3335 + _3359 + 37] = msg.sender
                                                        mem[_4332 + _3335 + _3359 + 69] = 128
                                                        _5174 = mem[_5078]
                                                        mem[_4332 + _3335 + _3359 + 165] = mem[_5078]
                                                        s = 0
                                                        while s < _5174:
                                                            mem[s + _4332 + _3335 + _3359 + 197] = mem[s + _5078 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5174) > _5174:
                                                            mem[_5174 + _4332 + _3335 + _3359 + 197] = 0
                                                        mem[_4332 + _3335 + _3359 + 101] = address(arg2)
                                                        mem[_4332 + _3335 + _3359 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4332 + _3335 + _3359 + 165 len ceil32(_5174) + 32]
                                            else:
                                                mem[_2333 + 32 len t] = call.data[calldata.size len t]
                                                u = t
                                                s = idx + 1
                                                while s:
                                                    if u < 1:
                                                        revert with 0, 17
                                                    if 48 > !(s % 10):
                                                        revert with 0, 17
                                                    if u - 1 >= mem[_2333]:
                                                        revert with 0, 50
                                                    mem[u + _2333 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                    u = u - 1
                                                    s = s / 10
                                                    continue 
                                                _3336 = mem[64]
                                                _3360 = mem[128]
                                                s = 0
                                                while s < _3360:
                                                    mem[s + _3336 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_3336 + _3360 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_3360) <= _3360:
                                                    _4333 = mem[_2333]
                                                    s = 0
                                                    while s < _4333:
                                                        mem[s + _3336 + _3360 + 33] = mem[s + _2333 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4333) <= _4333:
                                                        _5079 = mem[64]
                                                        mem[mem[64]] = _4333 + _3336 + _3360 + -mem[64] + 1
                                                        mem[64] = _4333 + _3336 + _3360 + 33
                                                        mem[_4333 + _3336 + _3360 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4333 + _3336 + _3360 + 37] = msg.sender
                                                        mem[_4333 + _3336 + _3360 + 69] = 128
                                                        _5175 = mem[_5079]
                                                        mem[_4333 + _3336 + _3360 + 165] = mem[_5079]
                                                        s = 0
                                                        while s < _5175:
                                                            mem[s + _4333 + _3336 + _3360 + 197] = mem[s + _5079 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5175) > _5175:
                                                            mem[_5175 + _4333 + _3336 + _3360 + 197] = 0
                                                        mem[_4333 + _3336 + _3360 + 101] = address(arg2)
                                                        mem[_4333 + _3336 + _3360 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4333 + _3336 + _3360 + 165 len ceil32(_5175) + 32]
                                                    else:
                                                        mem[_4333 + _3336 + _3360 + 33] = 0
                                                        _5080 = mem[64]
                                                        mem[mem[64]] = _4333 + _3336 + _3360 + -mem[64] + 1
                                                        mem[64] = _4333 + _3336 + _3360 + 33
                                                        mem[_4333 + _3336 + _3360 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4333 + _3336 + _3360 + 37] = msg.sender
                                                        mem[_4333 + _3336 + _3360 + 69] = 128
                                                        _5176 = mem[_5080]
                                                        mem[_4333 + _3336 + _3360 + 165] = mem[_5080]
                                                        s = 0
                                                        while s < _5176:
                                                            mem[s + _4333 + _3336 + _3360 + 197] = mem[s + _5080 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5176) > _5176:
                                                            mem[_5176 + _4333 + _3336 + _3360 + 197] = 0
                                                        mem[_4333 + _3336 + _3360 + 101] = address(arg2)
                                                        mem[_4333 + _3336 + _3360 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4333 + _3336 + _3360 + 165 len ceil32(_5176) + 32]
                                                else:
                                                    _4334 = mem[_2333]
                                                    s = 0
                                                    while s < _4334:
                                                        mem[s + _3336 + _3360 + 33] = mem[s + _2333 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_4334) <= _4334:
                                                        _5081 = mem[64]
                                                        mem[mem[64]] = _4334 + _3336 + _3360 + -mem[64] + 1
                                                        mem[64] = _4334 + _3336 + _3360 + 33
                                                        mem[_4334 + _3336 + _3360 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4334 + _3336 + _3360 + 37] = msg.sender
                                                        mem[_4334 + _3336 + _3360 + 69] = 128
                                                        _5177 = mem[_5081]
                                                        mem[_4334 + _3336 + _3360 + 165] = mem[_5081]
                                                        s = 0
                                                        while s < _5177:
                                                            mem[s + _4334 + _3336 + _3360 + 197] = mem[s + _5081 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5177) > _5177:
                                                            mem[_5177 + _4334 + _3336 + _3360 + 197] = 0
                                                        mem[_4334 + _3336 + _3360 + 101] = address(arg2)
                                                        mem[_4334 + _3336 + _3360 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4334 + _3336 + _3360 + 165 len ceil32(_5177) + 32]
                                                    else:
                                                        mem[_4334 + _3336 + _3360 + 33] = 0
                                                        _5082 = mem[64]
                                                        mem[mem[64]] = _4334 + _3336 + _3360 + -mem[64] + 1
                                                        mem[64] = _4334 + _3336 + _3360 + 33
                                                        mem[_4334 + _3336 + _3360 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_4334 + _3336 + _3360 + 37] = msg.sender
                                                        mem[_4334 + _3336 + _3360 + 69] = 128
                                                        _5178 = mem[_5082]
                                                        mem[_4334 + _3336 + _3360 + 165] = mem[_5082]
                                                        s = 0
                                                        while s < _5178:
                                                            mem[s + _4334 + _3336 + _3360 + 197] = mem[s + _5082 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_5178) > _5178:
                                                            mem[_5178 + _4334 + _3336 + _3360 + 197] = 0
                                                        mem[_4334 + _3336 + _3360 + 101] = address(arg2)
                                                        mem[_4334 + _3336 + _3360 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4334 + _3336 + _3360 + 165 len ceil32(_5178) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not idx + 1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                mem[0] = msg.sender
                                mem[32] = 31
                                if stor31[address(msg.sender)]:
                                    if not -arg3:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = 0
                                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), 0
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < arg3:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _1652 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1652] = 1
                                                mem[_1652 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _1664 = mem[64]
                                                _1676 = mem[128]
                                                s = 0
                                                while s < _1676:
                                                    mem[s + _1664 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_1664 + _1676 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_1676) <= _1676:
                                                    _2357 = mem[_1652]
                                                    s = 0
                                                    while s < _2357:
                                                        mem[s + _1664 + _1676 + 33] = mem[s + _1652 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2357) <= _2357:
                                                        _3407 = mem[64]
                                                        mem[mem[64]] = _2357 + _1664 + _1676 + -mem[64] + 1
                                                        mem[64] = _2357 + _1664 + _1676 + 33
                                                        mem[_2357 + _1664 + _1676 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2357 + _1664 + _1676 + 37] = msg.sender
                                                        mem[_2357 + _1664 + _1676 + 69] = 128
                                                        _3475 = mem[_3407]
                                                        mem[_2357 + _1664 + _1676 + 165] = mem[_3407]
                                                        s = 0
                                                        while s < _3475:
                                                            mem[s + _2357 + _1664 + _1676 + 197] = mem[s + _3407 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3475) > _3475:
                                                            mem[_3475 + _2357 + _1664 + _1676 + 197] = 0
                                                        mem[_2357 + _1664 + _1676 + 101] = address(arg2)
                                                        mem[_2357 + _1664 + _1676 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2357 + _1664 + _1676 + 165 len ceil32(_3475) + 32]
                                                    else:
                                                        mem[_2357 + _1664 + _1676 + 33] = 0
                                                        _3408 = mem[64]
                                                        mem[mem[64]] = _2357 + _1664 + _1676 + -mem[64] + 1
                                                        mem[64] = _2357 + _1664 + _1676 + 33
                                                        mem[_2357 + _1664 + _1676 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2357 + _1664 + _1676 + 37] = msg.sender
                                                        mem[_2357 + _1664 + _1676 + 69] = 128
                                                        _3476 = mem[_3408]
                                                        mem[_2357 + _1664 + _1676 + 165] = mem[_3408]
                                                        s = 0
                                                        while s < _3476:
                                                            mem[s + _2357 + _1664 + _1676 + 197] = mem[s + _3408 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3476) > _3476:
                                                            mem[_3476 + _2357 + _1664 + _1676 + 197] = 0
                                                        mem[_2357 + _1664 + _1676 + 101] = address(arg2)
                                                        mem[_2357 + _1664 + _1676 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2357 + _1664 + _1676 + 165 len ceil32(_3476) + 32]
                                                else:
                                                    _2358 = mem[_1652]
                                                    s = 0
                                                    while s < _2358:
                                                        mem[s + _1664 + _1676 + 33] = mem[s + _1652 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2358) <= _2358:
                                                        _3409 = mem[64]
                                                        mem[mem[64]] = _2358 + _1664 + _1676 + -mem[64] + 1
                                                        mem[64] = _2358 + _1664 + _1676 + 33
                                                        mem[_2358 + _1664 + _1676 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2358 + _1664 + _1676 + 37] = msg.sender
                                                        mem[_2358 + _1664 + _1676 + 69] = 128
                                                        _3477 = mem[_3409]
                                                        mem[_2358 + _1664 + _1676 + 165] = mem[_3409]
                                                        s = 0
                                                        while s < _3477:
                                                            mem[s + _2358 + _1664 + _1676 + 197] = mem[s + _3409 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3477) > _3477:
                                                            mem[_3477 + _2358 + _1664 + _1676 + 197] = 0
                                                        mem[_2358 + _1664 + _1676 + 101] = address(arg2)
                                                        mem[_2358 + _1664 + _1676 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2358 + _1664 + _1676 + 165 len ceil32(_3477) + 32]
                                                    else:
                                                        mem[_2358 + _1664 + _1676 + 33] = 0
                                                        _3410 = mem[64]
                                                        mem[mem[64]] = _2358 + _1664 + _1676 + -mem[64] + 1
                                                        mem[64] = _2358 + _1664 + _1676 + 33
                                                        mem[_2358 + _1664 + _1676 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2358 + _1664 + _1676 + 37] = msg.sender
                                                        mem[_2358 + _1664 + _1676 + 69] = 128
                                                        _3478 = mem[_3410]
                                                        mem[_2358 + _1664 + _1676 + 165] = mem[_3410]
                                                        s = 0
                                                        while s < _3478:
                                                            mem[s + _2358 + _1664 + _1676 + 197] = mem[s + _3410 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3478) > _3478:
                                                            mem[_3478 + _2358 + _1664 + _1676 + 197] = 0
                                                        mem[_2358 + _1664 + _1676 + 101] = address(arg2)
                                                        mem[_2358 + _1664 + _1676 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2358 + _1664 + _1676 + 165 len ceil32(_3478) + 32]
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
                                                _2336 = mem[64]
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
                                                        if u - 1 >= mem[_2336]:
                                                            revert with 0, 50
                                                        mem[u + _2336 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3341 = mem[64]
                                                    _3365 = mem[128]
                                                    s = 0
                                                    while s < _3365:
                                                        mem[s + _3341 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3341 + _3365 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3365) <= _3365:
                                                        _4343 = mem[_2336]
                                                        s = 0
                                                        while s < _4343:
                                                            mem[s + _3341 + _3365 + 33] = mem[s + _2336 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4343) <= _4343:
                                                            _5099 = mem[64]
                                                            mem[mem[64]] = _4343 + _3341 + _3365 + -mem[64] + 1
                                                            mem[64] = _4343 + _3341 + _3365 + 33
                                                            mem[_4343 + _3341 + _3365 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4343 + _3341 + _3365 + 37] = msg.sender
                                                            mem[_4343 + _3341 + _3365 + 69] = 128
                                                            _5195 = mem[_5099]
                                                            mem[_4343 + _3341 + _3365 + 165] = mem[_5099]
                                                            s = 0
                                                            while s < _5195:
                                                                mem[s + _4343 + _3341 + _3365 + 197] = mem[s + _5099 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5195) > _5195:
                                                                mem[_5195 + _4343 + _3341 + _3365 + 197] = 0
                                                            mem[_4343 + _3341 + _3365 + 101] = address(arg2)
                                                            mem[_4343 + _3341 + _3365 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4343 + _3341 + _3365 + 165 len ceil32(_5195) + 32]
                                                        else:
                                                            mem[_4343 + _3341 + _3365 + 33] = 0
                                                            _5100 = mem[64]
                                                            mem[mem[64]] = _4343 + _3341 + _3365 + -mem[64] + 1
                                                            mem[64] = _4343 + _3341 + _3365 + 33
                                                            mem[_4343 + _3341 + _3365 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4343 + _3341 + _3365 + 37] = msg.sender
                                                            mem[_4343 + _3341 + _3365 + 69] = 128
                                                            _5196 = mem[_5100]
                                                            mem[_4343 + _3341 + _3365 + 165] = mem[_5100]
                                                            s = 0
                                                            while s < _5196:
                                                                mem[s + _4343 + _3341 + _3365 + 197] = mem[s + _5100 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5196) > _5196:
                                                                mem[_5196 + _4343 + _3341 + _3365 + 197] = 0
                                                            mem[_4343 + _3341 + _3365 + 101] = address(arg2)
                                                            mem[_4343 + _3341 + _3365 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4343 + _3341 + _3365 + 165 len ceil32(_5196) + 32]
                                                    else:
                                                        _4344 = mem[_2336]
                                                        s = 0
                                                        while s < _4344:
                                                            mem[s + _3341 + _3365 + 33] = mem[s + _2336 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4344) <= _4344:
                                                            _5101 = mem[64]
                                                            mem[mem[64]] = _4344 + _3341 + _3365 + -mem[64] + 1
                                                            mem[64] = _4344 + _3341 + _3365 + 33
                                                            mem[_4344 + _3341 + _3365 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4344 + _3341 + _3365 + 37] = msg.sender
                                                            mem[_4344 + _3341 + _3365 + 69] = 128
                                                            _5197 = mem[_5101]
                                                            mem[_4344 + _3341 + _3365 + 165] = mem[_5101]
                                                            s = 0
                                                            while s < _5197:
                                                                mem[s + _4344 + _3341 + _3365 + 197] = mem[s + _5101 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5197) > _5197:
                                                                mem[_5197 + _4344 + _3341 + _3365 + 197] = 0
                                                            mem[_4344 + _3341 + _3365 + 101] = address(arg2)
                                                            mem[_4344 + _3341 + _3365 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4344 + _3341 + _3365 + 165 len ceil32(_5197) + 32]
                                                        else:
                                                            mem[_4344 + _3341 + _3365 + 33] = 0
                                                            _5102 = mem[64]
                                                            mem[mem[64]] = _4344 + _3341 + _3365 + -mem[64] + 1
                                                            mem[64] = _4344 + _3341 + _3365 + 33
                                                            mem[_4344 + _3341 + _3365 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4344 + _3341 + _3365 + 37] = msg.sender
                                                            mem[_4344 + _3341 + _3365 + 69] = 128
                                                            _5198 = mem[_5102]
                                                            mem[_4344 + _3341 + _3365 + 165] = mem[_5102]
                                                            s = 0
                                                            while s < _5198:
                                                                mem[s + _4344 + _3341 + _3365 + 197] = mem[s + _5102 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5198) > _5198:
                                                                mem[_5198 + _4344 + _3341 + _3365 + 197] = 0
                                                            mem[_4344 + _3341 + _3365 + 101] = address(arg2)
                                                            mem[_4344 + _3341 + _3365 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4344 + _3341 + _3365 + 165 len ceil32(_5198) + 32]
                                                else:
                                                    mem[_2336 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_2336]:
                                                            revert with 0, 50
                                                        mem[u + _2336 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3342 = mem[64]
                                                    _3366 = mem[128]
                                                    s = 0
                                                    while s < _3366:
                                                        mem[s + _3342 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3342 + _3366 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3366) <= _3366:
                                                        _4345 = mem[_2336]
                                                        s = 0
                                                        while s < _4345:
                                                            mem[s + _3342 + _3366 + 33] = mem[s + _2336 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4345) <= _4345:
                                                            _5103 = mem[64]
                                                            mem[mem[64]] = _4345 + _3342 + _3366 + -mem[64] + 1
                                                            mem[64] = _4345 + _3342 + _3366 + 33
                                                            mem[_4345 + _3342 + _3366 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4345 + _3342 + _3366 + 37] = msg.sender
                                                            mem[_4345 + _3342 + _3366 + 69] = 128
                                                            _5199 = mem[_5103]
                                                            mem[_4345 + _3342 + _3366 + 165] = mem[_5103]
                                                            s = 0
                                                            while s < _5199:
                                                                mem[s + _4345 + _3342 + _3366 + 197] = mem[s + _5103 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5199) > _5199:
                                                                mem[_5199 + _4345 + _3342 + _3366 + 197] = 0
                                                            mem[_4345 + _3342 + _3366 + 101] = address(arg2)
                                                            mem[_4345 + _3342 + _3366 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4345 + _3342 + _3366 + 165 len ceil32(_5199) + 32]
                                                        else:
                                                            mem[_4345 + _3342 + _3366 + 33] = 0
                                                            _5104 = mem[64]
                                                            mem[mem[64]] = _4345 + _3342 + _3366 + -mem[64] + 1
                                                            mem[64] = _4345 + _3342 + _3366 + 33
                                                            mem[_4345 + _3342 + _3366 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4345 + _3342 + _3366 + 37] = msg.sender
                                                            mem[_4345 + _3342 + _3366 + 69] = 128
                                                            _5200 = mem[_5104]
                                                            mem[_4345 + _3342 + _3366 + 165] = mem[_5104]
                                                            s = 0
                                                            while s < _5200:
                                                                mem[s + _4345 + _3342 + _3366 + 197] = mem[s + _5104 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5200) > _5200:
                                                                mem[_5200 + _4345 + _3342 + _3366 + 197] = 0
                                                            mem[_4345 + _3342 + _3366 + 101] = address(arg2)
                                                            mem[_4345 + _3342 + _3366 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4345 + _3342 + _3366 + 165 len ceil32(_5200) + 32]
                                                    else:
                                                        _4346 = mem[_2336]
                                                        s = 0
                                                        while s < _4346:
                                                            mem[s + _3342 + _3366 + 33] = mem[s + _2336 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4346) <= _4346:
                                                            _5105 = mem[64]
                                                            mem[mem[64]] = _4346 + _3342 + _3366 + -mem[64] + 1
                                                            mem[64] = _4346 + _3342 + _3366 + 33
                                                            mem[_4346 + _3342 + _3366 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4346 + _3342 + _3366 + 37] = msg.sender
                                                            mem[_4346 + _3342 + _3366 + 69] = 128
                                                            _5201 = mem[_5105]
                                                            mem[_4346 + _3342 + _3366 + 165] = mem[_5105]
                                                            s = 0
                                                            while s < _5201:
                                                                mem[s + _4346 + _3342 + _3366 + 197] = mem[s + _5105 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5201) > _5201:
                                                                mem[_5201 + _4346 + _3342 + _3366 + 197] = 0
                                                            mem[_4346 + _3342 + _3366 + 101] = address(arg2)
                                                            mem[_4346 + _3342 + _3366 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4346 + _3342 + _3366 + 165 len ceil32(_5201) + 32]
                                                        else:
                                                            mem[_4346 + _3342 + _3366 + 33] = 0
                                                            _5106 = mem[64]
                                                            mem[mem[64]] = _4346 + _3342 + _3366 + -mem[64] + 1
                                                            mem[64] = _4346 + _3342 + _3366 + 33
                                                            mem[_4346 + _3342 + _3366 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4346 + _3342 + _3366 + 37] = msg.sender
                                                            mem[_4346 + _3342 + _3366 + 69] = 128
                                                            _5202 = mem[_5106]
                                                            mem[_4346 + _3342 + _3366 + 165] = mem[_5106]
                                                            s = 0
                                                            while s < _5202:
                                                                mem[s + _4346 + _3342 + _3366 + 197] = mem[s + _5106 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5202) > _5202:
                                                                mem[_5202 + _4346 + _3342 + _3366 + 197] = 0
                                                            mem[_4346 + _3342 + _3366 + 101] = address(arg2)
                                                            mem[_4346 + _3342 + _3366 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4346 + _3342 + _3366 + 165 len ceil32(_5202) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < arg3:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _1651 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1651] = 1
                                                mem[_1651 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _1663 = mem[64]
                                                _1675 = mem[128]
                                                s = 0
                                                while s < _1675:
                                                    mem[s + _1663 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_1663 + _1675 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_1675) <= _1675:
                                                    _2355 = mem[_1651]
                                                    s = 0
                                                    while s < _2355:
                                                        mem[s + _1663 + _1675 + 33] = mem[s + _1651 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2355) <= _2355:
                                                        _3403 = mem[64]
                                                        mem[mem[64]] = _2355 + _1663 + _1675 + -mem[64] + 1
                                                        mem[64] = _2355 + _1663 + _1675 + 33
                                                        mem[_2355 + _1663 + _1675 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2355 + _1663 + _1675 + 37] = msg.sender
                                                        mem[_2355 + _1663 + _1675 + 69] = 128
                                                        _3469 = mem[_3403]
                                                        mem[_2355 + _1663 + _1675 + 165] = mem[_3403]
                                                        s = 0
                                                        while s < _3469:
                                                            mem[s + _2355 + _1663 + _1675 + 197] = mem[s + _3403 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3469) > _3469:
                                                            mem[_3469 + _2355 + _1663 + _1675 + 197] = 0
                                                        mem[_2355 + _1663 + _1675 + 101] = address(arg2)
                                                        mem[_2355 + _1663 + _1675 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2355 + _1663 + _1675 + 165 len ceil32(_3469) + 32]
                                                    else:
                                                        mem[_2355 + _1663 + _1675 + 33] = 0
                                                        _3404 = mem[64]
                                                        mem[mem[64]] = _2355 + _1663 + _1675 + -mem[64] + 1
                                                        mem[64] = _2355 + _1663 + _1675 + 33
                                                        mem[_2355 + _1663 + _1675 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2355 + _1663 + _1675 + 37] = msg.sender
                                                        mem[_2355 + _1663 + _1675 + 69] = 128
                                                        _3470 = mem[_3404]
                                                        mem[_2355 + _1663 + _1675 + 165] = mem[_3404]
                                                        s = 0
                                                        while s < _3470:
                                                            mem[s + _2355 + _1663 + _1675 + 197] = mem[s + _3404 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3470) > _3470:
                                                            mem[_3470 + _2355 + _1663 + _1675 + 197] = 0
                                                        mem[_2355 + _1663 + _1675 + 101] = address(arg2)
                                                        mem[_2355 + _1663 + _1675 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2355 + _1663 + _1675 + 165 len ceil32(_3470) + 32]
                                                else:
                                                    _2356 = mem[_1651]
                                                    s = 0
                                                    while s < _2356:
                                                        mem[s + _1663 + _1675 + 33] = mem[s + _1651 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2356) <= _2356:
                                                        _3405 = mem[64]
                                                        mem[mem[64]] = _2356 + _1663 + _1675 + -mem[64] + 1
                                                        mem[64] = _2356 + _1663 + _1675 + 33
                                                        mem[_2356 + _1663 + _1675 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2356 + _1663 + _1675 + 37] = msg.sender
                                                        mem[_2356 + _1663 + _1675 + 69] = 128
                                                        _3471 = mem[_3405]
                                                        mem[_2356 + _1663 + _1675 + 165] = mem[_3405]
                                                        s = 0
                                                        while s < _3471:
                                                            mem[s + _2356 + _1663 + _1675 + 197] = mem[s + _3405 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3471) > _3471:
                                                            mem[_3471 + _2356 + _1663 + _1675 + 197] = 0
                                                        mem[_2356 + _1663 + _1675 + 101] = address(arg2)
                                                        mem[_2356 + _1663 + _1675 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2356 + _1663 + _1675 + 165 len ceil32(_3471) + 32]
                                                    else:
                                                        mem[_2356 + _1663 + _1675 + 33] = 0
                                                        _3406 = mem[64]
                                                        mem[mem[64]] = _2356 + _1663 + _1675 + -mem[64] + 1
                                                        mem[64] = _2356 + _1663 + _1675 + 33
                                                        mem[_2356 + _1663 + _1675 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2356 + _1663 + _1675 + 37] = msg.sender
                                                        mem[_2356 + _1663 + _1675 + 69] = 128
                                                        _3472 = mem[_3406]
                                                        mem[_2356 + _1663 + _1675 + 165] = mem[_3406]
                                                        s = 0
                                                        while s < _3472:
                                                            mem[s + _2356 + _1663 + _1675 + 197] = mem[s + _3406 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3472) > _3472:
                                                            mem[_3472 + _2356 + _1663 + _1675 + 197] = 0
                                                        mem[_2356 + _1663 + _1675 + 101] = address(arg2)
                                                        mem[_2356 + _1663 + _1675 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2356 + _1663 + _1675 + 165 len ceil32(_3472) + 32]
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
                                                _2335 = mem[64]
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
                                                        if u - 1 >= mem[_2335]:
                                                            revert with 0, 50
                                                        mem[u + _2335 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3339 = mem[64]
                                                    _3363 = mem[128]
                                                    s = 0
                                                    while s < _3363:
                                                        mem[s + _3339 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3339 + _3363 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3363) <= _3363:
                                                        _4339 = mem[_2335]
                                                        s = 0
                                                        while s < _4339:
                                                            mem[s + _3339 + _3363 + 33] = mem[s + _2335 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4339) <= _4339:
                                                            _5091 = mem[64]
                                                            mem[mem[64]] = _4339 + _3339 + _3363 + -mem[64] + 1
                                                            mem[64] = _4339 + _3339 + _3363 + 33
                                                            mem[_4339 + _3339 + _3363 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4339 + _3339 + _3363 + 37] = msg.sender
                                                            mem[_4339 + _3339 + _3363 + 69] = 128
                                                            _5187 = mem[_5091]
                                                            mem[_4339 + _3339 + _3363 + 165] = mem[_5091]
                                                            s = 0
                                                            while s < _5187:
                                                                mem[s + _4339 + _3339 + _3363 + 197] = mem[s + _5091 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5187) > _5187:
                                                                mem[_5187 + _4339 + _3339 + _3363 + 197] = 0
                                                            mem[_4339 + _3339 + _3363 + 101] = address(arg2)
                                                            mem[_4339 + _3339 + _3363 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4339 + _3339 + _3363 + 165 len ceil32(_5187) + 32]
                                                        else:
                                                            mem[_4339 + _3339 + _3363 + 33] = 0
                                                            _5092 = mem[64]
                                                            mem[mem[64]] = _4339 + _3339 + _3363 + -mem[64] + 1
                                                            mem[64] = _4339 + _3339 + _3363 + 33
                                                            mem[_4339 + _3339 + _3363 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4339 + _3339 + _3363 + 37] = msg.sender
                                                            mem[_4339 + _3339 + _3363 + 69] = 128
                                                            _5188 = mem[_5092]
                                                            mem[_4339 + _3339 + _3363 + 165] = mem[_5092]
                                                            s = 0
                                                            while s < _5188:
                                                                mem[s + _4339 + _3339 + _3363 + 197] = mem[s + _5092 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5188) > _5188:
                                                                mem[_5188 + _4339 + _3339 + _3363 + 197] = 0
                                                            mem[_4339 + _3339 + _3363 + 101] = address(arg2)
                                                            mem[_4339 + _3339 + _3363 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4339 + _3339 + _3363 + 165 len ceil32(_5188) + 32]
                                                    else:
                                                        _4340 = mem[_2335]
                                                        s = 0
                                                        while s < _4340:
                                                            mem[s + _3339 + _3363 + 33] = mem[s + _2335 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4340) <= _4340:
                                                            _5093 = mem[64]
                                                            mem[mem[64]] = _4340 + _3339 + _3363 + -mem[64] + 1
                                                            mem[64] = _4340 + _3339 + _3363 + 33
                                                            mem[_4340 + _3339 + _3363 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4340 + _3339 + _3363 + 37] = msg.sender
                                                            mem[_4340 + _3339 + _3363 + 69] = 128
                                                            _5189 = mem[_5093]
                                                            mem[_4340 + _3339 + _3363 + 165] = mem[_5093]
                                                            s = 0
                                                            while s < _5189:
                                                                mem[s + _4340 + _3339 + _3363 + 197] = mem[s + _5093 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5189) > _5189:
                                                                mem[_5189 + _4340 + _3339 + _3363 + 197] = 0
                                                            mem[_4340 + _3339 + _3363 + 101] = address(arg2)
                                                            mem[_4340 + _3339 + _3363 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4340 + _3339 + _3363 + 165 len ceil32(_5189) + 32]
                                                        else:
                                                            mem[_4340 + _3339 + _3363 + 33] = 0
                                                            _5094 = mem[64]
                                                            mem[mem[64]] = _4340 + _3339 + _3363 + -mem[64] + 1
                                                            mem[64] = _4340 + _3339 + _3363 + 33
                                                            mem[_4340 + _3339 + _3363 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4340 + _3339 + _3363 + 37] = msg.sender
                                                            mem[_4340 + _3339 + _3363 + 69] = 128
                                                            _5190 = mem[_5094]
                                                            mem[_4340 + _3339 + _3363 + 165] = mem[_5094]
                                                            s = 0
                                                            while s < _5190:
                                                                mem[s + _4340 + _3339 + _3363 + 197] = mem[s + _5094 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5190) > _5190:
                                                                mem[_5190 + _4340 + _3339 + _3363 + 197] = 0
                                                            mem[_4340 + _3339 + _3363 + 101] = address(arg2)
                                                            mem[_4340 + _3339 + _3363 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4340 + _3339 + _3363 + 165 len ceil32(_5190) + 32]
                                                else:
                                                    mem[_2335 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_2335]:
                                                            revert with 0, 50
                                                        mem[u + _2335 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3340 = mem[64]
                                                    _3364 = mem[128]
                                                    s = 0
                                                    while s < _3364:
                                                        mem[s + _3340 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3340 + _3364 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3364) <= _3364:
                                                        _4341 = mem[_2335]
                                                        s = 0
                                                        while s < _4341:
                                                            mem[s + _3340 + _3364 + 33] = mem[s + _2335 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4341) <= _4341:
                                                            _5095 = mem[64]
                                                            mem[mem[64]] = _4341 + _3340 + _3364 + -mem[64] + 1
                                                            mem[64] = _4341 + _3340 + _3364 + 33
                                                            mem[_4341 + _3340 + _3364 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4341 + _3340 + _3364 + 37] = msg.sender
                                                            mem[_4341 + _3340 + _3364 + 69] = 128
                                                            _5191 = mem[_5095]
                                                            mem[_4341 + _3340 + _3364 + 165] = mem[_5095]
                                                            s = 0
                                                            while s < _5191:
                                                                mem[s + _4341 + _3340 + _3364 + 197] = mem[s + _5095 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5191) > _5191:
                                                                mem[_5191 + _4341 + _3340 + _3364 + 197] = 0
                                                            mem[_4341 + _3340 + _3364 + 101] = address(arg2)
                                                            mem[_4341 + _3340 + _3364 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4341 + _3340 + _3364 + 165 len ceil32(_5191) + 32]
                                                        else:
                                                            mem[_4341 + _3340 + _3364 + 33] = 0
                                                            _5096 = mem[64]
                                                            mem[mem[64]] = _4341 + _3340 + _3364 + -mem[64] + 1
                                                            mem[64] = _4341 + _3340 + _3364 + 33
                                                            mem[_4341 + _3340 + _3364 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4341 + _3340 + _3364 + 37] = msg.sender
                                                            mem[_4341 + _3340 + _3364 + 69] = 128
                                                            _5192 = mem[_5096]
                                                            mem[_4341 + _3340 + _3364 + 165] = mem[_5096]
                                                            s = 0
                                                            while s < _5192:
                                                                mem[s + _4341 + _3340 + _3364 + 197] = mem[s + _5096 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5192) > _5192:
                                                                mem[_5192 + _4341 + _3340 + _3364 + 197] = 0
                                                            mem[_4341 + _3340 + _3364 + 101] = address(arg2)
                                                            mem[_4341 + _3340 + _3364 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4341 + _3340 + _3364 + 165 len ceil32(_5192) + 32]
                                                    else:
                                                        _4342 = mem[_2335]
                                                        s = 0
                                                        while s < _4342:
                                                            mem[s + _3340 + _3364 + 33] = mem[s + _2335 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4342) <= _4342:
                                                            _5097 = mem[64]
                                                            mem[mem[64]] = _4342 + _3340 + _3364 + -mem[64] + 1
                                                            mem[64] = _4342 + _3340 + _3364 + 33
                                                            mem[_4342 + _3340 + _3364 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4342 + _3340 + _3364 + 37] = msg.sender
                                                            mem[_4342 + _3340 + _3364 + 69] = 128
                                                            _5193 = mem[_5097]
                                                            mem[_4342 + _3340 + _3364 + 165] = mem[_5097]
                                                            s = 0
                                                            while s < _5193:
                                                                mem[s + _4342 + _3340 + _3364 + 197] = mem[s + _5097 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5193) > _5193:
                                                                mem[_5193 + _4342 + _3340 + _3364 + 197] = 0
                                                            mem[_4342 + _3340 + _3364 + 101] = address(arg2)
                                                            mem[_4342 + _3340 + _3364 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4342 + _3340 + _3364 + 165 len ceil32(_5193) + 32]
                                                        else:
                                                            mem[_4342 + _3340 + _3364 + 33] = 0
                                                            _5098 = mem[64]
                                                            mem[mem[64]] = _4342 + _3340 + _3364 + -mem[64] + 1
                                                            mem[64] = _4342 + _3340 + _3364 + 33
                                                            mem[_4342 + _3340 + _3364 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4342 + _3340 + _3364 + 37] = msg.sender
                                                            mem[_4342 + _3340 + _3364 + 69] = 128
                                                            _5194 = mem[_5098]
                                                            mem[_4342 + _3340 + _3364 + 165] = mem[_5098]
                                                            s = 0
                                                            while s < _5194:
                                                                mem[s + _4342 + _3340 + _3364 + 197] = mem[s + _5098 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5194) > _5194:
                                                                mem[_5194 + _4342 + _3340 + _3364 + 197] = 0
                                                            mem[_4342 + _3340 + _3364 + 101] = address(arg2)
                                                            mem[_4342 + _3340 + _3364 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4342 + _3340 + _3364 + 165 len ceil32(_5194) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                else:
                                    uint8(stor28.field_0) = 1
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = sub_b18d9840Address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_b18d9840Address, ext_call.return_data[0]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    uint8(stor28.field_0) = 0
                                    if not -arg3:
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 197] = 0
                                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < arg3:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _1654 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1654] = 1
                                                mem[_1654 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _1666 = mem[64]
                                                _1678 = mem[128]
                                                s = 0
                                                while s < _1678:
                                                    mem[s + _1666 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_1666 + _1678 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_1678) <= _1678:
                                                    _2361 = mem[_1654]
                                                    s = 0
                                                    while s < _2361:
                                                        mem[s + _1666 + _1678 + 33] = mem[s + _1654 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2361) <= _2361:
                                                        _3415 = mem[64]
                                                        mem[mem[64]] = _2361 + _1666 + _1678 + -mem[64] + 1
                                                        mem[64] = _2361 + _1666 + _1678 + 33
                                                        mem[_2361 + _1666 + _1678 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2361 + _1666 + _1678 + 37] = msg.sender
                                                        mem[_2361 + _1666 + _1678 + 69] = 128
                                                        _3487 = mem[_3415]
                                                        mem[_2361 + _1666 + _1678 + 165] = mem[_3415]
                                                        s = 0
                                                        while s < _3487:
                                                            mem[s + _2361 + _1666 + _1678 + 197] = mem[s + _3415 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3487) > _3487:
                                                            mem[_3487 + _2361 + _1666 + _1678 + 197] = 0
                                                        mem[_2361 + _1666 + _1678 + 101] = address(arg2)
                                                        mem[_2361 + _1666 + _1678 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2361 + _1666 + _1678 + 165 len ceil32(_3487) + 32]
                                                    else:
                                                        mem[_2361 + _1666 + _1678 + 33] = 0
                                                        _3416 = mem[64]
                                                        mem[mem[64]] = _2361 + _1666 + _1678 + -mem[64] + 1
                                                        mem[64] = _2361 + _1666 + _1678 + 33
                                                        mem[_2361 + _1666 + _1678 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2361 + _1666 + _1678 + 37] = msg.sender
                                                        mem[_2361 + _1666 + _1678 + 69] = 128
                                                        _3488 = mem[_3416]
                                                        mem[_2361 + _1666 + _1678 + 165] = mem[_3416]
                                                        s = 0
                                                        while s < _3488:
                                                            mem[s + _2361 + _1666 + _1678 + 197] = mem[s + _3416 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3488) > _3488:
                                                            mem[_3488 + _2361 + _1666 + _1678 + 197] = 0
                                                        mem[_2361 + _1666 + _1678 + 101] = address(arg2)
                                                        mem[_2361 + _1666 + _1678 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2361 + _1666 + _1678 + 165 len ceil32(_3488) + 32]
                                                else:
                                                    _2362 = mem[_1654]
                                                    s = 0
                                                    while s < _2362:
                                                        mem[s + _1666 + _1678 + 33] = mem[s + _1654 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2362) <= _2362:
                                                        _3417 = mem[64]
                                                        mem[mem[64]] = _2362 + _1666 + _1678 + -mem[64] + 1
                                                        mem[64] = _2362 + _1666 + _1678 + 33
                                                        mem[_2362 + _1666 + _1678 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2362 + _1666 + _1678 + 37] = msg.sender
                                                        mem[_2362 + _1666 + _1678 + 69] = 128
                                                        _3489 = mem[_3417]
                                                        mem[_2362 + _1666 + _1678 + 165] = mem[_3417]
                                                        s = 0
                                                        while s < _3489:
                                                            mem[s + _2362 + _1666 + _1678 + 197] = mem[s + _3417 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3489) > _3489:
                                                            mem[_3489 + _2362 + _1666 + _1678 + 197] = 0
                                                        mem[_2362 + _1666 + _1678 + 101] = address(arg2)
                                                        mem[_2362 + _1666 + _1678 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2362 + _1666 + _1678 + 165 len ceil32(_3489) + 32]
                                                    else:
                                                        mem[_2362 + _1666 + _1678 + 33] = 0
                                                        _3418 = mem[64]
                                                        mem[mem[64]] = _2362 + _1666 + _1678 + -mem[64] + 1
                                                        mem[64] = _2362 + _1666 + _1678 + 33
                                                        mem[_2362 + _1666 + _1678 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2362 + _1666 + _1678 + 37] = msg.sender
                                                        mem[_2362 + _1666 + _1678 + 69] = 128
                                                        _3490 = mem[_3418]
                                                        mem[_2362 + _1666 + _1678 + 165] = mem[_3418]
                                                        s = 0
                                                        while s < _3490:
                                                            mem[s + _2362 + _1666 + _1678 + 197] = mem[s + _3418 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3490) > _3490:
                                                            mem[_3490 + _2362 + _1666 + _1678 + 197] = 0
                                                        mem[_2362 + _1666 + _1678 + 101] = address(arg2)
                                                        mem[_2362 + _1666 + _1678 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2362 + _1666 + _1678 + 165 len ceil32(_3490) + 32]
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
                                                _2338 = mem[64]
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
                                                        if u - 1 >= mem[_2338]:
                                                            revert with 0, 50
                                                        mem[u + _2338 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3345 = mem[64]
                                                    _3369 = mem[128]
                                                    s = 0
                                                    while s < _3369:
                                                        mem[s + _3345 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3345 + _3369 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3369) <= _3369:
                                                        _4351 = mem[_2338]
                                                        s = 0
                                                        while s < _4351:
                                                            mem[s + _3345 + _3369 + 33] = mem[s + _2338 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4351) <= _4351:
                                                            _5115 = mem[64]
                                                            mem[mem[64]] = _4351 + _3345 + _3369 + -mem[64] + 1
                                                            mem[64] = _4351 + _3345 + _3369 + 33
                                                            mem[_4351 + _3345 + _3369 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4351 + _3345 + _3369 + 37] = msg.sender
                                                            mem[_4351 + _3345 + _3369 + 69] = 128
                                                            _5211 = mem[_5115]
                                                            mem[_4351 + _3345 + _3369 + 165] = mem[_5115]
                                                            s = 0
                                                            while s < _5211:
                                                                mem[s + _4351 + _3345 + _3369 + 197] = mem[s + _5115 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5211) > _5211:
                                                                mem[_5211 + _4351 + _3345 + _3369 + 197] = 0
                                                            mem[_4351 + _3345 + _3369 + 101] = address(arg2)
                                                            mem[_4351 + _3345 + _3369 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4351 + _3345 + _3369 + 165 len ceil32(_5211) + 32]
                                                        else:
                                                            mem[_4351 + _3345 + _3369 + 33] = 0
                                                            _5116 = mem[64]
                                                            mem[mem[64]] = _4351 + _3345 + _3369 + -mem[64] + 1
                                                            mem[64] = _4351 + _3345 + _3369 + 33
                                                            mem[_4351 + _3345 + _3369 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4351 + _3345 + _3369 + 37] = msg.sender
                                                            mem[_4351 + _3345 + _3369 + 69] = 128
                                                            _5212 = mem[_5116]
                                                            mem[_4351 + _3345 + _3369 + 165] = mem[_5116]
                                                            s = 0
                                                            while s < _5212:
                                                                mem[s + _4351 + _3345 + _3369 + 197] = mem[s + _5116 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5212) > _5212:
                                                                mem[_5212 + _4351 + _3345 + _3369 + 197] = 0
                                                            mem[_4351 + _3345 + _3369 + 101] = address(arg2)
                                                            mem[_4351 + _3345 + _3369 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4351 + _3345 + _3369 + 165 len ceil32(_5212) + 32]
                                                    else:
                                                        _4352 = mem[_2338]
                                                        s = 0
                                                        while s < _4352:
                                                            mem[s + _3345 + _3369 + 33] = mem[s + _2338 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4352) <= _4352:
                                                            _5117 = mem[64]
                                                            mem[mem[64]] = _4352 + _3345 + _3369 + -mem[64] + 1
                                                            mem[64] = _4352 + _3345 + _3369 + 33
                                                            mem[_4352 + _3345 + _3369 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4352 + _3345 + _3369 + 37] = msg.sender
                                                            mem[_4352 + _3345 + _3369 + 69] = 128
                                                            _5213 = mem[_5117]
                                                            mem[_4352 + _3345 + _3369 + 165] = mem[_5117]
                                                            s = 0
                                                            while s < _5213:
                                                                mem[s + _4352 + _3345 + _3369 + 197] = mem[s + _5117 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5213) > _5213:
                                                                mem[_5213 + _4352 + _3345 + _3369 + 197] = 0
                                                            mem[_4352 + _3345 + _3369 + 101] = address(arg2)
                                                            mem[_4352 + _3345 + _3369 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4352 + _3345 + _3369 + 165 len ceil32(_5213) + 32]
                                                        else:
                                                            mem[_4352 + _3345 + _3369 + 33] = 0
                                                            _5118 = mem[64]
                                                            mem[mem[64]] = _4352 + _3345 + _3369 + -mem[64] + 1
                                                            mem[64] = _4352 + _3345 + _3369 + 33
                                                            mem[_4352 + _3345 + _3369 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4352 + _3345 + _3369 + 37] = msg.sender
                                                            mem[_4352 + _3345 + _3369 + 69] = 128
                                                            _5214 = mem[_5118]
                                                            mem[_4352 + _3345 + _3369 + 165] = mem[_5118]
                                                            s = 0
                                                            while s < _5214:
                                                                mem[s + _4352 + _3345 + _3369 + 197] = mem[s + _5118 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5214) > _5214:
                                                                mem[_5214 + _4352 + _3345 + _3369 + 197] = 0
                                                            mem[_4352 + _3345 + _3369 + 101] = address(arg2)
                                                            mem[_4352 + _3345 + _3369 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4352 + _3345 + _3369 + 165 len ceil32(_5214) + 32]
                                                else:
                                                    mem[_2338 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_2338]:
                                                            revert with 0, 50
                                                        mem[u + _2338 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3346 = mem[64]
                                                    _3370 = mem[128]
                                                    s = 0
                                                    while s < _3370:
                                                        mem[s + _3346 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3346 + _3370 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3370) <= _3370:
                                                        _4353 = mem[_2338]
                                                        s = 0
                                                        while s < _4353:
                                                            mem[s + _3346 + _3370 + 33] = mem[s + _2338 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4353) <= _4353:
                                                            _5119 = mem[64]
                                                            mem[mem[64]] = _4353 + _3346 + _3370 + -mem[64] + 1
                                                            mem[64] = _4353 + _3346 + _3370 + 33
                                                            mem[_4353 + _3346 + _3370 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4353 + _3346 + _3370 + 37] = msg.sender
                                                            mem[_4353 + _3346 + _3370 + 69] = 128
                                                            _5215 = mem[_5119]
                                                            mem[_4353 + _3346 + _3370 + 165] = mem[_5119]
                                                            s = 0
                                                            while s < _5215:
                                                                mem[s + _4353 + _3346 + _3370 + 197] = mem[s + _5119 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5215) > _5215:
                                                                mem[_5215 + _4353 + _3346 + _3370 + 197] = 0
                                                            mem[_4353 + _3346 + _3370 + 101] = address(arg2)
                                                            mem[_4353 + _3346 + _3370 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4353 + _3346 + _3370 + 165 len ceil32(_5215) + 32]
                                                        else:
                                                            mem[_4353 + _3346 + _3370 + 33] = 0
                                                            _5120 = mem[64]
                                                            mem[mem[64]] = _4353 + _3346 + _3370 + -mem[64] + 1
                                                            mem[64] = _4353 + _3346 + _3370 + 33
                                                            mem[_4353 + _3346 + _3370 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4353 + _3346 + _3370 + 37] = msg.sender
                                                            mem[_4353 + _3346 + _3370 + 69] = 128
                                                            _5216 = mem[_5120]
                                                            mem[_4353 + _3346 + _3370 + 165] = mem[_5120]
                                                            s = 0
                                                            while s < _5216:
                                                                mem[s + _4353 + _3346 + _3370 + 197] = mem[s + _5120 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5216) > _5216:
                                                                mem[_5216 + _4353 + _3346 + _3370 + 197] = 0
                                                            mem[_4353 + _3346 + _3370 + 101] = address(arg2)
                                                            mem[_4353 + _3346 + _3370 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4353 + _3346 + _3370 + 165 len ceil32(_5216) + 32]
                                                    else:
                                                        _4354 = mem[_2338]
                                                        s = 0
                                                        while s < _4354:
                                                            mem[s + _3346 + _3370 + 33] = mem[s + _2338 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4354) <= _4354:
                                                            _5121 = mem[64]
                                                            mem[mem[64]] = _4354 + _3346 + _3370 + -mem[64] + 1
                                                            mem[64] = _4354 + _3346 + _3370 + 33
                                                            mem[_4354 + _3346 + _3370 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4354 + _3346 + _3370 + 37] = msg.sender
                                                            mem[_4354 + _3346 + _3370 + 69] = 128
                                                            _5217 = mem[_5121]
                                                            mem[_4354 + _3346 + _3370 + 165] = mem[_5121]
                                                            s = 0
                                                            while s < _5217:
                                                                mem[s + _4354 + _3346 + _3370 + 197] = mem[s + _5121 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5217) > _5217:
                                                                mem[_5217 + _4354 + _3346 + _3370 + 197] = 0
                                                            mem[_4354 + _3346 + _3370 + 101] = address(arg2)
                                                            mem[_4354 + _3346 + _3370 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4354 + _3346 + _3370 + 165 len ceil32(_5217) + 32]
                                                        else:
                                                            mem[_4354 + _3346 + _3370 + 33] = 0
                                                            _5122 = mem[64]
                                                            mem[mem[64]] = _4354 + _3346 + _3370 + -mem[64] + 1
                                                            mem[64] = _4354 + _3346 + _3370 + 33
                                                            mem[_4354 + _3346 + _3370 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4354 + _3346 + _3370 + 37] = msg.sender
                                                            mem[_4354 + _3346 + _3370 + 69] = 128
                                                            _5218 = mem[_5122]
                                                            mem[_4354 + _3346 + _3370 + 165] = mem[_5122]
                                                            s = 0
                                                            while s < _5218:
                                                                mem[s + _4354 + _3346 + _3370 + 197] = mem[s + _5122 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5218) > _5218:
                                                                mem[_5218 + _4354 + _3346 + _3370 + 197] = 0
                                                            mem[_4354 + _3346 + _3370 + 101] = address(arg2)
                                                            mem[_4354 + _3346 + _3370 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4354 + _3346 + _3370 + 165 len ceil32(_5218) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 165] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 197] = arg3 * ext_call.return_data[0]
                                        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg3 * ext_call.return_data[0]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        while idx < arg3:
                                            if 1 > !idx:
                                                revert with 0, 17
                                            if not -idx - 1:
                                                _1653 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1653] = 1
                                                mem[_1653 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                                _1665 = mem[64]
                                                _1677 = mem[128]
                                                s = 0
                                                while s < _1677:
                                                    mem[s + _1665 + 32] = mem[s + 160]
                                                    s = s + 32
                                                    continue 
                                                mem[_1665 + _1677 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                if ceil32(_1677) <= _1677:
                                                    _2359 = mem[_1653]
                                                    s = 0
                                                    while s < _2359:
                                                        mem[s + _1665 + _1677 + 33] = mem[s + _1653 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2359) <= _2359:
                                                        _3411 = mem[64]
                                                        mem[mem[64]] = _2359 + _1665 + _1677 + -mem[64] + 1
                                                        mem[64] = _2359 + _1665 + _1677 + 33
                                                        mem[_2359 + _1665 + _1677 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2359 + _1665 + _1677 + 37] = msg.sender
                                                        mem[_2359 + _1665 + _1677 + 69] = 128
                                                        _3481 = mem[_3411]
                                                        mem[_2359 + _1665 + _1677 + 165] = mem[_3411]
                                                        s = 0
                                                        while s < _3481:
                                                            mem[s + _2359 + _1665 + _1677 + 197] = mem[s + _3411 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3481) > _3481:
                                                            mem[_3481 + _2359 + _1665 + _1677 + 197] = 0
                                                        mem[_2359 + _1665 + _1677 + 101] = address(arg2)
                                                        mem[_2359 + _1665 + _1677 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2359 + _1665 + _1677 + 165 len ceil32(_3481) + 32]
                                                    else:
                                                        mem[_2359 + _1665 + _1677 + 33] = 0
                                                        _3412 = mem[64]
                                                        mem[mem[64]] = _2359 + _1665 + _1677 + -mem[64] + 1
                                                        mem[64] = _2359 + _1665 + _1677 + 33
                                                        mem[_2359 + _1665 + _1677 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2359 + _1665 + _1677 + 37] = msg.sender
                                                        mem[_2359 + _1665 + _1677 + 69] = 128
                                                        _3482 = mem[_3412]
                                                        mem[_2359 + _1665 + _1677 + 165] = mem[_3412]
                                                        s = 0
                                                        while s < _3482:
                                                            mem[s + _2359 + _1665 + _1677 + 197] = mem[s + _3412 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3482) > _3482:
                                                            mem[_3482 + _2359 + _1665 + _1677 + 197] = 0
                                                        mem[_2359 + _1665 + _1677 + 101] = address(arg2)
                                                        mem[_2359 + _1665 + _1677 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2359 + _1665 + _1677 + 165 len ceil32(_3482) + 32]
                                                else:
                                                    _2360 = mem[_1653]
                                                    s = 0
                                                    while s < _2360:
                                                        mem[s + _1665 + _1677 + 33] = mem[s + _1653 + 32]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(_2360) <= _2360:
                                                        _3413 = mem[64]
                                                        mem[mem[64]] = _2360 + _1665 + _1677 + -mem[64] + 1
                                                        mem[64] = _2360 + _1665 + _1677 + 33
                                                        mem[_2360 + _1665 + _1677 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2360 + _1665 + _1677 + 37] = msg.sender
                                                        mem[_2360 + _1665 + _1677 + 69] = 128
                                                        _3483 = mem[_3413]
                                                        mem[_2360 + _1665 + _1677 + 165] = mem[_3413]
                                                        s = 0
                                                        while s < _3483:
                                                            mem[s + _2360 + _1665 + _1677 + 197] = mem[s + _3413 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3483) > _3483:
                                                            mem[_3483 + _2360 + _1665 + _1677 + 197] = 0
                                                        mem[_2360 + _1665 + _1677 + 101] = address(arg2)
                                                        mem[_2360 + _1665 + _1677 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2360 + _1665 + _1677 + 165 len ceil32(_3483) + 32]
                                                    else:
                                                        mem[_2360 + _1665 + _1677 + 33] = 0
                                                        _3414 = mem[64]
                                                        mem[mem[64]] = _2360 + _1665 + _1677 + -mem[64] + 1
                                                        mem[64] = _2360 + _1665 + _1677 + 33
                                                        mem[_2360 + _1665 + _1677 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                        mem[_2360 + _1665 + _1677 + 37] = msg.sender
                                                        mem[_2360 + _1665 + _1677 + 69] = 128
                                                        _3484 = mem[_3414]
                                                        mem[_2360 + _1665 + _1677 + 165] = mem[_3414]
                                                        s = 0
                                                        while s < _3484:
                                                            mem[s + _2360 + _1665 + _1677 + 197] = mem[s + _3414 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_3484) > _3484:
                                                            mem[_3484 + _2360 + _1665 + _1677 + 197] = 0
                                                        mem[_2360 + _1665 + _1677 + 101] = address(arg2)
                                                        mem[_2360 + _1665 + _1677 + 133] = uint32(arg4)
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                             gas gas_remaining wei
                                                            args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_2360 + _1665 + _1677 + 165 len ceil32(_3484) + 32]
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
                                                _2337 = mem[64]
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
                                                        if u - 1 >= mem[_2337]:
                                                            revert with 0, 50
                                                        mem[u + _2337 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3343 = mem[64]
                                                    _3367 = mem[128]
                                                    s = 0
                                                    while s < _3367:
                                                        mem[s + _3343 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3343 + _3367 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3367) <= _3367:
                                                        _4347 = mem[_2337]
                                                        s = 0
                                                        while s < _4347:
                                                            mem[s + _3343 + _3367 + 33] = mem[s + _2337 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4347) <= _4347:
                                                            _5107 = mem[64]
                                                            mem[mem[64]] = _4347 + _3343 + _3367 + -mem[64] + 1
                                                            mem[64] = _4347 + _3343 + _3367 + 33
                                                            mem[_4347 + _3343 + _3367 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4347 + _3343 + _3367 + 37] = msg.sender
                                                            mem[_4347 + _3343 + _3367 + 69] = 128
                                                            _5203 = mem[_5107]
                                                            mem[_4347 + _3343 + _3367 + 165] = mem[_5107]
                                                            s = 0
                                                            while s < _5203:
                                                                mem[s + _4347 + _3343 + _3367 + 197] = mem[s + _5107 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5203) > _5203:
                                                                mem[_5203 + _4347 + _3343 + _3367 + 197] = 0
                                                            mem[_4347 + _3343 + _3367 + 101] = address(arg2)
                                                            mem[_4347 + _3343 + _3367 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4347 + _3343 + _3367 + 165 len ceil32(_5203) + 32]
                                                        else:
                                                            mem[_4347 + _3343 + _3367 + 33] = 0
                                                            _5108 = mem[64]
                                                            mem[mem[64]] = _4347 + _3343 + _3367 + -mem[64] + 1
                                                            mem[64] = _4347 + _3343 + _3367 + 33
                                                            mem[_4347 + _3343 + _3367 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4347 + _3343 + _3367 + 37] = msg.sender
                                                            mem[_4347 + _3343 + _3367 + 69] = 128
                                                            _5204 = mem[_5108]
                                                            mem[_4347 + _3343 + _3367 + 165] = mem[_5108]
                                                            s = 0
                                                            while s < _5204:
                                                                mem[s + _4347 + _3343 + _3367 + 197] = mem[s + _5108 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5204) > _5204:
                                                                mem[_5204 + _4347 + _3343 + _3367 + 197] = 0
                                                            mem[_4347 + _3343 + _3367 + 101] = address(arg2)
                                                            mem[_4347 + _3343 + _3367 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4347 + _3343 + _3367 + 165 len ceil32(_5204) + 32]
                                                    else:
                                                        _4348 = mem[_2337]
                                                        s = 0
                                                        while s < _4348:
                                                            mem[s + _3343 + _3367 + 33] = mem[s + _2337 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4348) <= _4348:
                                                            _5109 = mem[64]
                                                            mem[mem[64]] = _4348 + _3343 + _3367 + -mem[64] + 1
                                                            mem[64] = _4348 + _3343 + _3367 + 33
                                                            mem[_4348 + _3343 + _3367 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4348 + _3343 + _3367 + 37] = msg.sender
                                                            mem[_4348 + _3343 + _3367 + 69] = 128
                                                            _5205 = mem[_5109]
                                                            mem[_4348 + _3343 + _3367 + 165] = mem[_5109]
                                                            s = 0
                                                            while s < _5205:
                                                                mem[s + _4348 + _3343 + _3367 + 197] = mem[s + _5109 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5205) > _5205:
                                                                mem[_5205 + _4348 + _3343 + _3367 + 197] = 0
                                                            mem[_4348 + _3343 + _3367 + 101] = address(arg2)
                                                            mem[_4348 + _3343 + _3367 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4348 + _3343 + _3367 + 165 len ceil32(_5205) + 32]
                                                        else:
                                                            mem[_4348 + _3343 + _3367 + 33] = 0
                                                            _5110 = mem[64]
                                                            mem[mem[64]] = _4348 + _3343 + _3367 + -mem[64] + 1
                                                            mem[64] = _4348 + _3343 + _3367 + 33
                                                            mem[_4348 + _3343 + _3367 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4348 + _3343 + _3367 + 37] = msg.sender
                                                            mem[_4348 + _3343 + _3367 + 69] = 128
                                                            _5206 = mem[_5110]
                                                            mem[_4348 + _3343 + _3367 + 165] = mem[_5110]
                                                            s = 0
                                                            while s < _5206:
                                                                mem[s + _4348 + _3343 + _3367 + 197] = mem[s + _5110 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5206) > _5206:
                                                                mem[_5206 + _4348 + _3343 + _3367 + 197] = 0
                                                            mem[_4348 + _3343 + _3367 + 101] = address(arg2)
                                                            mem[_4348 + _3343 + _3367 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4348 + _3343 + _3367 + 165 len ceil32(_5206) + 32]
                                                else:
                                                    mem[_2337 + 32 len t] = call.data[calldata.size len t]
                                                    u = t
                                                    s = idx + 1
                                                    while s:
                                                        if u < 1:
                                                            revert with 0, 17
                                                        if 48 > !(s % 10):
                                                            revert with 0, 17
                                                        if u - 1 >= mem[_2337]:
                                                            revert with 0, 50
                                                        mem[u + _2337 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                                        u = u - 1
                                                        s = s / 10
                                                        continue 
                                                    _3344 = mem[64]
                                                    _3368 = mem[128]
                                                    s = 0
                                                    while s < _3368:
                                                        mem[s + _3344 + 32] = mem[s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[_3344 + _3368 + 32] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                                                    if ceil32(_3368) <= _3368:
                                                        _4349 = mem[_2337]
                                                        s = 0
                                                        while s < _4349:
                                                            mem[s + _3344 + _3368 + 33] = mem[s + _2337 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4349) <= _4349:
                                                            _5111 = mem[64]
                                                            mem[mem[64]] = _4349 + _3344 + _3368 + -mem[64] + 1
                                                            mem[64] = _4349 + _3344 + _3368 + 33
                                                            mem[_4349 + _3344 + _3368 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4349 + _3344 + _3368 + 37] = msg.sender
                                                            mem[_4349 + _3344 + _3368 + 69] = 128
                                                            _5207 = mem[_5111]
                                                            mem[_4349 + _3344 + _3368 + 165] = mem[_5111]
                                                            s = 0
                                                            while s < _5207:
                                                                mem[s + _4349 + _3344 + _3368 + 197] = mem[s + _5111 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5207) > _5207:
                                                                mem[_5207 + _4349 + _3344 + _3368 + 197] = 0
                                                            mem[_4349 + _3344 + _3368 + 101] = address(arg2)
                                                            mem[_4349 + _3344 + _3368 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4349 + _3344 + _3368 + 165 len ceil32(_5207) + 32]
                                                        else:
                                                            mem[_4349 + _3344 + _3368 + 33] = 0
                                                            _5112 = mem[64]
                                                            mem[mem[64]] = _4349 + _3344 + _3368 + -mem[64] + 1
                                                            mem[64] = _4349 + _3344 + _3368 + 33
                                                            mem[_4349 + _3344 + _3368 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4349 + _3344 + _3368 + 37] = msg.sender
                                                            mem[_4349 + _3344 + _3368 + 69] = 128
                                                            _5208 = mem[_5112]
                                                            mem[_4349 + _3344 + _3368 + 165] = mem[_5112]
                                                            s = 0
                                                            while s < _5208:
                                                                mem[s + _4349 + _3344 + _3368 + 197] = mem[s + _5112 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5208) > _5208:
                                                                mem[_5208 + _4349 + _3344 + _3368 + 197] = 0
                                                            mem[_4349 + _3344 + _3368 + 101] = address(arg2)
                                                            mem[_4349 + _3344 + _3368 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4349 + _3344 + _3368 + 165 len ceil32(_5208) + 32]
                                                    else:
                                                        _4350 = mem[_2337]
                                                        s = 0
                                                        while s < _4350:
                                                            mem[s + _3344 + _3368 + 33] = mem[s + _2337 + 32]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(_4350) <= _4350:
                                                            _5113 = mem[64]
                                                            mem[mem[64]] = _4350 + _3344 + _3368 + -mem[64] + 1
                                                            mem[64] = _4350 + _3344 + _3368 + 33
                                                            mem[_4350 + _3344 + _3368 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4350 + _3344 + _3368 + 37] = msg.sender
                                                            mem[_4350 + _3344 + _3368 + 69] = 128
                                                            _5209 = mem[_5113]
                                                            mem[_4350 + _3344 + _3368 + 165] = mem[_5113]
                                                            s = 0
                                                            while s < _5209:
                                                                mem[s + _4350 + _3344 + _3368 + 197] = mem[s + _5113 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5209) > _5209:
                                                                mem[_5209 + _4350 + _3344 + _3368 + 197] = 0
                                                            mem[_4350 + _3344 + _3368 + 101] = address(arg2)
                                                            mem[_4350 + _3344 + _3368 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4350 + _3344 + _3368 + 165 len ceil32(_5209) + 32]
                                                        else:
                                                            mem[_4350 + _3344 + _3368 + 33] = 0
                                                            _5114 = mem[64]
                                                            mem[mem[64]] = _4350 + _3344 + _3368 + -mem[64] + 1
                                                            mem[64] = _4350 + _3344 + _3368 + 33
                                                            mem[_4350 + _3344 + _3368 + 33] = 0x6f4ff8aa00000000000000000000000000000000000000000000000000000000
                                                            mem[_4350 + _3344 + _3368 + 37] = msg.sender
                                                            mem[_4350 + _3344 + _3368 + 69] = 128
                                                            _5210 = mem[_5114]
                                                            mem[_4350 + _3344 + _3368 + 165] = mem[_5114]
                                                            s = 0
                                                            while s < _5210:
                                                                mem[s + _4350 + _3344 + _3368 + 197] = mem[s + _5114 + 32]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_5210) > _5210:
                                                                mem[_5210 + _4350 + _3344 + _3368 + 197] = 0
                                                            mem[_4350 + _3344 + _3368 + 101] = address(arg2)
                                                            mem[_4350 + _3344 + _3368 + 133] = uint32(arg4)
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x6f4ff8aa with:
                                                                 gas gas_remaining wei
                                                                args address(msg.sender), 128, address(arg2), arg4 << 224, mem[_4350 + _3344 + _3368 + 165 len ceil32(_5210) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not idx + 1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
}



}
