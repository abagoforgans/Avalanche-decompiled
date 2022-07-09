contract main {




// =====================  Runtime code  =====================


#
#  - sub_d08a9937(?)
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
address tokenAddress;
address tokenAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 roi;
uint256 sub_06701340;
uint256 sub_6680607d;
uint256 sub_055db2ee;
uint256 stor25;
uint8 stor26;
uint8 stor26; offset 8
uint256 stor26; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor28;
mapping of uint8 stor29;

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
    return bool(stor28[arg1])
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

function tokenAddress() {
    return tokenAddress
}

function futurUsePool() {
    return futurUsePoolAddress
}

function futurFee() {
    return futurFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[arg1])
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
    stor25 = arg1
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
    Mask(248, 0, stor26.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28[address(arg1)] = uint8(arg2)
}

function publiDistriRewards() {
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function withdrawReferralBonus() {
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xd2b6fc4c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getNodePrice() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimTime() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.claimTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardPerNode() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.rewardPerNode() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasDistri() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.gasForDistribution() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.lastDistributionCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalStakedReward() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.totalRewardStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getReferralBonus() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xb8c7a1a2 with:
            gas gas_remaining wei
           args msg.sender
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

function getAutoDistri() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.autoDistri() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    if stor28[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    if stor28[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xe0f2cfd8 with:
         gas gas_remaining wei
        args msg.sender, arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor29[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor29[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagerAddress)
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
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc9c65396 with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function getReferrals() {
    mem[96] = 0x41a0894d00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
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
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _12 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _12
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
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

function sub_e215df10(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0, 'NODE CREATION:  creation from the zero address'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'NODE CREATION: Balance too low for compounding.'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
    else:
        if ext_call.return_data[0] and sub_055db2ee > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_055db2ee / ext_call.return_data[0] != sub_055db2ee:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > !(ext_call.return_data[0] * sub_055db2ee / 100):
            revert with 0, 17
        if ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0, 'NODE CREATION:  creation from the zero address'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100):
            revert with 0, 'NODE CREATION: Balance too low for compounding.'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xe18c4487 with:
         gas gas_remaining wei
        args msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getNodesNames() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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
    require ext_code.size(nodeRewardManagerAddress)
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

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor28[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not uint8(stor26.field_8):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                idx = 0
                s = ceil32(return_data.size) + 192
                t = (4 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
            else:
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                idx = 0
                s = ceil32(return_data.size) + 192
                t = (4 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor28[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor26.field_8):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                idx = 0
                s = ceil32(return_data.size) + 192
                t = (4 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
            else:
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                idx = 0
                s = ceil32(return_data.size) + 192
                t = (4 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x85141a77(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x49bd5a5e(?????) > uint32(call.func_hash) >> 224:
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
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'NO NODE OWNER'
                        require ext_code.size(nodeRewardManagerAddress)
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
                        require ext_code.size(nodeRewardManagerAddress)
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
                    require ext_code.size(nodeRewardManagerAddress)
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
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _382 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _393 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _382 + _393 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_393)] = mem[ceil32(return_data.size) + _382 + 160 len ceil32(_393)]
                    if ceil32(_393) > _393:
                        mem[_393 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _393
                    mem[mem[64] + 64 len ceil32(_393)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_393)]
                    if ceil32(_393) > _393:
                        mem[_393 + mem[64] + 64] = 0
                    return Array(len=_393, data=mem[mem[64] + 64 len ceil32(_393)])
                if unknown_0x406072a9(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2RouterAddress
                    if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                        if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor28[arg1])
                        if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsFee
                        require unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalShares
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
                    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
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
                                require ext_code.size(nodeRewardManagerAddress)
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
                            require ext_code.size(address(arg1))
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
                            if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
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
                            mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 228] = 32
                            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(arg1)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
                            mem[ceil32(return_data.size) + 360] = 0
                            call address(arg1) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
                if unknown_0x65bfe430(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x6f4a2cd0(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x6f4a2cd0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress._distributeRewards() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
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
                                    args arg1
                            else:
                                require unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224
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
                        if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                            if unknown_0x6680607d(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_6680607d
                            if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                swapTokensAmount = arg1
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x6815a91c(?????):
                                    require unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return cashoutFee
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                cashoutFee = arg1
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'CSHT:  creation from the zero address'
                            if stor28[address(msg.sender)]:
                                revert with 0, 'MANIA CSHT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if not uint8(stor26.field_8):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                            else:
                                if not cashoutFee:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                else:
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 64]
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                                        idx = 0
                                        s = ceil32(return_data.size) + 224
                                        t = (4 * ceil32(return_data.size)) + 484
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 17
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                        mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * cashoutFee / 100
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 64]
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                        idx = 0
                                        s = ceil32(return_data.size) + 224
                                        t = (4 * ceil32(return_data.size)) + 484
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                            revert with 0, 17
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if unknown_0x59640ed9(?????) <= uint32(call.func_hash) >> 224:
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
                                require unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if uniswapV2RouterAddress == address(arg1):
                                    revert with 0, 'TKN: The router already has that address'
                                emit UpdateUniswapV2Router(address(arg1), uniswapV2RouterAddress);
                                uniswapV2RouterAddress = address(arg1)
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).factory() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xc9c65396 with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                uniswapV2PairAddress = ext_call.return_data[12 len 20]
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'SENDER CAN'T BE ZERO'
                        mem[132] = msg.sender
                        require ext_code.size(nodeRewardManagerAddress)
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
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress._getNodesRewardAvailable(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _361 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                        require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                        _376 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _361 + _376 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_376)] = mem[ceil32(return_data.size) + _361 + 160 len ceil32(_376)]
                        if ceil32(_376) <= _376:
                            _1086 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = _376
                            mem[mem[64] + 64 len ceil32(_376)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_376)]
                            if ceil32(_376) <= _376:
                                return Array(len=_376, data=mem[mem[64] + 64 len ceil32(_376)])
                            mem[_376 + mem[64] + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_376) + _1086 + -mem[64] + 64
                        mem[_376 + (2 * ceil32(return_data.size)) + 160] = 0
                        _1087 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _376
                        mem[mem[64] + 64 len ceil32(_376)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_376)]
                        if ceil32(_376) <= _376:
                            return Array(len=_376, data=mem[mem[64] + 64 len ceil32(_376)])
                        mem[_376 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_376) + _1087 + -mem[64] + 64
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
                        Mask(248, 0, stor26.field_8) = Mask(248, 0, bool(arg1))
                    else:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'MANIA CSHT:  creation from the zero address'
                        if stor28[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
                        if not uint8(stor26.field_8):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                        else:
                            if not cashoutFee:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                            else:
                                if not ext_call.return_data[0]:
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 64]
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                    idx = 0
                                    s = ceil32(return_data.size) + 224
                                    t = (4 * ceil32(return_data.size)) + 484
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * cashoutFee / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 64]
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 224
                                    t = (4 * ceil32(return_data.size)) + 484
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                        revert with 0, 17
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress._cashoutAllNodesReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if unknown_0xb96392c1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9a7a23d6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8c0955f5(?????) <= uint32(call.func_hash) >> 224:
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
                            if unknown_0x91ca7f3c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require ext_code.size(nodeRewardManagerAddress)
                                call nodeRewardManagerAddress.0xd2b6fc4c with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x9349c47d(?????):
                                    require unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    return released[address(arg1)]
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                distributionPoolAddress = address(arg1)
                    else:
                        if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return deadWalletAddress
                        if unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(nodeRewardManagerAddress)
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
                                    if arg1 >= payee.length:
                                        revert with 0, 50
                                    return payee[arg1]
                                require unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor25 = arg1
                            else:
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
                if unknown_0xa5021a17(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
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
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor29[arg1])
                    require unknown_0xb8acf840(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    roi = arg1
                if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uniswapV2PairAddress == address(arg1):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                    if bool(arg2) == bool(stor29[address(arg1)]):
                        revert with 0, 'TKN: Automated market maker pair is already set to that value'
                    stor29[address(arg1)] = uint8(bool(arg2))
                    emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                if unknown_0x9c82751c(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0x9d76ea58(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenAddress
                if unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.totalNodesCreated() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require unknown_0xa2a376cd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                mem[128] = 0x41a0894d00000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.getReferrals(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                _207 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159 < return_data.size + 128
                _251 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require return_data.size >= _207 + (32 * _251) + 32
                s = _207 + 160
                t = ceil32(return_data.size) + 160
                u = 32 * _251
                idx = 0
                while idx < _251:
                    _1061 = mem[s]
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    u = _1061
                    idx = idx + 1
                    continue 
                _1077 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _251
                idx = 0
                s = ceil32(return_data.size) + 160
                t = mem[64] + 64
                while idx < _251:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1077 + (32 * _251) + -mem[64] + 64
            if unknown_0xe215df10(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf74c9934(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf7b9f943(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.gasForDistribution() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf9afc763(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
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
                        if stor28[msg.sender]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        if stor28[address(arg2)]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.0xe0f2cfd8 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xe215df10(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 <= test266151307()
                    require arg2 + 35 < calldata.size
                    if arg2.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg2 + arg2.length + 36 <= calldata.size
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.nodePrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] > -1:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'NODE CREATION:  creation from the zero address'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'NODE CREATION: Balance too low for compounding.'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args this.address, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] and sub_055db2ee > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * sub_055db2ee / ext_call.return_data[0] != sub_055db2ee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] > !(ext_call.return_data[0] * sub_055db2ee / 100):
                            revert with 0, 17
                        if ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'NODE CREATION:  creation from the zero address'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100):
                            revert with 0, 'NODE CREATION: Balance too low for compounding.'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args this.address, ext_call.return_data[0] + (ext_call.return_data[0] * sub_055db2ee / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.0xe18c4487 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                if uint32(call.func_hash) >> 224 != unknown_0xee1afdbf(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
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
                require ext_code.size(nodeRewardManagerAddress)
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
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress._getNodesLastClaimTime(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _372 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _386 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _372 + _386 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_386)] = mem[ceil32(return_data.size) + _372 + 160 len ceil32(_386)]
                if ceil32(_386) <= _386:
                    _1105 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _386
                    mem[mem[64] + 64 len ceil32(_386)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_386)]
                    if ceil32(_386) <= _386:
                        return Array(len=_386, data=mem[mem[64] + 64 len ceil32(_386)])
                    mem[_386 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_386) + _1105 + -mem[64] + 64
                mem[_386 + (2 * ceil32(return_data.size)) + 160] = 0
                _1106 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _386
                mem[mem[64] + 64 len ceil32(_386)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_386)]
                if ceil32(_386) <= _386:
                    return Array(len=_386, data=mem[mem[64] + 64 len ceil32(_386)])
                mem[_386 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_386) + _1106 + -mem[64] + 64
            if unknown_0xd0f77474(?????) <= uint32(call.func_hash) >> 224:
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
                    stor28[address(arg1)] = uint8(bool(arg2))
                if unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.lastDistributionCount() with:
                            gas gas_remaining wei
                else:
                    require unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.rewardPerNode() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0xbdf24a53(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                require ext_code.size(nodeRewardManagerAddress)
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
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress._getNodesCreationTime(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _363 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _378 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _363 + _378 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_378)] = mem[ceil32(return_data.size) + _363 + 160 len ceil32(_378)]
                if ceil32(_378) > _378:
                    mem[_378 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _378
                mem[mem[64] + 64 len ceil32(_378)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_378)]
                if ceil32(_378) > _378:
                    mem[_378 + mem[64] + 64] = 0
                return Array(len=_378, data=mem[mem[64] + 64 len ceil32(_378)])
            if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return distributionPoolAddress
            if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return shares[address(arg1)]
            require unknown_0xd08a9937(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 <= test266151307()
            require arg1 + 35 < calldata.size
            if arg1.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                revert with 0, 65
            require arg1 + arg1.length + 36 <= calldata.size
            require arg2 == address(arg2)
            if arg1.length <= 3:
                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
            if arg1.length >= 32:
                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
            if not msg.sender:
                revert with 0, 'NODE CREATION:  creation from the zero address'
            if stor28[address(msg.sender)]:
                revert with 0, 'NODE CREATION: Blacklisted address'
            if futurUsePoolAddress == msg.sender:
                revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
            if distributionPoolAddress == msg.sender:
                revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
            require ext_code.size(nodeRewardManagerAddress)
            staticcall nodeRewardManagerAddress.nodePrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 133] = msg.sender
            require ext_code.size(tokenAddress)
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
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= swapTokensAmount:
                if uint8(stor26.field_8):
                    if not uint8(stor26.field_0):
                        if owner != msg.sender:
                            if not stor29[address(msg.sender)]:
                                uint8(stor26.field_0) = 1
                                if not ext_call.return_data[0]:
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 293] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 325] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, 0, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 357 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293] = 0
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225
                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args uniswapV2RouterAddress, 0
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 741] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                        t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739 len (20 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call distributionPoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), distributionPoolAddress, 0, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 805 len 20 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                            t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, 0, 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                0,
                                            require ext_code.size(tokenAddress)
                                            staticcall tokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089
                                            t = ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349 len 64]
                                        else:
                                            if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                revert with 0, 
                                                            'SafeMath: multiplication overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 837 len 24 * ceil32(return_data.size)]
                                            if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995 len (24 * ceil32(return_data.size)) + 2]
                                            if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                            t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                            emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                            require ext_code.size(tokenAddress)
                                            staticcall tokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                            t = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                    else:
                                        if ext_call.return_data[0] and rewardsFee > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * rewardsFee / ext_call.return_data[0] != rewardsFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[0] * rewardsFee / 100:
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                            t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739 len (20 * ceil32(return_data.size)) + 2]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 > ext_call.return_data[0] * rewardsFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803 len (20 * ceil32(return_data.size)) + 2]
                                            if ext_call.return_data[0] * rewardsFee / 100 < 0:
                                                revert with 0, 17
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, ext_call.return_data[0] * rewardsFee / 100, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 805 len 20 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, 0, 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089
                                                t = ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349 len 64]
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 
                                                                'SafeMath: multiplication overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 837 len 24 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995 len (24 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                t = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                        else:
                                            if ext_call.return_data[0] * rewardsFee / 100 and stor25 > -1 / ext_call.return_data[0] * rewardsFee / 100:
                                                revert with 0, 17
                                            if not ext_call.return_data[0] * rewardsFee / 100:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * rewardsFee / 100 * stor25 / ext_call.return_data[0] * rewardsFee / 100 != stor25:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                            t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739 len (20 * ceil32(return_data.size)) + 2]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100 > ext_call.return_data[0] * rewardsFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803 len (20 * ceil32(return_data.size)) + 2]
                                            if ext_call.return_data[0] * rewardsFee / 100 < ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100:
                                                revert with 0, 17
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100), mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 805 len 20 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = 0
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                t = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 
                                                                'SafeMath: multiplication overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 837 len 24 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995 len (24 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089
                                                t = ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349 len 64]
                                else:
                                    if ext_call.return_data[0] and futurFee > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if ext_call.return_data[0] * futurFee / ext_call.return_data[0] != futurFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 293] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0] * futurFee / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * futurFee / 100, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 357 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293] = ext_call.return_data[0] * futurFee / 100
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225
                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * futurFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args uniswapV2RouterAddress, 0
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = 0
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                        t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call distributionPoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), distributionPoolAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897] = 2
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 997] = uniswapV2RouterAddress
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 1029] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 997] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1029] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = 160
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929
                                            t = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1189
                                            while idx < mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1125] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157 len (32 * mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = uniswapV2RouterAddress
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, 0, 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                0,
                                            require ext_code.size(tokenAddress)
                                            staticcall tokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897] = 2
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 997] = uniswapV2RouterAddress
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 1029] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1029] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = 160
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929
                                            t = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1189
                                            while idx < mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = this.address
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1125] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157 len (32 * mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = uniswapV2RouterAddress
                                            mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                            emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                            require ext_code.size(tokenAddress)
                                            staticcall tokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] and rewardsFee > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * rewardsFee / ext_call.return_data[0] != rewardsFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[0] * rewardsFee / 100:
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                            t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739 len (20 * ceil32(return_data.size)) + 2]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 > ext_call.return_data[0] * rewardsFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803 len (20 * ceil32(return_data.size)) + 2]
                                            if ext_call.return_data[0] * rewardsFee / 100 < 0:
                                                revert with 0, 17
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, ext_call.return_data[0] * rewardsFee / 100, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 805 len 20 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, 0, 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 
                                                                'SafeMath: multiplication overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 837 len 24 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 995 len (24 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                            require ext_code.size(tokenAddress)
                                            staticcall tokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * rewardsFee / 100 and stor25 > -1 / ext_call.return_data[0] * rewardsFee / 100:
                                                revert with 0, 17
                                            if not ext_call.return_data[0] * rewardsFee / 100:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * rewardsFee / 100 * stor25 / ext_call.return_data[0] * rewardsFee / 100 != stor25:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 513
                                            t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100 > ext_call.return_data[0] * rewardsFee / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if ext_call.return_data[0] * rewardsFee / 100 < ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100:
                                                revert with 0, 17
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor25 / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 997] = uniswapV2RouterAddress
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 1029] = 0
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1029] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1189
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157 len (32 * mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = uniswapV2RouterAddress
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = 0
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, 0, 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 997] = uniswapV2RouterAddress
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 1029] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1029] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 929
                                                t = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1189
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1157 len (32 * mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 897]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1061] = uniswapV2RouterAddress
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                require ext_code.size(tokenAddress)
                                                staticcall tokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args uniswapV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089
                                    t = ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor26.field_0) = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(nodeRewardManagerAddress)
            call nodeRewardManagerAddress.0xd65f10d3 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
