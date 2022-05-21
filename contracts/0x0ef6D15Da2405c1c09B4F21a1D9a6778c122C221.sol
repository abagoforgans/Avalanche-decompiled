contract main {




// =====================  Runtime code  =====================


#
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
address nodeRewardManagerAddress;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor24;
uint8 stor25;
uint8 stor25; offset 8
uint256 stor25; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor27;
mapping of uint8 stor28;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[arg1])
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function totalReleased() {
    return totalReleased
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
    stor24 = arg1
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
    Mask(248, 0, stor25.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27[address(arg1)] = uint8(arg2)
}

function publiDistriRewards() {
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor28[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor28[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor27[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor27[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
    staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor27[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor27[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender].field_0:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender].field_0 < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
    return 1
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
    mem[(2 * ceil32(return_data.size)) + 96] = _13
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
    mem[(2 * ceil32(return_data.size)) + 96] = _13
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
    mem[(2 * ceil32(return_data.size)) + 96] = _13
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
    mem[(2 * ceil32(return_data.size)) + 96] = _13
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

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor27[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not uint8(stor25.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if ext_call.return_data[0] > balanceOf[stor17]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[stor17] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[stor17] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            if balanceOf[stor17] < ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[stor17] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
        else:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 36
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 34
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = 0
                mem[(2 * ceil32(return_data.size)) + 256] = 0
                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = 0
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 452
                t = ceil32(return_data.size) + 192
                while idx < mem[ceil32(return_data.size) + 160]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 30
                mem[_171 + 32] = 'SafeMath: subtraction overflow'
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _189 = mem[64]
                mem[64] = mem[64] + 96
                mem[_189] = 38
                mem[_189 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_189 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                if balanceOf[stor17] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[stor17] -= ext_call.return_data[0]
                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
            else:
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 36
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 34
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0] * cashoutFee / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 452
                t = ceil32(return_data.size) + 192
                while idx < mem[ceil32(return_data.size) + 160]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 30
                mem[_170 + 32] = 'SafeMath: subtraction overflow'
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _186 = mem[64]
                mem[64] = mem[64] + 96
                mem[_186] = 38
                mem[_186 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_186 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
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
    if stor27[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor25.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if ext_call.return_data[0] > balanceOf[stor17]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[stor17] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[stor17] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            if balanceOf[stor17] < ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[stor17] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
        else:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 36
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 34
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = 0
                mem[(2 * ceil32(return_data.size)) + 256] = 0
                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = 0
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 452
                t = ceil32(return_data.size) + 192
                while idx < mem[ceil32(return_data.size) + 160]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 30
                mem[_171 + 32] = 'SafeMath: subtraction overflow'
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _189 = mem[64]
                mem[64] = mem[64] + 96
                mem[_189] = 38
                mem[_189 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_189 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                if balanceOf[stor17] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[stor17] -= ext_call.return_data[0]
                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
            else:
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 36
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 34
                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0] * cashoutFee / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 452
                t = ceil32(return_data.size) + 192
                while idx < mem[ceil32(return_data.size) + 160]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 30
                mem[_170 + 32] = 'SafeMath: subtraction overflow'
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _186 = mem[64]
                mem[64] = mem[64] + 96
                mem[_186] = 38
                mem[_186 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_186 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function createNodeWithTokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg1.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor27[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    if balanceOf[this.address] < swapTokensAmount:
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 167 len 26] >> 48,
                        0
        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
        if balanceOf[this.address] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
        require ext_code.size(nodeRewardManagerAddress)
        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all])
    else:
        if not uint8(stor25.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 167 len 26] >> 48,
                            0
            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
            if balanceOf[this.address] > !ext_call.return_data[0]:
                revert with 0, 17
            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
            require ext_code.size(nodeRewardManagerAddress)
            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all])
        else:
            if uint8(stor25.field_0):
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 167 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                require ext_code.size(nodeRewardManagerAddress)
                call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all])
            else:
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 167 len 26] >> 48,
                                    0
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                    if balanceOf[this.address] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                else:
                    if stor28[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 167 len 26] >> 48,
                                        0
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                    else:
                        uint8(stor25.field_0) = 1
                        if not balanceOf[this.address]:
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 2
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = ext_call.return_data[12 len 20]
                            if not this.address:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 36
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'ERC20: approve from the zero add'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                                   len ceil32(return_data.size) + 132
                            if not uniswapV2RouterAddress:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 34
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'ERC20: approve to the zero addre'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                                   len ceil32(return_data.size) + 132
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor14].field_0 = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0
                            emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 160
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 2
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                            t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193
                            while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 513]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_585] = 30
                            mem[_585 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[this.address]:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _605 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_605] = 26
                                mem[_605 + 32] = 'SafeMath: division by zero'
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    _609 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_609] = 26
                                    mem[_609 + 32] = 'SafeMath: division by zero'
                                    _630 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_630 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_630]:
                                        revert with 0, 50
                                    mem[_630 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_630 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _630 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_630]:
                                        revert with 0, 50
                                    mem[_630 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_630 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_630 + ceil32(return_data.size) + 100] = 0
                                    mem[_630 + ceil32(return_data.size) + 132] = 0
                                    mem[_630 + ceil32(return_data.size) + 164] = 160
                                    mem[_630 + ceil32(return_data.size) + 260] = mem[_630]
                                    idx = 0
                                    s = _630 + ceil32(return_data.size) + 292
                                    t = _630 + 32
                                    while idx < mem[_630]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_630 + ceil32(return_data.size) + 260 len (32 * mem[_630]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_630 + ceil32(return_data.size) + 96] = 30
                                    mem[_630 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_630 + ceil32(return_data.size) + 160] = 30
                                    mem[_630 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_630 + ceil32(return_data.size) + 224] = 38
                                    mem[_630 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_630 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                    0
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[_630 + ceil32(return_data.size) + 320] = 26
                                        mem[_630 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_630 + ceil32(return_data.size) + 384] = 26
                                        mem[_630 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_630 + ceil32(return_data.size) + 448] = 30
                                        mem[_630 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[_630 + ceil32(return_data.size) + 512] = 2
                                        mem[_630 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_630 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _630 + (2 * ceil32(return_data.size)) + 608
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_630 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_630 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_630 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_630 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_630 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _630 + (2 * ceil32(return_data.size)) + 804
                                        t = _630 + ceil32(return_data.size) + 544
                                        while idx < mem[_630 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_630 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_630 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_630 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_630 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_630 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_630 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[_630 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_630 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_630 + (2 * ceil32(return_data.size)) + 708] = 30
                                            mem[_630 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                            mem[_630 + (2 * ceil32(return_data.size)) + 770] = 0
                                            revert with memory
                                              from _630 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 100
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            mem[_630 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_630 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_630 + (2 * ceil32(return_data.size)) + 708] = 36
                                            mem[_630 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                            mem[_630 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _630 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[_630 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_630 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_630 + (2 * ceil32(return_data.size)) + 708] = 34
                                            mem[_630 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                            mem[_630 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _630 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[_630 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_630 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        mem[_630 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args mem[_630 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                        mem[_630 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[_630 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_630 + (4 * ceil32(return_data.size)) + 704] = 0
                                        mem[_630 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            mem[_630 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                        mem[_630 + (4 * ceil32(return_data.size)) + 672] = 2
                                        mem[_630 + (4 * ceil32(return_data.size)) + 704] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_630 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _630 + (6 * ceil32(return_data.size)) + 768
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_630 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_630 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_630 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                        mem[_630 + (6 * ceil32(return_data.size)) + 804] = 0
                                        mem[_630 + (6 * ceil32(return_data.size)) + 836] = 160
                                        mem[_630 + (6 * ceil32(return_data.size)) + 932] = 2
                                        idx = 0
                                        s = _630 + (6 * ceil32(return_data.size)) + 964
                                        t = _630 + (4 * ceil32(return_data.size)) + 704
                                        while idx < mem[_630 + (4 * ceil32(return_data.size)) + 672]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_630 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_630 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_630 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 
                                                        'ERC20: transfer from the zero address',
                                                        mem[_630 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: transfer to the zero address',
                                                        mem[_630 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                        mem[_630 + (6 * ceil32(return_data.size)) + 768] = 38
                                        mem[_630 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[_630 + (6 * ceil32(return_data.size)) + 970] = 0
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                        mem[_630 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow', mem[_630 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[_630 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_630 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                        mem[_630 + (6 * ceil32(return_data.size)) + 900] = 64
                                        mem[_630 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                        mem[_630 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + _630 + (6 * ceil32(return_data.size)) + 964] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_630 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                    else:
                                        mem[_630 + ceil32(return_data.size) + 320] = 26
                                        mem[_630 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_630 + ceil32(return_data.size) + 384] = 26
                                        mem[_630 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_630 + ceil32(return_data.size) + 448] = 30
                                        mem[_630 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        mem[_630 + ceil32(return_data.size) + 512] = 2
                                        mem[_630 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_630 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _630 + (2 * ceil32(return_data.size)) + 608
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_630 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_630 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_630 + (2 * ceil32(return_data.size)) + 612] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_630 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_630 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _630 + (2 * ceil32(return_data.size)) + 804
                                        t = _630 + ceil32(return_data.size) + 544
                                        while idx < mem[_630 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_630 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_630 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _630 + (2 * ceil32(return_data.size)) + (32 * mem[_630 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3069 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3069] = 30
                                        mem[_3069 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 0
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[0] = this.address
                                        mem[32] = 0
                                        _3354 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3354 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3354]:
                                            revert with 0, 50
                                        mem[_3354 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_3354 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3354 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3354]:
                                            revert with 0, 50
                                        mem[_3354 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3354 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3354 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3354 + ceil32(return_data.size) + 132] = 0
                                        mem[_3354 + ceil32(return_data.size) + 164] = 160
                                        mem[_3354 + ceil32(return_data.size) + 260] = mem[_3354]
                                        idx = 0
                                        s = _3354 + ceil32(return_data.size) + 292
                                        t = _3354 + 32
                                        while idx < mem[_3354]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3354 + ceil32(return_data.size) + 260 len (32 * mem[_3354]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_3354 + ceil32(return_data.size) + 96] = 38
                                        mem[_3354 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[_3354 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_3354 + ceil32(return_data.size) + 196] = msg.sender
                                        mem[_3354 + ceil32(return_data.size) + 228] = 64
                                        mem[_3354 + ceil32(return_data.size) + 260] = mem[96]
                                        mem[_3354 + ceil32(return_data.size) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + _3354 + ceil32(return_data.size) + 292] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_3354 + ceil32(return_data.size) + 292 len ceil32(mem[96])])
                                else:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _624 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_624] = 26
                                    mem[_624 + 32] = 'SafeMath: division by zero'
                                    _645 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_645 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_645]:
                                        revert with 0, 50
                                    mem[_645 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_645 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _645 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_645]:
                                        revert with 0, 50
                                    mem[_645 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                    mem[_645 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_645 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    mem[_645 + ceil32(return_data.size) + 132] = 0
                                    mem[_645 + ceil32(return_data.size) + 164] = 160
                                    mem[_645 + ceil32(return_data.size) + 260] = mem[_645]
                                    idx = 0
                                    s = _645 + ceil32(return_data.size) + 292
                                    t = _645 + 32
                                    while idx < mem[_645]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_645 + ceil32(return_data.size) + 196] = this.address
                                    mem[_645 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _645 + ceil32(return_data.size) + (32 * mem[_645]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1711 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1711] = 30
                                    mem[_1711 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1741 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1741] = 30
                                    mem[_1741 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1783 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1783] = 38
                                    mem[_1783 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1783 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 0
                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        _1887 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1887] = 26
                                        mem[_1887 + 32] = 'SafeMath: division by zero'
                                        _1911 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1911] = 26
                                        mem[_1911 + 32] = 'SafeMath: division by zero'
                                        _1923 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1923] = 30
                                        mem[_1923 + 32] = 'SafeMath: subtraction overflow'
                                        _1942 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1942 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1942]:
                                            revert with 0, 50
                                        mem[_1942 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1942 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1942 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1942]:
                                            revert with 0, 50
                                        mem[_1942 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_1942 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1942 + ceil32(return_data.size) + 100] = 0
                                        mem[_1942 + ceil32(return_data.size) + 132] = 0
                                        mem[_1942 + ceil32(return_data.size) + 164] = 160
                                        mem[_1942 + ceil32(return_data.size) + 260] = mem[_1942]
                                        idx = 0
                                        s = _1942 + ceil32(return_data.size) + 292
                                        t = _1942 + 32
                                        while idx < mem[_1942]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_1942 + ceil32(return_data.size) + 260 len (32 * mem[_1942]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1942 + ceil32(return_data.size) + 96] = 30
                                        mem[_1942 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_1942 + ceil32(return_data.size) + 228] = 0
                                        mem[_1942 + ceil32(return_data.size) + 260] = 0
                                        mem[_1942 + ceil32(return_data.size) + 292] = 0
                                        mem[_1942 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        mem[_1942 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[_1942 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_1942 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1942 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1942 + (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_1942 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _1942 + (4 * ceil32(return_data.size)) + 452
                                        t = _1942 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_1942 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_1942 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1942 + (4 * ceil32(return_data.size)) + (32 * mem[_1942 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3933 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3933] = 38
                                        mem[_3933 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3933 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1905 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1905] = 26
                                        mem[_1905 + 32] = 'SafeMath: division by zero'
                                        _1917 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1917] = 26
                                        mem[_1917 + 32] = 'SafeMath: division by zero'
                                        _1929 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1929] = 30
                                        mem[_1929 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _1992 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1992 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1992]:
                                            revert with 0, 50
                                        mem[_1992 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1992 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1992 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1992]:
                                            revert with 0, 50
                                        mem[_1992 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_1992 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1992 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_1992 + ceil32(return_data.size) + 132] = 0
                                        mem[_1992 + ceil32(return_data.size) + 164] = 160
                                        mem[_1992 + ceil32(return_data.size) + 260] = mem[_1992]
                                        idx = 0
                                        s = _1992 + ceil32(return_data.size) + 292
                                        t = _1992 + 32
                                        while idx < mem[_1992]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1992 + ceil32(return_data.size) + 260 len (32 * mem[_1992]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1992 + ceil32(return_data.size) + 96] = 30
                                        mem[_1992 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[_1992 + ceil32(return_data.size) + 228] = 0
                                        mem[_1992 + ceil32(return_data.size) + 260] = 0
                                        mem[_1992 + ceil32(return_data.size) + 292] = 0
                                        mem[_1992 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        mem[_1992 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[_1992 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_1992 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1992 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1992 + (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_1992 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _1992 + (4 * ceil32(return_data.size)) + 452
                                        t = _1992 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_1992 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_1992 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1992 + (4 * ceil32(return_data.size)) + (32 * mem[_1992 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3930 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3930] = 38
                                        mem[_3930 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3930 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    ('le', ('ext_call.return_data', 0, 32), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = mem[96]
                                    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    else:
                                        mem[mem[96] + mem[64] + 100] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 64, mem[mem[64] + 68 len ceil32(mem[96]) + 32]
                            else:
                                _599 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_599] = 26
                                mem[_599 + 32] = 'SafeMath: division by zero'
                                _607 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_607] = 26
                                mem[_607 + 32] = 'SafeMath: division by zero'
                                _612 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_612 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_612]:
                                    revert with 0, 50
                                mem[_612 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[_612 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _612 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_612]:
                                    revert with 0, 50
                                mem[_612 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_612 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_612 + ceil32(return_data.size) + 100] = 0
                                mem[_612 + ceil32(return_data.size) + 132] = 0
                                mem[_612 + ceil32(return_data.size) + 164] = 160
                                mem[_612 + ceil32(return_data.size) + 260] = mem[_612]
                                idx = 0
                                s = _612 + ceil32(return_data.size) + 292
                                t = _612 + 32
                                while idx < mem[_612]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_612 + ceil32(return_data.size) + 196] = this.address
                                mem[_612 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _612 + ceil32(return_data.size) + (32 * mem[_612]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1713 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1713] = 30
                                mem[_1713 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1743 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1743] = 30
                                mem[_1743 + 32] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _1789 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1789] = 38
                                mem[_1789 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1789 + 70 len 26]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                if balanceOf[address(this.address)] < 0:
                                    revert with 0, 17
                                if balanceOf[stor17] > -1:
                                    revert with 0, 17
                                if balanceOf[stor17] < balanceOf[stor17]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = distributionPoolAddress
                                mem[32] = 0
                                balanceOf[stor17] = balanceOf[stor17]
                                emit Transfer(0, this.address, distributionPoolAddress);
                                if not balanceOf[this.address]:
                                    _1889 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1889] = 26
                                    mem[_1889 + 32] = 'SafeMath: division by zero'
                                    _1913 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1913] = 26
                                    mem[_1913 + 32] = 'SafeMath: division by zero'
                                    _1925 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1925] = 30
                                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                                    _1948 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_1948 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_1948]:
                                        revert with 0, 50
                                    mem[_1948 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_1948 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1948 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1948]:
                                        revert with 0, 50
                                    mem[_1948 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_1948 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1948 + ceil32(return_data.size) + 100] = 0
                                    mem[_1948 + ceil32(return_data.size) + 132] = 0
                                    mem[_1948 + ceil32(return_data.size) + 164] = 160
                                    mem[_1948 + ceil32(return_data.size) + 260] = mem[_1948]
                                    idx = 0
                                    s = _1948 + ceil32(return_data.size) + 292
                                    t = _1948 + 32
                                    while idx < mem[_1948]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1948 + ceil32(return_data.size) + 196] = this.address
                                    mem[_1948 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1948 + ceil32(return_data.size) + (32 * mem[_1948]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3071 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3071] = 30
                                    mem[_3071 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 0
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    mem[0] = this.address
                                    mem[32] = 0
                                    _3358 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_3358 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_3358]:
                                        revert with 0, 50
                                    mem[_3358 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_3358 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3358 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_3358]:
                                        revert with 0, 50
                                    mem[_3358 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_3358 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_3358 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                    mem[_3358 + ceil32(return_data.size) + 132] = 0
                                    mem[_3358 + ceil32(return_data.size) + 164] = 160
                                    mem[_3358 + ceil32(return_data.size) + 260] = mem[_3358]
                                    idx = 0
                                    s = _3358 + ceil32(return_data.size) + 292
                                    t = _3358 + 32
                                    while idx < mem[_3358]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3358 + ceil32(return_data.size) + 260 len (32 * mem[_3358]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_3358 + ceil32(return_data.size) + 96] = 38
                                    mem[_3358 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_3358 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_3358 + ceil32(return_data.size) + 196] = msg.sender
                                    mem[_3358 + ceil32(return_data.size) + 228] = 64
                                    mem[_3358 + ceil32(return_data.size) + 260] = mem[96]
                                    mem[_3358 + ceil32(return_data.size) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _3358 + ceil32(return_data.size) + 292] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_3358 + ceil32(return_data.size) + 292 len ceil32(mem[96])])
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1907 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1907] = 26
                                    mem[_1907 + 32] = 'SafeMath: division by zero'
                                    _1919 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1919] = 26
                                    mem[_1919 + 32] = 'SafeMath: division by zero'
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1931] = 30
                                    mem[_1931 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    _1996 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_1996 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_1996]:
                                        revert with 0, 50
                                    mem[_1996 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_1996 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1996 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1996]:
                                        revert with 0, 50
                                    mem[_1996 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor14].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_1996 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1996 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_1996 + ceil32(return_data.size) + 132] = 0
                                    mem[_1996 + ceil32(return_data.size) + 164] = 160
                                    mem[_1996 + ceil32(return_data.size) + 260] = mem[_1996]
                                    idx = 0
                                    s = _1996 + ceil32(return_data.size) + 292
                                    t = _1996 + 32
                                    while idx < mem[_1996]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1996 + ceil32(return_data.size) + 196] = this.address
                                    mem[_1996 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1996 + ceil32(return_data.size) + (32 * mem[_1996]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3070 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3070] = 30
                                    mem[_3070 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[0] = this.address
                                    mem[32] = 0
                                    _3356 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_3356 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_3356]:
                                        revert with 0, 50
                                    mem[_3356 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_3356 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3356 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_3356]:
                                        revert with 0, 50
                                    mem[_3356 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_3356 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_3356 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                    mem[_3356 + ceil32(return_data.size) + 132] = 0
                                    mem[_3356 + ceil32(return_data.size) + 164] = 160
                                    mem[_3356 + ceil32(return_data.size) + 260] = mem[_3356]
                                    idx = 0
                                    s = _3356 + ceil32(return_data.size) + 292
                                    t = _3356 + 32
                                    while idx < mem[_3356]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3356 + ceil32(return_data.size) + 260 len (32 * mem[_3356]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_3356 + ceil32(return_data.size) + 96] = 38
                                    mem[_3356 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_3356 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_3356 + ceil32(return_data.size) + 196] = msg.sender
                                    mem[_3356 + ceil32(return_data.size) + 228] = 64
                                    mem[_3356 + ceil32(return_data.size) + 260] = mem[96]
                                    mem[_3356 + ceil32(return_data.size) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _3356 + ceil32(return_data.size) + 292] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_3356 + ceil32(return_data.size) + 292 len ceil32(mem[96])])
                        else:
                            if balanceOf[this.address] and futurFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not balanceOf[this.address]:
                                revert with 0, 18
                            if balanceOf[this.address] * futurFee / balanceOf[this.address] != futurFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 2
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = ext_call.return_data[12 len 20]
                            if not this.address:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 36
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'ERC20: approve from the zero add'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                                   len ceil32(return_data.size) + 132
                            if not uniswapV2RouterAddress:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 34
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'ERC20: approve to the zero addre'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
                                   len ceil32(return_data.size) + 132
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * futurFee / 100
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = balanceOf[this.address] * futurFee / 100
                            emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = balanceOf[this.address] * futurFee / 100
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 160
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 2
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                            t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193
                            while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 513]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _584 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_584] = 30
                            mem[_584 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[this.address]:
                                _598 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_598] = 26
                                mem[_598 + 32] = 'SafeMath: division by zero'
                                _606 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_606] = 26
                                mem[_606 + 32] = 'SafeMath: division by zero'
                                _610 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_610 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_610]:
                                    revert with 0, 50
                                mem[_610 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[_610 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _610 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_610]:
                                    revert with 0, 50
                                mem[_610 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_610 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_610 + ceil32(return_data.size) + 100] = 0
                                mem[_610 + ceil32(return_data.size) + 132] = 0
                                mem[_610 + ceil32(return_data.size) + 164] = 160
                                mem[_610 + ceil32(return_data.size) + 260] = mem[_610]
                                idx = 0
                                s = _610 + ceil32(return_data.size) + 292
                                t = _610 + 32
                                while idx < mem[_610]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_610 + ceil32(return_data.size) + 260 len (32 * mem[_610]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_610 + ceil32(return_data.size) + 96] = 30
                                mem[_610 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_610 + ceil32(return_data.size) + 160] = 30
                                mem[_610 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_610 + ceil32(return_data.size) + 224] = 38
                                mem[_610 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_610 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                0
                                if balanceOf[address(this.address)] < 0:
                                    revert with 0, 17
                                if balanceOf[stor17] > -1:
                                    revert with 0, 17
                                if balanceOf[stor17] < balanceOf[stor17]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor17] = balanceOf[stor17]
                                emit Transfer(0, this.address, distributionPoolAddress);
                                if not balanceOf[this.address]:
                                    mem[_610 + ceil32(return_data.size) + 320] = 26
                                    mem[_610 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_610 + ceil32(return_data.size) + 384] = 26
                                    mem[_610 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_610 + ceil32(return_data.size) + 448] = 30
                                    mem[_610 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    mem[_610 + ceil32(return_data.size) + 512] = 2
                                    mem[_610 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_610 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _610 + (2 * ceil32(return_data.size)) + 608
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_610 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (2 * ceil32(return_data.size)) + 612] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_610 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _610 + (2 * ceil32(return_data.size)) + 804
                                    t = _610 + ceil32(return_data.size) + 544
                                    while idx < mem[_610 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_610 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_610 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _610 + (2 * ceil32(return_data.size)) + (32 * mem[_610 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3065 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3065] = 30
                                    mem[_3065 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 0
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    mem[0] = this.address
                                    mem[32] = 0
                                    _3346 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_3346 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_3346]:
                                        revert with 0, 50
                                    mem[_3346 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_3346 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3346 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_3346]:
                                        revert with 0, 50
                                    mem[_3346 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_3346 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_3346 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                    mem[_3346 + ceil32(return_data.size) + 132] = 0
                                    mem[_3346 + ceil32(return_data.size) + 164] = 160
                                    mem[_3346 + ceil32(return_data.size) + 260] = mem[_3346]
                                    idx = 0
                                    s = _3346 + ceil32(return_data.size) + 292
                                    t = _3346 + 32
                                    while idx < mem[_3346]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3346 + ceil32(return_data.size) + 260 len (32 * mem[_3346]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_3346 + ceil32(return_data.size) + 96] = 38
                                    mem[_3346 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_3346 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_3346 + ceil32(return_data.size) + 196] = msg.sender
                                    mem[_3346 + ceil32(return_data.size) + 228] = 64
                                    mem[_3346 + ceil32(return_data.size) + 260] = mem[96]
                                    mem[_3346 + ceil32(return_data.size) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _3346 + ceil32(return_data.size) + 292] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_3346 + ceil32(return_data.size) + 292 len ceil32(mem[96])])
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[_610 + ceil32(return_data.size) + 320] = 26
                                    mem[_610 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_610 + ceil32(return_data.size) + 384] = 26
                                    mem[_610 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_610 + ceil32(return_data.size) + 448] = 30
                                    mem[_610 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[_610 + ceil32(return_data.size) + 512] = 2
                                    mem[_610 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_610 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _610 + (2 * ceil32(return_data.size)) + 608
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor14].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_610 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_610 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_610 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _610 + (2 * ceil32(return_data.size)) + 804
                                    t = _610 + ceil32(return_data.size) + 544
                                    while idx < mem[_610 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_610 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_610 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _610 + (2 * ceil32(return_data.size)) + (32 * mem[_610 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3064 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3064] = 30
                                    mem[_3064 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[0] = this.address
                                    mem[32] = 0
                                    _3344 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_3344 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_3344]:
                                        revert with 0, 50
                                    mem[_3344 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_3344 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3344 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_3344]:
                                        revert with 0, 50
                                    mem[_3344 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_3344 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_3344 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                    mem[_3344 + ceil32(return_data.size) + 132] = 0
                                    mem[_3344 + ceil32(return_data.size) + 164] = 160
                                    mem[_3344 + ceil32(return_data.size) + 260] = mem[_3344]
                                    idx = 0
                                    s = _3344 + ceil32(return_data.size) + 292
                                    t = _3344 + 32
                                    while idx < mem[_3344]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3344 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3344 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3344 + ceil32(return_data.size) + (32 * mem[_3344]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _3924 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3924] = 38
                                    mem[_3924 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3924 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = mem[96]
                                    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    else:
                                        mem[mem[96] + mem[64] + 100] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 64, mem[mem[64] + 68 len ceil32(mem[96]) + 32]
                            else:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _604 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_604] = 26
                                mem[_604 + 32] = 'SafeMath: division by zero'
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    _608 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_608] = 26
                                    mem[_608 + 32] = 'SafeMath: division by zero'
                                    _628 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_628 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_628]:
                                        revert with 0, 50
                                    mem[_628 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_628 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _628 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_628]:
                                        revert with 0, 50
                                    mem[_628 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_628 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_628 + ceil32(return_data.size) + 100] = 0
                                    mem[_628 + ceil32(return_data.size) + 132] = 0
                                    mem[_628 + ceil32(return_data.size) + 164] = 160
                                    mem[_628 + ceil32(return_data.size) + 260] = mem[_628]
                                    idx = 0
                                    s = _628 + ceil32(return_data.size) + 292
                                    t = _628 + 32
                                    while idx < mem[_628]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_628 + ceil32(return_data.size) + 260 len (32 * mem[_628]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_628 + ceil32(return_data.size) + 96] = 30
                                    mem[_628 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_628 + ceil32(return_data.size) + 160] = 30
                                    mem[_628 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_628 + ceil32(return_data.size) + 224] = 38
                                    mem[_628 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_628 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                    0
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[_628 + ceil32(return_data.size) + 320] = 26
                                        mem[_628 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_628 + ceil32(return_data.size) + 384] = 26
                                        mem[_628 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_628 + ceil32(return_data.size) + 448] = 30
                                        mem[_628 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[_628 + ceil32(return_data.size) + 512] = 2
                                        mem[_628 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_628 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_628 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_628 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_628 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_628 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_628 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _628 + (2 * ceil32(return_data.size)) + 804
                                        t = _628 + ceil32(return_data.size) + 544
                                        while idx < mem[_628 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_628 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_628 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_628 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_628 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_628 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_628 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[_628 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_628 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        mem[_628 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[_628 + (4 * ceil32(return_data.size)) + 672] = 2
                                        mem[_628 + (4 * ceil32(return_data.size)) + 704] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_628 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _628 + (6 * ceil32(return_data.size)) + 768
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_628 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_628 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_628 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                        mem[_628 + (6 * ceil32(return_data.size)) + 804] = 0
                                        mem[_628 + (6 * ceil32(return_data.size)) + 836] = 160
                                        mem[_628 + (6 * ceil32(return_data.size)) + 932] = 2
                                        idx = 0
                                        s = _628 + (6 * ceil32(return_data.size)) + 964
                                        t = _628 + (4 * ceil32(return_data.size)) + 704
                                        while idx < mem[_628 + (4 * ceil32(return_data.size)) + 672]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_628 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_628 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_628 + (6 * ceil32(return_data.size)) + 768] = 38
                                        mem[_628 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[_628 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_628 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                        mem[_628 + (6 * ceil32(return_data.size)) + 900] = 64
                                        mem[_628 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                        mem[_628 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + _628 + (6 * ceil32(return_data.size)) + 964] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_628 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                    else:
                                        mem[_628 + ceil32(return_data.size) + 320] = 26
                                        mem[_628 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_628 + ceil32(return_data.size) + 384] = 26
                                        mem[_628 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_628 + ceil32(return_data.size) + 448] = 30
                                        mem[_628 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        mem[_628 + ceil32(return_data.size) + 512] = 2
                                        mem[_628 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_628 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_628 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_628 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_628 + (2 * ceil32(return_data.size)) + 612] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_628 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _628 + (2 * ceil32(return_data.size)) + 804
                                        t = _628 + ceil32(return_data.size) + 544
                                        while idx < mem[_628 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_628 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_628 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_628 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_628 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_628 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_628 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[_628 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_628 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_628 + (2 * ceil32(return_data.size)) + 708] = 30
                                            mem[_628 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                            mem[_628 + (2 * ceil32(return_data.size)) + 770] = 0
                                            revert with memory
                                              from _628 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 100
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            mem[_628 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_628 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_628 + (2 * ceil32(return_data.size)) + 708] = 36
                                            mem[_628 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                            mem[_628 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _628 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[_628 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_628 + (2 * ceil32(return_data.size)) + 676] = 32
                                            mem[_628 + (2 * ceil32(return_data.size)) + 708] = 34
                                            mem[_628 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                            mem[_628 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _628 + (2 * ceil32(return_data.size)) + 672
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_628 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_628 + (2 * ceil32(return_data.size)) + 708] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_628 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args mem[_628 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                        mem[_628 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[_628 + (4 * ceil32(return_data.size)) + 672] = 0
                                        mem[_628 + (4 * ceil32(return_data.size)) + 704] = 0
                                        mem[_628 + (4 * ceil32(return_data.size)) + 736] = 0
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            mem[_628 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                        mem[_628 + (4 * ceil32(return_data.size)) + 672] = 2
                                        mem[_628 + (4 * ceil32(return_data.size)) + 704] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_628 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _628 + (6 * ceil32(return_data.size)) + 768
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_628 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_628 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_628 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                        mem[_628 + (6 * ceil32(return_data.size)) + 804] = 0
                                        mem[_628 + (6 * ceil32(return_data.size)) + 836] = 160
                                        mem[_628 + (6 * ceil32(return_data.size)) + 932] = 2
                                        idx = 0
                                        s = _628 + (6 * ceil32(return_data.size)) + 964
                                        t = _628 + (4 * ceil32(return_data.size)) + 704
                                        while idx < mem[_628 + (4 * ceil32(return_data.size)) + 672]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_628 + (6 * ceil32(return_data.size)) + 868] = this.address
                                        mem[_628 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _628 + (6 * ceil32(return_data.size)) + (32 * mem[_628 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3921 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3921] = 38
                                        mem[_3921 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3921 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = mem[96]
                                        mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) <= mem[96]:
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                        else:
                                            mem[mem[96] + mem[64] + 100] = 0
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 64, mem[mem[64] + 68 len ceil32(mem[96]) + 32]
                                else:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _622 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_622] = 26
                                    mem[_622 + 32] = 'SafeMath: division by zero'
                                    _642 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_642 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_642]:
                                        revert with 0, 50
                                    mem[_642 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_642 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _642 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_642]:
                                        revert with 0, 50
                                    mem[_642 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                    mem[_642 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_642 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    mem[_642 + ceil32(return_data.size) + 132] = 0
                                    mem[_642 + ceil32(return_data.size) + 164] = 160
                                    mem[_642 + ceil32(return_data.size) + 260] = mem[_642]
                                    idx = 0
                                    s = _642 + ceil32(return_data.size) + 292
                                    t = _642 + 32
                                    while idx < mem[_642]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_642 + ceil32(return_data.size) + 196] = this.address
                                    mem[_642 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _642 + ceil32(return_data.size) + (32 * mem[_642]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1708 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1708] = 30
                                    mem[_1708 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1738 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1738] = 30
                                    mem[_1738 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1774 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1774] = 38
                                    mem[_1774 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1774 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 0
                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1902 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1902] = 26
                                        mem[_1902 + 32] = 'SafeMath: division by zero'
                                        _1914 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1914] = 26
                                        mem[_1914 + 32] = 'SafeMath: division by zero'
                                        _1926 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1926] = 30
                                        mem[_1926 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _1986 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1986 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1986]:
                                            revert with 0, 50
                                        mem[_1986 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1986 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1986 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1986]:
                                            revert with 0, 50
                                        mem[_1986 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_1986 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1986 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_1986 + ceil32(return_data.size) + 132] = 0
                                        mem[_1986 + ceil32(return_data.size) + 164] = 160
                                        mem[_1986 + ceil32(return_data.size) + 260] = mem[_1986]
                                        idx = 0
                                        s = _1986 + ceil32(return_data.size) + 292
                                        t = _1986 + 32
                                        while idx < mem[_1986]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1986 + ceil32(return_data.size) + 260 len (32 * mem[_1986]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1986 + ceil32(return_data.size) + 96] = 30
                                        mem[_1986 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[_1986 + ceil32(return_data.size) + 228] = 0
                                        mem[_1986 + ceil32(return_data.size) + 260] = 0
                                        mem[_1986 + ceil32(return_data.size) + 292] = 0
                                        mem[_1986 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        mem[_1986 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _1986 + (4 * ceil32(return_data.size)) + 452
                                        t = _1986 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_1986 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1986 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1986 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 260] = 32
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 292] = 37
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _1986 + (4 * ceil32(return_data.size)) + 256
                                               len (5 * ceil32(return_data.size)) + 132
                                        if not this.address:
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 260] = 32
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 292] = 35
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _1986 + (4 * ceil32(return_data.size)) + 256
                                               len (5 * ceil32(return_data.size)) + 132
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 256] = 38
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 356] = 32
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 388] = 38
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 458] = 0
                                            revert with memory
                                              from _1986 + (4 * ceil32(return_data.size)) + 352
                                               len (5 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 356] = 32
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 388] = 27
                                            mem[_1986 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                            revert with memory
                                              from _1986 + (4 * ceil32(return_data.size)) + 352
                                               len (5 * ceil32(return_data.size)) + 100
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 388] = 64
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                        mem[_1986 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + _1986 + (4 * ceil32(return_data.size)) + 452] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args mem[_1986 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                    else:
                                        _1884 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1884] = 26
                                        mem[_1884 + 32] = 'SafeMath: division by zero'
                                        _1908 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1908] = 26
                                        mem[_1908 + 32] = 'SafeMath: division by zero'
                                        _1920 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1920] = 30
                                        mem[_1920 + 32] = 'SafeMath: subtraction overflow'
                                        _1933 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1933 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1933]:
                                            revert with 0, 50
                                        mem[_1933 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_1933 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1933 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1933]:
                                            revert with 0, 50
                                        mem[_1933 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_1933 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1933 + ceil32(return_data.size) + 100] = 0
                                        mem[_1933 + ceil32(return_data.size) + 132] = 0
                                        mem[_1933 + ceil32(return_data.size) + 164] = 160
                                        mem[_1933 + ceil32(return_data.size) + 260] = mem[_1933]
                                        idx = 0
                                        s = _1933 + ceil32(return_data.size) + 292
                                        t = _1933 + 32
                                        while idx < mem[_1933]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1933 + ceil32(return_data.size) + 196] = this.address
                                        mem[_1933 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1933 + ceil32(return_data.size) + (32 * mem[_1933]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3061 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3061] = 30
                                        mem[_3061 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 0
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[0] = this.address
                                        mem[32] = 0
                                        _3338 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3338 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3338]:
                                            revert with 0, 50
                                        mem[_3338 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[_3338 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3338 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3338]:
                                            revert with 0, 50
                                        mem[_3338 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3338 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3338 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3338 + ceil32(return_data.size) + 132] = 0
                                        mem[_3338 + ceil32(return_data.size) + 164] = 160
                                        mem[_3338 + ceil32(return_data.size) + 260] = mem[_3338]
                                        idx = 0
                                        s = _3338 + ceil32(return_data.size) + 292
                                        t = _3338 + 32
                                        while idx < mem[_3338]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3338 + ceil32(return_data.size) + 260 len (32 * mem[_3338]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_3338 + ceil32(return_data.size) + 96] = 38
                                        mem[_3338 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[_3338 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_3338 + ceil32(return_data.size) + 196] = msg.sender
                                        mem[_3338 + ceil32(return_data.size) + 228] = 64
                                        mem[_3338 + ceil32(return_data.size) + 260] = mem[96]
                                        mem[_3338 + ceil32(return_data.size) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + _3338 + ceil32(return_data.size) + 292] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_3338 + ceil32(return_data.size) + 292 len ceil32(mem[96])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
